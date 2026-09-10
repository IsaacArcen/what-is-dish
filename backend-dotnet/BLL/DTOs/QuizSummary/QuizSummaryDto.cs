namespace WhatIsDish.Api.BLL.DTOs;

//innehåller hela quizöversikten med frågor och totalpoäng

public class QuizSummaryDto
{
    public List<QuizSummaryQuestionDto> Questions { get; set; } = new();
    public int TotalScore { get; set; }
}

