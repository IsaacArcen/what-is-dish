namespace WhatIsDish.Api.Models;

public class QuizScore
{
    public int Id { get; set; }
    public int UserId { get; set; }
    public int Score { get; set; }
    public int MaxScore { get; set; }
    public string Difficulty { get; set; } = "Standard";
    public DateTime CompletedAt { get; set; }

    public User User { get; set; } = null!;
}
