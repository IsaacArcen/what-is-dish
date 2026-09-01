namespace WhatIsDish.Api.Models;

public class Dish
{
    public int DishId { get; set; }
    public int CountryId { get; set; }
    public string DishName { get; set; } = "";
    public bool IsCorrect { get; set; }
    public string? DishImageUrl { get; set; }
    public string? DishHistory { get; set; }
    public string? Hint { get; set; }

    public Country? Country { get; set; }
}