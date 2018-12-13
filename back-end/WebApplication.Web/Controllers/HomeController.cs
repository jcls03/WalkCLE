using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using WebApplication.Web.DAL;
using WebApplication.Web.Models;

namespace WebApplication.Web.Controllers
{
    public class HomeController : Controller
    {
        private ILocationDetailDAL locationDetailDAL;

        public HomeController(ILocationDetailDAL locationDetailDAL)
        {
            this.locationDetailDAL = locationDetailDAL;
        }

        public IActionResult Index()
        {            
            return View();
        }

        [HttpPost]
        public IActionResult Map(string type)
        {
            // var locationPins = locationDetailDAL.GetAllLocations(type);

            return View();
        }

        public IActionResult Detail(string locationName)
        {
            var location = locationDetailDAL.GetLocationDetail(locationName);

            return View(location);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
