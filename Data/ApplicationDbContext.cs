using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace RejestrOsobZaginionych.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public DbSet<IdentityUser> Users { get; set; }
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public ApplicationDbContext()
            : base()
        {
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Data Source=DESKTOP-BK97AM5\SQLEXPRESS;Initial Catalog=RejestrOsobZaginionych;Integrated Security=True");
        }
    }
}