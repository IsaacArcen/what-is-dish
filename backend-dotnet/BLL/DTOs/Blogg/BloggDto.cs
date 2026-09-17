namespace WhatIsDish.Api.BLL.DTOs.Blog;

public class BlogDishDto
{
    public int CountryId { get; set; }
    public string CountryName { get; set; } = "";
    public string Continent { get; set; } = "";
    public string FlagUrl { get; set; } = "";

    public int DishId { get; set; }
    public string DishName { get; set; } = "";
    public string? DishImageUrl { get; set; }
    public string? DishHistory { get; set; }
    public string? Hint { get; set; }

    public string? Ingredients { get; set; }
    public string? Steps { get; set; }
}