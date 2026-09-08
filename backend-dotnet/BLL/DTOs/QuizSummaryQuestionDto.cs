namespace WhatIsDish.Api.BLL.DTOs;

//har all information som behövs för att visa en quizfråga i översikten

public class QuizSummaryQuestionDto
{
    public int CountryId { get; set; }
    public string CountryName { get; set; } = "";
    public string FlagUrl { get; set; } = "";
    public int Points { get; set; }

    public int? GuessedDishId { get; set; }
    public string GuessedDishName { get; set; } = "";

    public List<string> WrongGuessNames { get; set; } = new();

    public int CorrectDishId { get; set; }
    public string CorrectDishName { get; set; } = "";

    public List<QuizSummaryDishOptionDto> Options { get; set; } = new();
}