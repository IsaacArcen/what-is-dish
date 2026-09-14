namespace WhatIsDish.Api.BLL.DTOs;

//representerar ett svarsalternativ och markerar om det är rätt svar

public class QuizSummaryDishOptionDto
{
    public int DishId { get; set; }
    public string DishName { get; set; } = "";
    public bool IsCorrect { get; set; }
}