using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using RejestrOsobZaginionych.Data;
using RejestrOsobZaginionych.Models;



namespace RejestrOsobZaginionych.Controllers
{
    [Authorize(Roles = "admin")]
    public class UserManagerController : Controller
    {
        private readonly UserManager<IdentityUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;

        public UserManagerController(UserManager<IdentityUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            _userManager = userManager;
            _roleManager = roleManager; 
        }

        [Route("/Manage/Users")]
        public async Task<IActionResult> Index()
        {
            var users = await _userManager.Users.ToListAsync();
            var userRolesViewModel = new List<UserRolesViewModel>();

            foreach(IdentityUser user in users)
            {
                var thisViewModel = new UserRolesViewModel();  
                thisViewModel.UserId = user.Id;
                thisViewModel.UserName = user.UserName;
                thisViewModel.Roles = await GetUserRoles(user);
                userRolesViewModel.Add(thisViewModel);

            }

            return View(userRolesViewModel);
        }

        [HttpGet]

        public async Task<IActionResult> Edit(string userID)
        {
            var user = await _userManager.FindByIdAsync(userID);

            var userRoles = await _userManager.GetRolesAsync(user);

            var model = new ApplicationUser
            {
                Id = user.Id,
                Email = user.Email,
                UserName = user.UserName,
                Roles = userRoles
            };

            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(ApplicationUser model)
        {
            var user = await _userManager.FindByIdAsync(model.Id);

            user.Email = model.Email;
            user.UserName = model.UserName;
            var result = await _userManager.UpdateAsync(user);

            return RedirectToAction(nameof(Index));
            
            
        }

        [HttpGet]
        public async Task<IActionResult> Delete(string userID)
        {
            var user = await _userManager.FindByIdAsync(userID);


            return View(user);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Delete(IdentityUser model)
        {
            var user = await _userManager.FindByIdAsync(model.Id);
            var result = _userManager.DeleteAsync(user);

            return RedirectToAction(nameof(Index));


        }

        private async Task<List<string>> GetUserRoles(IdentityUser user)
        {
            return new List<string>(await _userManager.GetRolesAsync(user));
        }

    }
}
