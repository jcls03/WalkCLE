﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace WebApplication.Web.Controllers
{
    public class DirectionsController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult GetDirections()
        {
            return View();
        }
    }
}