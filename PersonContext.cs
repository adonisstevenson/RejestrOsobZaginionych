using Microsoft.EntityFrameworkCore;
using RejestrOsobZaginionych.Models;

namespace RejestrOsobZaginionych
{
    public class PersonContext : DbContext
    {
        public DbSet<Person> People { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Data Source=DESKTOP-BK97AM5\SQLEXPRESS;Initial Catalog=RejestrOsobZaginionych;Integrated Security=True");
        }

    }
}
