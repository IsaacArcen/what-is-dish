namespace WhatIsDish.Api.BLL.DTOs;

public class AnswerRequestDto
{
    public int CountryId { get; set; }
    public int GuessedDishId { get; set; }
    public int Attempt { get; set; }
}