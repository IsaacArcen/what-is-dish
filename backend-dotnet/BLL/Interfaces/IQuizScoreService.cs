using WhatIsDish.Api.BLL.DTOs;

namespace WhatIsDish.Api.BLL.Interfaces;

public interface IQuizScoreService
{
    Task SaveAsync(string? token, QuizSummaryDto summary);
    Task<ScoreHistoryDto?> GetMineAsync(string? token);
}
