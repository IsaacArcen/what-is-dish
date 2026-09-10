using Microsoft.EntityFrameworkCore;
using WhatIsDish.Api.BLL.DTOs.Matching;
using WhatIsDish.Api.BLL.Interfaces;
using WhatIsDish.Api.Data;
using WhatIsDish.Api.Models;

namespace WhatIsDish.Api.BLL.Services;

public class MatchingQuizService : IMatchingQuizService
{
    private readonly AppDbContext _context;

    public MatchingQuizService(AppDbContext context)
    {
        _context = context;
    }

    public async Task<MatchingBoardDto> GetMatchingBoardAsync(List<Country> countries)
    {
        var countryIds = countries.Select(c => c.CountryId).ToList();

        var correctDishes = await _context.Dishes
            .Where(d => countryIds.Contains(d.CountryId) && d.IsCorrect)
            .ToListAsync();

        return new MatchingBoardDto
        {
            Countries = countries
                .Select(c => new MatchingCountryDto
                {
                    CountryId = c.CountryId,
                    CountryName = c.CountryName,
                    FlagUrl = c.FlagUrl
                })
                .OrderBy(c => Random.Shared.Next())
                .ToList(),

            Dishes = correctDishes
                .Select(d => new MatchingDishDto
                {
                    DishId = d.DishId,
                    DishName = d.DishName,
                    DishImageUrl = d.DishImageUrl
                })
                .OrderBy(d => Random.Shared.Next())
                .ToList()
        };
    }

    public async Task<MatchingGuessResultDto> EvaluateMatchAsync(MatchingGuessRequestDto request)
{
    var correctDish = await _context.Dishes
        .FirstOrDefaultAsync(d => d.CountryId == request.CountryId && d.IsCorrect);

    if (correctDish is null)
    {
        throw new InvalidOperationException(
            $"Inget korrekt svar hittades för land {request.CountryId}.");
    }

    bool isCorrect = request.GuessedDishId == correctDish.DishId;

    int attemptsRemaining = isCorrect
        ? request.AttemptsRemaining
        : request.AttemptsRemaining - 1;

    return new MatchingGuessResultDto
    {
        Correct = isCorrect,
        AttemptsRemaining = attemptsRemaining,
        GameOver = attemptsRemaining <= 0
    };
}
}