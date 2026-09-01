using Microsoft.EntityFrameworkCore;
using WhatIsDish.Api.Data;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddOpenApi();

builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlite("Data Source=../database/what_is_dish.db"));

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
        .OrderBy(d => Guid.NewGuid())
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

app.Run();