using WhatIsDish.Api.BLL.DTOs.Blog;

namespace WhatIsDish.Api.BLL.Interfaces;

public interface IBloggService
{
    Task<List<BlogDishDto>> GetBlogDishesAsync(List<string> continents);
}