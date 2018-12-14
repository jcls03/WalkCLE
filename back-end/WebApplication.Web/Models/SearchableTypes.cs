using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication.Web.Models
{
    public class SearchableTypes
    {
        public static IList<SelectListItem> VenueTypes = new List<SelectListItem>()
        {
            new SelectListItem() { Text = "Bar", Value = "bar" },

            new SelectListItem() { Text = "Restaurant", Value = "restaurant" },

            new SelectListItem() { Text = "Park", Value = "park" },

            new SelectListItem() { Text = "Landmark", Value = "landmark" },

            new SelectListItem() { Text = "Museum", Value = "museum" },
        };
    }
}
