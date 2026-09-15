using System.Text.Json.Serialization;

namespace WhatIsDish.Api.BLL.DTOs;

public class ChangePasswordRequestDto
{
    [JsonPropertyName("current_password")]
    public string? CurrentPassword { get; set; }

    [JsonPropertyName("new_password")]
    public string? NewPassword { get; set; }
}
