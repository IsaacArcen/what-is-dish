namespace WhatIsDish.Api.BLL.DTOs.Matching;

public class MatchingBoardDto
{
    public List<MatchingCountryDto> Countries { get; set; } = new();
    public List<MatchingDishDto> Dishes { get; set; } = new();
}