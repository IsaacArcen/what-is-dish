namespace WhatIsDish.Api.BLL.DTOs.Matching;

public class MatchingQuizSettingsRequestDto
{
    //antal matchningar som quizet ska innehålla (5,10,20)
    public int NumberOfCountries { get; set; }

    //valda regioner
    public List<string> Continents { get; set; } = new();
}