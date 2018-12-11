using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using WebApplication.Web.DAL;

namespace WebApplication.Web.Controllers
{
    public class LocDetailController : Controller
    {
        private ILocationDetailDAL locationDetailDAL;
        public LocDetailController(ILocationDetailDAL locationDetailDAL)
        {
            this.locationDetailDAL = locationDetailDAL;
        }

        public IActionResult Index(string locationName)
        {
            var location = locationDetailDAL.GetLocationDetail(locationName);

            return View(location);
        }
    }
}