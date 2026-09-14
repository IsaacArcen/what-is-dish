namespace WhatIsDish.Api.BLL.DTOs.Matching;

public class MatchingGuessResultDto
{
    public bool Correct { get; set; }
    public int AttemptsRemaining { get; set; }
    public bool GameOver { get; set; }
}