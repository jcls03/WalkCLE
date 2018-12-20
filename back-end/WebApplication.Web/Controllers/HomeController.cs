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

        [HttpGet]
        public IActionResult Index()
        {
            var location = new LocationDetail();

            return View(location);
        }

        [HttpGet]
        public IActionResult Map(string origin, string type)
        {
            var places = locationDetailDAL.GetAllLocations();
            var lats = locationDetailDAL.Latitudes(places);
            var longs = locationDetailDAL.Longitudes(places);
            var names = locationDetailDAL.Names(places);
            var location = new MapStuff { Origin = origin, Type = type, Latitudes = lats, Longitudes = longs, Names = names };

            return View(location);

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
         

        public IActionResult Directions()
        {
            return View();
        }

        public IActionResult DetailDirections()
        {
            // currently hard coded for destination            
            // Needs Destination lat/long passed into lines 110 an 178 
            // to be dynamic

            return View();
        }

        public IActionResult BucketList()
        {
            var places = locationDetailDAL.GetAllLocations();
            var lats = locationDetailDAL.Latitudes(places);
            var longs = locationDetailDAL.Longitudes(places);
            var names = locationDetailDAL.Names(places);
            var location = new MapStuff {  Latitudes = lats, Longitudes = longs, Names = names };

            return View(location);
        }
    }
}
