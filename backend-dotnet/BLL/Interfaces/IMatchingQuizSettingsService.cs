using WhatIsDish.Api.BLL.DTOs.Matching;
using WhatIsDish.Api.Models;

namespace WhatIsDish.Api.BLL.Interfaces;

public interface IMatchingQuizSettingsService
{
    //hämtar alla regioner 
    Task<List<string>> GetContinentsAsync();

    //Hämtar och slumpar länder utifrån användarens val
    Task<List<Country>> GetMatchingQuizCountriesAsync(
        MatchingQuizSettingsRequestDto settings);
}