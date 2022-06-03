﻿using Microsoft.AspNetCore.Identity;

namespace RejestrOsobZaginionych.Models
{
    public class ApplicationUser : IdentityUser
    {
        public string UserId { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }

        public IEnumerable<string> Roles { get; set; }
    }
}
