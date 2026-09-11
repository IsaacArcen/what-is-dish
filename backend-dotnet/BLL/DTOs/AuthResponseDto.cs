namespace WhatIsDish.Api.BLL.DTOs;

public class AuthResponseDto
{
    public string Token { get; set; } = "";
    public UserDto User { get; set; } = new();
}
