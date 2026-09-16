using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WhatIsDish.Api.BLL.DTOs;
using WhatIsDish.Api.BLL.DTOs.Matching;
using WhatIsDish.Api.BLL.Exceptions;
using WhatIsDish.Api.BLL.Interfaces;
using WhatIsDish.Api.BLL.Services;
using WhatIsDish.Api.Data;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddOpenApi();

builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlite("Data Source=../database/what_is_dish.db"));

builder.Services.AddScoped<IQuizSettingsService, QuizSettingsService>();
builder.Services.AddScoped<IQuizService, QuizService>();
builder.Services.AddScoped<IQuizSummaryService, QuizSummaryService>();
builder.Services.AddScoped<IQuizScoreService, QuizScoreService>();
builder.Services.AddScoped<IAuthService, AuthService>();
builder.Services.AddScoped<IMatchingQuizService, MatchingQuizService>();
builder.Services.AddScoped<IMatchingQuizSettingsService, MatchingQuizSettingsService>();

builder.Services.AddCors(options =>
{
    options.AddPolicy("Frontend", policy =>
        policy.AllowAnyOrigin()
              .AllowAnyHeader()
              .AllowAnyMethod());
});

var app = builder.Build();

await DatabaseInitializer.InitializeAsync(app.Services);

if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();
}

app.UseCors("Frontend");

app.MapGet("/api/countries", async (AppDbContext db) =>
    await db.Countries.ToListAsync());

app.MapGet("/api/dishes", async (AppDbContext db) =>
    await db.Dishes.ToListAsync());

app.MapGet("/api/blog", async (AppDbContext db) =>
    await db.Dishes
        .Where(d => d.IsCorrect)
        .Include(d => d.Country)
        .Select(d => new
        {
            d.CountryId,
            d.Country!.CountryName,
            d.Country.Continent,
            d.Country.FlagUrl,
            d.DishId,
            d.DishName,
            d.DishImageUrl,
            d.DishHistory,
            d.Hint
        })
        .ToListAsync());

// Gammal quiz-endpoint - kan tas bort nu när /api/quiz/start finns
app.MapGet("/api/quiz", async (AppDbContext db, string continent = "all", int limit = 5) =>
{
    var query = db.Dishes
        .Where(d => d.IsCorrect)
        .Include(d => d.Country)
        .AsQueryable();

    if (continent != "all")
    {
        query = query.Where(d => d.Country!.Continent == continent);
    }

    var questions = await query
        .OrderBy(d => EF.Functions.Random())
        .Take(limit)
        .Select(d => new
        {
            d.CountryId,
            d.Country!.CountryName,
            d.Country.Continent,
            d.Country.FlagUrl,
            CorrectDishId = d.DishId,
            CorrectDishName = d.DishName,
            d.DishImageUrl,
            d.DishHistory,
            d.Hint,
            Options = d.Country.Dishes.Select(option => new
            {
                option.DishId,
                option.DishName,
                option.IsCorrect
            }).ToList()
        })
        .ToListAsync();

    return questions;
});

//endpoints for quiz settings
app.MapGet("/api/quiz-settings/continents", async (IQuizSettingsService service) =>
    await service.GetContinentsAsync());

app.MapPost("/api/quiz-settings/countries", async (
    QuizSettingsRequestDto settings,
    IQuizSettingsService service) =>
{
    try
    {
        var countries = await service.GetQuizCountriesAsync(settings);
        return Results.Ok(countries);
    }
    catch (ArgumentException ex)
    {
        return Results.BadRequest(ex.Message);
    }
    catch (InvalidOperationException ex)
    {
        return Results.BadRequest(ex.Message);
    }
});

app.MapPost("/api/quiz/start", async (
    QuizSettingsRequestDto settings,
    IQuizSettingsService settingsService,
    IQuizService quizService) =>
{
    var countries = await settingsService.GetQuizCountriesAsync(settings);
    var questions = await quizService.GetQuizQuestionsAsync(countries);
    return Results.Ok(questions);
});

app.MapPost("/api/quiz/answer", async (
    AnswerRequestDto request,
    IQuizService quizService) =>
{
    var result = await quizService.EvaluateAnswerAsync(request);
    return Results.Ok(result);
});

app.MapPost("/api/quiz/summary", async (
    HttpRequest request,
    QuizSummaryRequestDto summaryRequest,
    IQuizSummaryService summaryService,
    IQuizScoreService scoreService) =>
{
    var summary = await summaryService.GetQuizSummaryAsync(summaryRequest);
    await scoreService.SaveAsync(GetBearerToken(request), summary);

    return Results.Ok(summary);
});

app.MapGet("/api/scores/me", async (HttpRequest request, IQuizScoreService scoreService) =>
{
    var history = await scoreService.GetMineAsync(GetBearerToken(request));
    if (history is null)
    {
        return Results.Json(new { error = "invalid or expired token" }, statusCode: StatusCodes.Status401Unauthorized);
    }

    return Results.Ok(history);
});

