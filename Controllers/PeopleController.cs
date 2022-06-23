using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using RejestrOsobZaginionych.Models;

namespace RejestrOsobZaginionych.Controllers
{
    public class PeopleController : Controller
    {
        private PersonManager _manager;

        public PeopleController()
        {
            this._manager = new PersonManager();
        }

        [HttpGet]
        [Route("")]
        [Route("list/{sex?}")]
        public ActionResult Index(string sex)
        { 

            var people = this._manager.GetPeople();

            if (!String.IsNullOrEmpty(sex))
            {
                people = this._manager.GetPeopleBySex(sex);
            }

            return View(people);
        }

        // GET: PeopleController/Details/5
        public ActionResult Details(int id)
        {
            var person = this._manager.GetPerson(id);
            return View(person);
        }

        [Authorize(Roles = "admin, user")]
        // GET: PeopleController/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: PeopleController/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Person person)
        {
            try
            {
                _manager.AddPerson(person);

                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
        [Authorize(Roles = "admin")]
        // GET: PeopleController/Edit/5
        public ActionResult Edit(int id)
        {
            var person = this._manager.GetPerson(id);
            return View(person);
        }  

        // POST: PeopleController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Person person)
        {
            try
            {
                _manager.UpdatePerson(person);

                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: PeopleController/Delete/5
        [Authorize(Roles = "admin")]
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: PeopleController/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
