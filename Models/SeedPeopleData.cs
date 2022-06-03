using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using RejestrOsobZaginionych.Data;
using System;
using System.Linq;

namespace RejestrOsobZaginionych.Models
{
    public static class SeedPeopleData
    {
        public static void Initialize(IServiceProvider serviceProvider)
        {
            using (var context = new PersonContext(
                serviceProvider.GetRequiredService<
                    DbContextOptions<PersonContext>>()))
            {
                // Look for any movies.
                if (context.People.Any())
                {
                    return;   // DB has been seeded
                }

                context.People.AddRange(
                    new Person
                    {
                        Name = "John",
                        Surname = "Dick",
                        Age = 23,
                        Sex = "Men",
                        DateMissing = DateTime.Now,
                        LastSeenPlace = "California"

                    },

                    new Person
                    {
                        Name = "Dawid",
                        Surname = "Nowak",
                        Age = 33,
                        Sex = "Men",
                        DateMissing = DateTime.Now,
                        LastSeenPlace = "Katowice"
                    },

                    new Person
                    {
                        Name = "Melinda",
                        Surname = "Jackson",
                        Age = 41,
                        Sex = "Woman",
                        DateMissing = DateTime.Now,
                        LastSeenPlace = "Houston, Texas"
                    },

                    new Person
                    {
                        Name = "Daniel",
                        Surname = "Gromak",
                        Age = 23,
                        Sex = "Men",
                        DateMissing = DateTime.Now,
                        LastSeenPlace = "Warszawa"
                    }
                );
                context.SaveChanges();
            }
        }
    }
}