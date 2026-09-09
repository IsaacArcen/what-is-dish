using WhatIsDish.Api.BLL.DTOs.Matching;
using WhatIsDish.Api.Models;

namespace WhatIsDish.Api.BLL.Interfaces;

public interface IMatchingQuizService
{
    Task<MatchingBoardDto> GetMatchingBoardAsync(List<Country> countries);
    Task<MatchingGuessResultDto> EvaluateMatchAsync(MatchingGuessRequestDto request);
}