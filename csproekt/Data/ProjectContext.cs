using csproekt.Entities;
using Microsoft.EntityFrameworkCore;

namespace csproekt.Data;

public class ProjectContext : DbContext
{
    public DbSet<Customer> Customers { get; set; }
    public DbSet<Order> Orders { get; set; }
    public DbSet<Product> Products { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlServer(
            "Server=localhost;Database=Project;User Id=b;Password=b;TrustServerCertificate=True;");
    }
}