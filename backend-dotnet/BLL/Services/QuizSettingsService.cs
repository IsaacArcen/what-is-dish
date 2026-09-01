using Microsoft.EntityFrameworkCore;
using WhatIsDish.Api.BLL.DTOs;
using WhatIsDish.Api.BLL.Interfaces;
using WhatIsDish.Api.Data;
using WhatIsDish.Api.Models;

namespace WhatIsDish.Api.BLL.Services;

public class QuizSettingsService : IQuizSettingsService
{
    private readonly AppDbContext _context;

    public QuizSettingsService(AppDbContext context)
    {
        _context = context;
    }

    public async Task<List<string>> GetContinentsAsync()
    {
        return await _context.Countries
            .Select(country => country.Continent)
            .Distinct()
            .OrderBy(continent => continent)
            .ToListAsync();
    }

    public async Task<List<Country>> GetQuizCountriesAsync(
        QuizSettingsRequestDto settings)
    {
        if (settings.NumberOfQuestions is not (5 or 10 or 20))
        {
            throw new ArgumentException(
                "Antal frågor måste vara 5, 10 eller 20.");
        }

        var query = _context.Countries.AsQueryable();

        if (settings.Continents.Count > 0)
        {
            query = query.Where(country =>
                settings.Continents.Contains(country.Continent));
        }

        var countries = await query.ToListAsync();

        if (countries.Count < settings.NumberOfQuestions)
        {
            throw new InvalidOperationException(
                "Det finns inte tillräckligt många länder i valda regioner.");
        }

        return countries
            .OrderBy(country => Random.Shared.Next())
            .Take(settings.NumberOfQuestions)
            .ToList();
    }
}