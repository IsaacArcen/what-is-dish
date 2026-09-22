using Microsoft.EntityFrameworkCore;
using WhatIsDish.Api.BLL.DTOs.Blog;
using WhatIsDish.Api.BLL.Interfaces;
using WhatIsDish.Api.Data;

namespace WhatIsDish.Api.BLL.Services;

public class BloggService : IBloggService
{
    private readonly AppDbContext _context;

    public BloggService(AppDbContext context)
    {
        _context = context;
    }

    public async Task<List<BlogDishDto>> GetBlogDishesAsync(List<string> continents)
    {
        var query = _context.Dishes
            .Where(dish => dish.IsCorrect)
            .Include(dish => dish.Country)
            .AsQueryable();

        if (continents.Count > 0)
        {
            query = query.Where(dish =>
                dish.Country != null &&
                continents.Contains(dish.Country.Continent));
        }

        return await query
            .OrderBy(dish => dish.Country!.CountryName)
            .Select(dish => new BlogDishDto
            {
                CountryId = dish.CountryId,
                CountryName = dish.Country!.CountryName,
                Continent = dish.Country.Continent,
                FlagUrl = dish.Country.FlagUrl,

                DishId = dish.DishId,
                DishName = dish.DishName,
                DishImageUrl = dish.DishImageUrl,
                DishHistory = dish.DishHistory,
                Hint = dish.Hint,

                Ingredients = _context.Recipes
                    .Where(recipe => recipe.CountryId == dish.CountryId)
                    .Select(recipe => recipe.Ingredients)
                    .FirstOrDefault(),

                Steps = _context.Recipes
                    .Where(recipe => recipe.CountryId == dish.CountryId)
                    .Select(recipe => recipe.Steps)
                    .FirstOrDefault()
            })
            .ToListAsync();
    }
}