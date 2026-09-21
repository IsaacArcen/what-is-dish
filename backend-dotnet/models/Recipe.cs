namespace WhatIsDish.Api.Models;

public class Recipe
{
    public int RecipeId { get; set; }
    public int CountryId { get; set; }
    public string Ingredients { get; set; } = "";
    public string Steps { get; set; } = "";

    public Country? Country { get; set; }
}