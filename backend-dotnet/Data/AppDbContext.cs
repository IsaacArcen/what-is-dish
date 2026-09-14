using Microsoft.EntityFrameworkCore;
using WhatIsDish.Api.Models;

namespace WhatIsDish.Api.Data;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) {}

    public DbSet<Country> Countries => Set<Country>();
    public DbSet<Dish> Dishes => Set<Dish>();
    public DbSet<User> Users => Set<User>();
    public DbSet<AuthToken> AuthTokens => Set<AuthToken>();
    public DbSet<QuizScore> QuizScores => Set<QuizScore>();

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Country>().ToTable("countries");
        modelBuilder.Entity<Dish>().ToTable("dishes");
        modelBuilder.Entity<User>().ToTable("users");
        modelBuilder.Entity<AuthToken>().ToTable("auth_tokens");

        modelBuilder.Entity<Country>().Property(c => c.CountryId).HasColumnName("country_id");
        modelBuilder.Entity<Country>().Property(c => c.CountryName).HasColumnName("country_name");
        modelBuilder.Entity<Country>().Property(c => c.Continent).HasColumnName("continent");
        modelBuilder.Entity<Country>().Property(c => c.FlagUrl).HasColumnName("flag_url");

        modelBuilder.Entity<Dish>().Property(d => d.DishId).HasColumnName("dish_id");
        modelBuilder.Entity<Dish>().Property(d => d.CountryId).HasColumnName("country_id");
        modelBuilder.Entity<Dish>().Property(d => d.DishName).HasColumnName("dish_name");
        modelBuilder.Entity<Dish>().Property(d => d.IsCorrect).HasColumnName("is_correct");
        modelBuilder.Entity<Dish>().Property(d => d.DishImageUrl).HasColumnName("dish_image_url");
        modelBuilder.Entity<Dish>().Property(d => d.DishHistory).HasColumnName("dish_history");
        modelBuilder.Entity<Dish>().Property(d => d.Hint).HasColumnName("hint");

        modelBuilder.Entity<User>().Property(u => u.Id).HasColumnName("id");
        modelBuilder.Entity<User>().Property(u => u.Name).HasColumnName("name");
        modelBuilder.Entity<User>().Property(u => u.Email).HasColumnName("email");
        modelBuilder.Entity<User>().Property(u => u.PasswordHash).HasColumnName("password_hash");
        modelBuilder.Entity<User>().Property(u => u.CreatedAt).HasColumnName("created_at");
        modelBuilder.Entity<User>().HasIndex(u => u.Email).IsUnique();

        modelBuilder.Entity<AuthToken>().Property(t => t.Id).HasColumnName("id");
        modelBuilder.Entity<AuthToken>().Property(t => t.Token).HasColumnName("token");
        modelBuilder.Entity<AuthToken>().Property(t => t.UserId).HasColumnName("user_id");
        modelBuilder.Entity<AuthToken>().Property(t => t.ExpiresAt).HasColumnName("expires_at");
        modelBuilder.Entity<AuthToken>().HasIndex(t => t.Token).IsUnique();
        modelBuilder.Entity<AuthToken>()
            .HasOne(t => t.User)
            .WithMany(u => u.Tokens)
            .HasForeignKey(t => t.UserId)
            .OnDelete(DeleteBehavior.Cascade);

        modelBuilder.Entity<QuizScore>().ToTable("quiz_scores");
        modelBuilder.Entity<QuizScore>().Property(s => s.Id).HasColumnName("id");
        modelBuilder.Entity<QuizScore>().Property(s => s.UserId).HasColumnName("user_id");
        modelBuilder.Entity<QuizScore>().Property(s => s.Score).HasColumnName("score");
        modelBuilder.Entity<QuizScore>().Property(s => s.MaxScore).HasColumnName("max_score");
        modelBuilder.Entity<QuizScore>().Property(s => s.Difficulty).HasColumnName("difficulty");
        modelBuilder.Entity<QuizScore>().Property(s => s.CompletedAt).HasColumnName("completed_at");
        modelBuilder.Entity<QuizScore>()
            .HasOne(s => s.User)
            .WithMany()
            .HasForeignKey(s => s.UserId)
            .OnDelete(DeleteBehavior.Cascade);
    }
}