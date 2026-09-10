namespace WhatIsDish.Api.BLL.DTOs;

public class QuizQuestionDto
{
    public int CountryId { get; set; }
    public string CountryName { get; set; } = "";
    public string FlagUrl { get; set; } = "";
    public List<DishOptionDto> Options { get; set; } = new(); 

}