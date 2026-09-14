using System.Text.Json.Serialization;

namespace WhatIsDish.Api.BLL.DTOs;

public class ScoreHistoryDto
{
    public ScoreResultDto? Latest { get; set; }
    public ScoreSummaryDto Summary { get; set; } = new();
    public List<ScoreResultDto> Results { get; set; } = new();
}

public class ScoreResultDto
{
    [JsonPropertyName("id")]
    public int Id { get; set; }

    [JsonPropertyName("score")]
    public int Score { get; set; }

    [JsonPropertyName("max_score")]
    public int MaxScore { get; set; }

    [JsonPropertyName("difficulty")]
    public string Difficulty { get; set; } = "Standard";

    [JsonPropertyName("completed_at")]
    public DateTime CompletedAt { get; set; }
}

public class ScoreSummaryDto
{
    [JsonPropertyName("total_quizzes")]
    public int TotalQuizzes { get; set; }

    [JsonPropertyName("average_percent")]
    public int AveragePercent { get; set; }

    [JsonPropertyName("best_percent")]
    public int BestPercent { get; set; }
}
