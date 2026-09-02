namespace WhatIsDish.Api.BLL.DTOs;

public class QuizSettingsRequestDto
{
    public int NumberOfQuestions { get; set; }

    public List<string> Continents { get; set; } = new();
}