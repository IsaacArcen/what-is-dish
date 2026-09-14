using Microsoft.EntityFrameworkCore;
using WhatIsDish.Api.BLL.DTOs.Matching;
using WhatIsDish.Api.BLL.Interfaces;
using WhatIsDish.Api.Data;
using WhatIsDish.Api.Models;

namespace WhatIsDish.Api.BLL.Services;

public class MatchingQuizSettingsService : IMatchingQuizSettingsService
{
    private readonly AppDbContext _context;

    public MatchingQuizSettingsService(AppDbContext context)
    {
        _context = context;
    }

    public async Task<List<string>> GetContinentsAsync()
    {
        //Hämtar alla unika regioner från länderna i databasen
        return await _context.Countries
            .Select(c => c.Continent)
            .Distinct()
            .OrderBy(c => c)
            .ToListAsync();
    }

    public async Task<List<Country>> GetMatchingQuizCountriesAsync(
        MatchingQuizSettingsRequestDto settings)
    {
        //kontrollerar att användaren valt ett tillåtet antal matchningar
        if (settings.NumberOfCountries is not (5 or 10 or 20))
        {
            throw new ArgumentException(
                "Antal matchningar måste vara 5, 10 eller 20.");
        }

        //börjar med alla länder i databasen som har en korrekt rätt att matcha mot
        var query = _context.Countries
            .Where(c => c.Dishes.Any(d => d.IsCorrect))
            .AsQueryable();

        //Om regioner är valda filtreras länderna
        if (settings.Continents.Count > 0)
        {
            query = query.Where(c =>
                settings.Continents.Contains(c.Continent));
        }

        var countries = await query.ToListAsync();

        //kontrollerar att det finns tillräckligt många länder
        if (countries.Count < settings.NumberOfCountries)
        {
            throw new InvalidOperationException(
                "Det finns inte tillräckligt många länder i valda regioner.");
        }

        //slumpar länderna och väljer antalet användaren valt
        return countries
            .OrderBy(c => Random.Shared.Next())
            .Take(settings.NumberOfCountries)
            .ToList();
    }
}