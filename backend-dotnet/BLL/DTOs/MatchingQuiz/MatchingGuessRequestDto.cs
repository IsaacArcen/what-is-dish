namespace WhatIsDish.Api.BLL.DTOs.Matching;

public class MatchingGuessRequestDto
{
    public int CountryId { get; set; }
    public int GuessedDishId { get; set; }
    public int AttemptsRemaining { get; set; }
}