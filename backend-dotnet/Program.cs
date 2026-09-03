using Microsoft.EntityFrameworkCore;
using WhatIsDish.Api.Data;
using WhatIsDish.Api.BLL.DTOs;
using WhatIsDish.Api.BLL.Interfaces;
using WhatIsDish.Api.BLL.Services;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddOpenApi();

builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlite("Data Source=../database/what_is_dish.db"));

builder.Services.AddScoped<IQuizSettingsService, QuizSettingsService>();
builder.Services.AddScoped<IQuizService, QuizService>();

builder.Services.AddCors(options =>
{
    options.AddPolicy("Frontend", policy =>
        policy.AllowAnyOrigin()
              .AllowAnyHeader()
              .AllowAnyMethod());
});

var app = builder.Build();

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

app.Run();