namespace WhatIsDish.Api.BLL.Exceptions;

// Thrown when a request conflicts with existing data (e.g. duplicate email) -> maps to HTTP 409
public class ConflictException : Exception
{
    public ConflictException(string message) : base(message) { }
}
