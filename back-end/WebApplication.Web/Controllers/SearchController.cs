using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using WebApplication.Web.DAL;
using WebApplication.Web.Models;

namespace WebApplication.Web.Controllers
{
    public class SearchController : Controller
    {
        private ILocationDetailDAL locationDetailDAL;

        public SearchController(ILocationDetailDAL locationDetailDAL)
        {
            this.locationDetailDAL = locationDetailDAL;
        }

        [HttpGet]
        public IActionResult Index()
        {
            var lcoation = new LocationDetail();

            return View(lcoation);
        }

        [HttpGet]
        public IActionResult Map(string type)
        {
            var location = new LocationDetail { Type = type };

            return View(location);
        }
    }
}