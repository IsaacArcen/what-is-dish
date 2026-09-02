using WhatIsDish.Api.BLL.DTOs;
using WhatIsDish.Api.Models;

namespace WhatIsDish.Api.BLL.Interfaces;

public interface IQuizSettingsService
{
    Task<List<string>> GetContinentsAsync();

    Task<List<Country>> GetQuizCountriesAsync(
        QuizSettingsRequestDto settings);
}