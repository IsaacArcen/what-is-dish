namespace WhatIsDish.Api.BLL.DTOs;

//innehåller resultatet för en enskild quizfråga som skickas till summary

public class QuizSummaryQuestionRequestDto
{
    public int CountryId { get; set; }
    public List<int> GuessedDishIds { get; set; } = new();
    public int Points { get; set; }
}