namespace WhatIsDish.Api.Models;

public class AuthToken
{
    public int Id { get; set; }
    public string Token { get; set; } = "";
    public int UserId { get; set; }
    public DateTime ExpiresAt { get; set; }

    public User? User { get; set; }
}
