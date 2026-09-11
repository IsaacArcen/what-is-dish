using System.Security.Cryptography;
using Microsoft.EntityFrameworkCore;
using WhatIsDish.Api.BLL.DTOs;
using WhatIsDish.Api.BLL.Exceptions;
using WhatIsDish.Api.BLL.Interfaces;
using WhatIsDish.Api.Data;
using WhatIsDish.Api.Models;

namespace WhatIsDish.Api.BLL.Services;

public class AuthService : IAuthService
{
    private const int TokenTtlHours = 24 * 7;
    private const int Pbkdf2Iterations = 100_000;
    private const int HashSizeBytes = 32;

    private readonly AppDbContext _context;

    public AuthService(AppDbContext context)
    {
        _context = context;
    }

    // "salt:hash" hex encoded, PBKDF2-SHA256 (no scrypt available in .NET BCL)
    private static string HashPassword(string password)
    {
        var salt = RandomNumberGenerator.GetBytes(16);
        var hash = Rfc2898DeriveBytes.Pbkdf2(password, salt, Pbkdf2Iterations, HashAlgorithmName.SHA256, HashSizeBytes);
        return $"{Convert.ToHexString(salt)}:{Convert.ToHexString(hash)}";
    }

    private static bool VerifyPassword(string password, string? storedHash)
    {
        var parts = (storedHash ?? "").Split(':');
        if (parts.Length != 2 || parts[0].Length == 0 || parts[1].Length == 0) return false;

        byte[] salt, original;
        try
        {
            salt = Convert.FromHexString(parts[0]);
            original = Convert.FromHexString(parts[1]);
        }
        catch (FormatException)
        {
            return false;
        }

        var derived = Rfc2898DeriveBytes.Pbkdf2(password, salt, Pbkdf2Iterations, HashAlgorithmName.SHA256, original.Length);
        return CryptographicOperations.FixedTimeEquals(derived, original);
    }

    private static string CreateToken() => Convert.ToHexString(RandomNumberGenerator.GetBytes(32));

    private static UserDto SanitizeUser(User user) => new()
    {
        Id = user.Id,
        Name = user.Name,
        Email = user.Email,
        CreatedAt = user.CreatedAt,
    };

    private async Task CleanupExpiredTokensAsync()
    {
        await _context.AuthTokens.Where(t => t.ExpiresAt <= DateTime.UtcNow).ExecuteDeleteAsync();
    }

    private async Task<User?> GetAuthenticatedUserAsync(string? token)
    {
        if (string.IsNullOrWhiteSpace(token)) return null;

        return await _context.AuthTokens
            .Where(t => t.Token == token && t.ExpiresAt > DateTime.UtcNow)
            .Select(t => t.User)
            .FirstOrDefaultAsync();
    }

    public async Task<AuthResponseDto> RegisterAsync(RegisterRequestDto request)
    {
        var name = (request.Name ?? "").Trim();
        var email = (request.Email ?? "").Trim().ToLowerInvariant();
        var password = request.Password ?? "";

        if (name.Length == 0 || email.Length == 0 || password.Length == 0)
            throw new ArgumentException("name, email and password are required");

        if (password.Length < 6)
            throw new ArgumentException("password must be at least 6 characters");

        var existing = await _context.Users.AnyAsync(u => u.Email == email);
        if (existing)
            throw new ConflictException("email is already registered");

        var user = new User
        {
            Name = name.Length > 80 ? name[..80] : name,
            Email = email,
            PasswordHash = HashPassword(password),
            CreatedAt = DateTime.UtcNow,
        };
        _context.Users.Add(user);
        await _context.SaveChangesAsync();

        var token = CreateToken();
        _context.AuthTokens.Add(new AuthToken
        {
            Token = token,
            UserId = user.Id,
            ExpiresAt = DateTime.UtcNow.AddHours(TokenTtlHours),
        });
        await _context.SaveChangesAsync();

        return new AuthResponseDto { Token = token, User = SanitizeUser(user) };
    }

    public async Task<AuthResponseDto> LoginAsync(LoginRequestDto request)
    {
        await CleanupExpiredTokensAsync();

        var email = (request.Email ?? "").Trim().ToLowerInvariant();
        var password = request.Password ?? "";

        if (email.Length == 0 || password.Length == 0)
            throw new ArgumentException("email and password are required");

        var user = await _context.Users.FirstOrDefaultAsync(u => u.Email == email);
        if (user is null || !VerifyPassword(password, user.PasswordHash))
            throw new UnauthorizedAccessException("invalid credentials");

        var token = CreateToken();
        _context.AuthTokens.Add(new AuthToken
        {
            Token = token,
            UserId = user.Id,
            ExpiresAt = DateTime.UtcNow.AddHours(TokenTtlHours),
        });
        await _context.SaveChangesAsync();

        return new AuthResponseDto { Token = token, User = SanitizeUser(user) };
    }

    public async Task<UserDto?> GetMeAsync(string? token)
    {
        await CleanupExpiredTokensAsync();
        var user = await GetAuthenticatedUserAsync(token);
        return user is null ? null : SanitizeUser(user);
    }

    public async Task<UserDto> UpdateProfileAsync(string? token, UpdateProfileRequestDto request)
    {
        var user = await GetAuthenticatedUserAsync(token)
            ?? throw new UnauthorizedAccessException("authentication is required");

        var name = (request.Name ?? "").Trim();
        var email = (request.Email ?? "").Trim().ToLowerInvariant();

        if (name.Length == 0 || email.Length == 0 || !email.Contains('@'))
            throw new ArgumentException("a valid name and email are required");

        var duplicate = await _context.Users.AnyAsync(u => u.Email == email && u.Id != user.Id);
        if (duplicate)
            throw new ConflictException("email is already registered");

        user.Name = name.Length > 80 ? name[..80] : name;
        user.Email = email;
        await _context.SaveChangesAsync();

        return SanitizeUser(user);
    }

    public async Task ChangePasswordAsync(string? token, ChangePasswordRequestDto request)
    {
        var user = await GetAuthenticatedUserAsync(token)
            ?? throw new UnauthorizedAccessException("authentication is required");

        var currentPassword = request.CurrentPassword ?? "";
        var newPassword = request.NewPassword ?? "";

        if (currentPassword.Length == 0 || newPassword.Length == 0)
            throw new ArgumentException("current_password and new_password are required");
        if (newPassword.Length < 6)
            throw new ArgumentException("new password must be at least 6 characters");
        if (!VerifyPassword(currentPassword, user.PasswordHash))
            throw new UnauthorizedAccessException("current password is incorrect");

        user.PasswordHash = HashPassword(newPassword);
        await _context.SaveChangesAsync();
    }

    public async Task DeleteAccountAsync(string? token, DeleteAccountRequestDto request)
    {
        var user = await GetAuthenticatedUserAsync(token)
            ?? throw new UnauthorizedAccessException("authentication is required");

        if (!VerifyPassword(request.Password ?? "", user.PasswordHash))
            throw new UnauthorizedAccessException("current password is incorrect");

        _context.Users.Remove(user);
        await _context.SaveChangesAsync();
    }

    public async Task LogoutAsync(string? token)
    {
        if (string.IsNullOrWhiteSpace(token)) return;
        await _context.AuthTokens.Where(t => t.Token == token).ExecuteDeleteAsync();
    }
}
