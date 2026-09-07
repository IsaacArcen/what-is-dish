using WhatIsDish.Api.BLL.DTOs;

namespace WhatIsDish.Api.BLL.Interfaces;

//funktionalitet quizöversikten ska ha i BLL.
public interface IQuizSummaryService
{
    Task<QuizSummaryDto> GetQuizSummaryAsync(QuizSummaryRequestDto request);
}