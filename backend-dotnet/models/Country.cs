namespace WhatIsDish.Api.Models;

public class Country
{
    public int CountryId { get; set; }
    public string CountryName { get; set; } = "";
    public string Continent { get; set; } = "";
    public string FlagUrl { get; set; } = "";

    public List<Dish> Dishes { get; set; } = new();
}