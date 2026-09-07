namespace WhatIsDish.Api.BLL.DTOs;

//alla quizfrågor och deras resultat som skickas till summary

public class QuizSummaryRequestDto
{
    public List<QuizSummaryQuestionRequestDto> Questions { get; set; } = new();
}