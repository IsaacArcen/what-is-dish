using Microsoft.EntityFrameworkCore;
using WhatIsDish.Api.BLL.DTOs;
using WhatIsDish.Api.BLL.Interfaces;
using WhatIsDish.Api.Data;
using WhatIsDish.Api.Models;

namespace WhatIsDish.Api.BLL.Services;

public class QuizScoreService : IQuizScoreService
{
    private readonly AppDbContext _context;

    public QuizScoreService(AppDbContext context)
    {
        _context = context;
    }

    public async Task SaveAsync(string? token, QuizSummaryDto summary)
    {
        var userId = await GetUserIdAsync(token);
        if (userId is null || summary.Questions.Count == 0) return;

        const int maxPointsPerQuestion = 3; // full poäng ges vid rätt svar på första försöket

        _context.QuizScores.Add(new QuizScore
        {
            UserId = userId.Value,
            Score = summary.TotalScore,
            MaxScore = summary.Questions.Count * maxPointsPerQuestion,
            Difficulty = summary.Region,
            CompletedAt = DateTime.UtcNow,
        });
        await _context.SaveChangesAsync();
    }

    public async Task<ScoreHistoryDto?> GetMineAsync(string? token)
    {
        var userId = await GetUserIdAsync(token);
        if (userId is null) return null;

        var results = await _context.QuizScores
            .Where(score => score.UserId == userId.Value)
            .OrderByDescending(score => score.CompletedAt)
            .Take(10)
            .Select(score => new ScoreResultDto
            {
                Id = score.Id,
                Score = score.Score,
                MaxScore = score.MaxScore,
                Difficulty = score.Difficulty,
                CompletedAt = score.CompletedAt,
            })
            .ToListAsync();

        var totalQuizzes = await _context.QuizScores.CountAsync(score => score.UserId == userId.Value);
        var percentages = results
            .Select(result => result.MaxScore == 0 ? 0 : result.Score * 100.0 / result.MaxScore)
            .ToList();

        return new ScoreHistoryDto
        {
            Latest = results.FirstOrDefault(),
            Summary = new ScoreSummaryDto
            {
                TotalQuizzes = totalQuizzes,
                AveragePercent = percentages.Count == 0 ? 0 : (int)Math.Round(percentages.Average()),
                BestPercent = percentages.Count == 0 ? 0 : (int)Math.Round(percentages.Max()),
            },
            Results = results,
        };
    }

    private async Task<int?> GetUserIdAsync(string? token)
    {
        if (string.IsNullOrWhiteSpace(token)) return null;

        return await _context.AuthTokens
            .Where(authToken => authToken.Token == token && authToken.ExpiresAt > DateTime.UtcNow)
            .Select(authToken => (int?)authToken.UserId)
            .FirstOrDefaultAsync();
    }
}
