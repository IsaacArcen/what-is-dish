using WhatIsDish.Api.BLL.DTOs;
using WhatIsDish.Api.Models;

namespace WhatIsDish.Api.BLL.Interfaces;

public interface IQuizService
{
    Task<List<QuizQuestionDto>> GetQuizQuestionsAsync(List<Country> countries);
    Task<AnswerResultDto> EvaluateAnswerAsync(AnswerRequestDto request);
}