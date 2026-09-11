using WhatIsDish.Api.BLL.DTOs;

namespace WhatIsDish.Api.BLL.Interfaces;

public interface IAuthService
{
    Task<AuthResponseDto> RegisterAsync(RegisterRequestDto request);
    Task<AuthResponseDto> LoginAsync(LoginRequestDto request);
    Task<UserDto?> GetMeAsync(string? token);
    Task<UserDto> UpdateProfileAsync(string? token, UpdateProfileRequestDto request);
    Task ChangePasswordAsync(string? token, ChangePasswordRequestDto request);
    Task DeleteAccountAsync(string? token, DeleteAccountRequestDto request);
    Task LogoutAsync(string? token);
}
