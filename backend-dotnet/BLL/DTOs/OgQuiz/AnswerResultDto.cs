namespace WhatIsDish.Api.BLL.DTOs;

public class AnswerResultDto
{
    public bool Correct { get; set; }
    public int Points { get; set; }
    public string? ImageHint { get; set; }
    public string? TextHint { get; set; }
    public string? CorrectDishName { get; set; }
}