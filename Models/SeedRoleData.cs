using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using RejestrOsobZaginionych.Data;
using System;
using System.Linq;

namespace RejestrOsobZaginionych.Models
{
    public  class SeedRoleData
    {
        public static void Initialize(IServiceProvider serviceProvider)
        {
            var context = serviceProvider.GetService<ApplicationDbContext>();
            

                string[] roles = new string[] { "admin", "user" };

                foreach (string role in roles)
                {
                    var roleStore = new RoleStore<IdentityRole>(context);

                    if (!context.Roles.Any(r => r.Name == role))
                    {
                        roleStore.CreateAsync(new IdentityRole(role));
                    }


                }

                    var user = new IdentityUser
                    {
                        UserName = "Admin",
                        Email = "admin@mail.com",
                        NormalizedEmail = "ADMIN@MAIL.COM",
                        EmailConfirmed = true,
                        SecurityStamp = Guid.NewGuid().ToString("D")

                    };

                    if (!context.Users.Any(u => u.UserName == user.UserName))
                    {
                        var password = new PasswordHasher<IdentityUser>();
                        var hashed = password.HashPassword(user, "password");
                        user.PasswordHash = hashed;

                        var userStore = new UserStore<IdentityUser>(context);
                        var result = userStore.CreateAsync(user);
                    }


                AssignRoles(serviceProvider, user.Email, roles);
                context.SaveChangesAsync();
            
        }

        public static async Task<IdentityResult> AssignRoles(IServiceProvider services, string email, string[] roles)
        {
            UserManager<IdentityUser> _userManager = services.GetService<UserManager<IdentityUser>>();
            IdentityUser user = await _userManager.FindByEmailAsync(email);
            var result = await _userManager.AddToRolesAsync(user, roles);

            return result;
        }
    }
}