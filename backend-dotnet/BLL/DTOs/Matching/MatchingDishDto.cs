namespace WhatIsDish.Api.BLL.DTOs.Matching;

public class MatchingDishDto
{
    public int DishId { get; set; }
    public string DishName { get; set; } = "";
    public string? DishImageUrl { get; set; }
}