using WhatIsDish.Api.BLL.DTOs;
using WhatIsDish.Api.BLL.DTOs.Leaderboard;
namespace WhatIsDish.Api.BLL.Interfaces;

public interface IQuizScoreService
{
    Task SaveAsync(string? token, QuizSummaryDto summary);
    Task<ScoreHistoryDto?> GetMineAsync(string? token);
    Task<List<LeaderboardEntryDto>> GetLeaderboardAsync();

}
