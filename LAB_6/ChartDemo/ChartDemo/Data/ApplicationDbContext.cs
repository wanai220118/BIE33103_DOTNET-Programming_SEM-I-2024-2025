using ChartDemo.Models;
using Microsoft.EntityFrameworkCore;

namespace ChartDemo.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        // DbSet for ClassSummary entity
        public DbSet<ClassSummary> ClassSummaries { get; set; }

        // DbSet for Programme entity
        public DbSet<Programme> Programmes { get; set; }
    }
}
