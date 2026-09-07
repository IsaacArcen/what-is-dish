using Microsoft.EntityFrameworkCore;
using WhatIsDish.Api.BLL.DTOs;
using WhatIsDish.Api.BLL.Interfaces;
using WhatIsDish.Api.Data;

namespace WhatIsDish.Api.BLL.Services;

//Bygger ihop all data som behövs för quizöversikten
public class QuizSummaryService : IQuizSummaryService
{
    private readonly AppDbContext _context;

    // hämtar databaskopplingen - dependency injection
    public QuizSummaryService(AppDbContext context)
    {
        _context = context;
    }

    public async Task<QuizSummaryDto> GetQuizSummaryAsync(
        QuizSummaryRequestDto request)
    {
        //hämtar alla land-id från det avslutade quizet
        var countryIds = request.Questions
            .Select(q => q.CountryId)
            .ToList();

        //Hämtar information om länderna från db
        var countries = await _context.Countries
            .Where(c => countryIds.Contains(c.CountryId))
            .ToListAsync();

        //Hämtar alla svarsalternativ som hör till quizets länder
        var dishes = await _context.Dishes
            .Where(d => countryIds.Contains(d.CountryId))
            .ToListAsync();

        //Bygger upp varje fråga som ska visas i översikten
        var questions = request.Questions.Select(result =>
        {
            //Hittar landet som hör till den aktuella frågan
            var country = countries
                .First(c => c.CountryId == result.CountryId);

            //hämtar svarsalternativen för landet
            var options = dishes
                .Where(d => d.CountryId == result.CountryId)
                .Select(d => new QuizSummaryDishOptionDto
                {
                    DishId = d.DishId,
                    DishName = d.DishName,
                    IsCorrect = d.IsCorrect
                })
                .ToList();

            //Skapar DTO:n som frontend använder för frågan
            var guessedDish = options.FirstOrDefault(o => o.DishId == result.GuessedDishId);
var correctDish = options.First(o => o.IsCorrect);

return new QuizSummaryQuestionDto
{
    CountryId = country.CountryId,
    CountryName = country.CountryName,
    FlagUrl = country.FlagUrl,
    Points = result.Points,

    GuessedDishId = guessedDish?.DishId,
    GuessedDishName = guessedDish?.DishName ?? "Inget svar",

    CorrectDishId = correctDish.DishId,
    CorrectDishName = correctDish.DishName,

    Options = options
};

        //Returnerar alla frågor och räknar ut totalpoängen
        return new QuizSummaryDto
        {
            Questions = questions,
            TotalScore = questions.Sum(q => q.Points)
        };
    }
}