app.MapGet("/api/leaderboard", async (IQuizScoreService scoreService) =>
{
    var leaderboard = await scoreService.GetLeaderboardAsync();
    return Results.Ok(leaderboard);
});

static string? GetBearerToken(HttpRequest request)
{
    var header = request.Headers.Authorization.ToString();
    if (!header.StartsWith("Bearer ", StringComparison.Ordinal)) return null;
    var token = header["Bearer ".Length..].Trim();
    return token.Length == 0 ? null : token;
}

app.MapPost("/api/auth/register", async (RegisterRequestDto request, IAuthService authService) =>
{
    try
    {
        var result = await authService.RegisterAsync(request);
        return Results.Json(result, statusCode: StatusCodes.Status201Created);
    }
    catch (ArgumentException ex)
    {
        return Results.BadRequest(new { error = ex.Message });
    }
    catch (ConflictException ex)
    {
        return Results.Conflict(new { error = ex.Message });
    }
});

app.MapPost("/api/auth/login", async (LoginRequestDto request, IAuthService authService) =>
{
    try
    {
        var result = await authService.LoginAsync(request);
        return Results.Ok(result);
    }
    catch (ArgumentException ex)
    {
        return Results.BadRequest(new { error = ex.Message });
    }
    catch (UnauthorizedAccessException ex)
    {
        return Results.Json(new { error = ex.Message }, statusCode: StatusCodes.Status401Unauthorized);
    }
});

app.MapGet("/api/auth/me", async (HttpRequest request, IAuthService authService) =>
{
    var user = await authService.GetMeAsync(GetBearerToken(request));
    return user is null
        ? Results.Json(new { error = "invalid or expired token" }, statusCode: StatusCodes.Status401Unauthorized)
        : Results.Ok(new { user });
});

app.MapPut("/api/auth/me", async (HttpRequest request, UpdateProfileRequestDto body, IAuthService authService) =>
{
    try
    {
        var user = await authService.UpdateProfileAsync(GetBearerToken(request), body);
        return Results.Ok(new { user });
    }
    catch (ArgumentException ex)
    {
        return Results.BadRequest(new { error = ex.Message });
    }
    catch (ConflictException ex)
    {
        return Results.Conflict(new { error = ex.Message });
    }
    catch (UnauthorizedAccessException ex)
    {
        return Results.Json(new { error = ex.Message }, statusCode: StatusCodes.Status401Unauthorized);
    }
});

app.MapPut("/api/auth/me/password", async (HttpRequest request, ChangePasswordRequestDto body, IAuthService authService) =>
{
    try
    {
        await authService.ChangePasswordAsync(GetBearerToken(request), body);
        return Results.NoContent();
    }
    catch (ArgumentException ex)
    {
        return Results.BadRequest(new { error = ex.Message });
    }
    catch (UnauthorizedAccessException ex)
    {
        return Results.Json(new { error = ex.Message }, statusCode: StatusCodes.Status401Unauthorized);
    }
});

app.MapDelete("/api/auth/me", async (HttpRequest request, [FromBody] DeleteAccountRequestDto body, IAuthService authService) =>
{
    try
    {
        await authService.DeleteAccountAsync(GetBearerToken(request), body);
        return Results.NoContent();
    }
    catch (UnauthorizedAccessException ex)
    {
        return Results.Json(new { error = ex.Message }, statusCode: StatusCodes.Status401Unauthorized);
    }
});

app.MapPost("/api/auth/logout", async (HttpRequest request, IAuthService authService) =>
{
    await authService.LogoutAsync(GetBearerToken(request));
    return Results.NoContent();
});

app.MapPost("/api/matching-quiz/start", async (
    MatchingQuizSettingsRequestDto settings,
    IMatchingQuizSettingsService settingsService,
    IMatchingQuizService matchingService) =>
{
    var countries = await settingsService.GetMatchingQuizCountriesAsync(settings);
    var board = await matchingService.GetMatchingBoardAsync(countries);
    return Results.Ok(board);
});

app.MapPost("/api/matching-quiz/guess", async (
    MatchingGuessRequestDto request,
    IMatchingQuizService matchingService) =>
{
    var result = await matchingService.EvaluateMatchAsync(request);
    return Results.Ok(result);
});

app.MapGet("/api/recipes/daily", async (AppDbContext db) =>
{
    var recipe = await db.Recipes
        .Include(r => r.Country)
        .OrderBy(r => EF.Functions.Random())
        .Select(r => new
        {
            r.Country!.CountryName,
            r.Country.FlagUrl,
            DishName = db.Dishes
                .Where(d => d.CountryId == r.CountryId && d.IsCorrect)
                .Select(d => d.DishName)
                .FirstOrDefault(),
            DishImageUrl = db.Dishes
                .Where(d => d.CountryId == r.CountryId && d.IsCorrect)
                .Select(d => d.DishImageUrl)
                .FirstOrDefault(),
            r.Ingredients,
            r.Steps
        })
        .FirstOrDefaultAsync();

    return recipe is null ? Results.NotFound() : Results.Ok(recipe);
});

app.Run();
