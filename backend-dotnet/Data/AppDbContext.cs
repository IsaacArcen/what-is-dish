using Microsoft.EntityFrameworkCore;
using WhatIsDish.Api.Models;

namespace WhatIsDish.Api.Data;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) {}

    public DbSet<Country> Countries => Set<Country>();
    public DbSet<Dish> Dishes => Set<Dish>();

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Country>().ToTable("countries");
        modelBuilder.Entity<Dish>().ToTable("dishes");

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
    }
}