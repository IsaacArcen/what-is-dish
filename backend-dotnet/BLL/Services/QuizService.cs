using Microsoft.EntityFrameworkCore;
using WhatIsDish.Api.BLL.DTOs;
using WhatIsDish.Api.BLL.Interfaces;
using WhatIsDish.Api.Data;
using WhatIsDish.Api.Models;

namespace WhatIsDish.Api.BLL.Services;

public class QuizService : IQuizService
{
    private readonly AppDbContext _context;

    public QuizService(AppDbContext context)
    {
        _context = context;
    }

    public async Task<List<QuizQuestionDto>> GetQuizQuestionsAsync(List<Country> countries)
    {
        var countryIds = countries.Select(c => c.CountryId).ToList();

        var dishes = await _context.Dishes
            .Where(d => countryIds.Contains(d.CountryId))
            .ToListAsync();

        return countries.Select(country => new QuizQuestionDto
        {
            CountryId = country.CountryId,
            CountryName = country.CountryName,
            FlagUrl = country.FlagUrl,
            Options = dishes
                .Where(d => d.CountryId == country.CountryId)
                .Select(d => new DishOptionDto
                {
                    DishId = d.DishId,
                    DishName = d.DishName
                })
                .ToList()
        }).ToList();
    }

    public async Task<AnswerResultDto> EvaluateAnswerAsync(AnswerRequestDto request)
{
    var correctDish = await _context.Dishes
        .FirstOrDefaultAsync(d => d.CountryId == request.CountryId && d.IsCorrect);

    if (correctDish is null)
    {
        throw new InvalidOperationException(
            $"Inget korrekt svar hittades för land {request.CountryId}.");
    }

    bool isCorrect = request.GuessedDishId == correctDish.DishId;

    if (isCorrect)
    {
        int points = request.Attempt switch
        {
            1 => 3,
            2 => 2,
            3 => 1,
            _ => 0
        };

        return new AnswerResultDto
        {
            Correct = true,
            Points = points
        };
    }

    // Fel svar - avgör vad som ska visas beroende på vilket försök det var
    var result = new AnswerResultDto
    {
        Correct = false,
        Points = 0
    };

    switch (request.Attempt)
    {
        case 1:
            result.ImageHint = correctDish.DishImageUrl;
            break;
        case 2:
            result.TextHint = correctDish.Hint;
            break;
        case 3:
            result.CorrectDishName = correctDish.DishName;
            break;
    }

    return result;
}
}