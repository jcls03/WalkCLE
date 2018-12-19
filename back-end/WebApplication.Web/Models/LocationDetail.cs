using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication.Web.Models
{
    public class LocationDetail
    {
        /// <summary>
        /// The location name
        /// </summary>
        public string Name { get; set;  }

        /// <summary>
        /// long text description of the location
        /// </summary>
        public string Description { get; set; }

        /// <summary>
        /// Street number and name
        /// </summary>
        public string Street { get; set; }

        /// <summary>
        /// City the location is in
        /// </summary>
        public string City { get; set; }

        /// <summary>
        /// two char stare abbreviation
        /// </summary>
        public string State { get; set; }

        /// <summary>
        /// location zip code
        /// </summary>
        public string Zip { get; set; }

        /// <summary>
        /// Type of Location
        /// </summary>
        public string Type { get; set; }

        /// <summary>
        /// User enterd start location
        /// </summary>
        public string Origin { get; set; }

        /// <summary>
        /// location Website URL
        /// </summary>
        public string WebLink { get; set; }

        /// <summary>
        /// location FaceBook URL
        /// </summary>
        public string FbLink { get; set; }

        /// <summary>
        /// Location Twitter URL
        /// </summary>
        public string TwLink { get; set; }

        /// <summary>
        /// Location Instagram URL
        /// </summary>
        public string IgLink { get; set; }

        [Required]
        [DisplayName("-- Select an activity --")]
        public static IList<SelectListItem> TypeList = new List<SelectListItem>()
        {
            

            new SelectListItem() { Text = "Museums", Value = "museum" },

            new SelectListItem() { Text = "Theaters", Value = "theater" },

            new SelectListItem() { Text = "Sports Stadiums & Venues", Value = "stadium" },

            new SelectListItem() { Text = "Music Venues & Performances", Value = "concert_hall" },

            new SelectListItem() { Text = "Parks & Outdoor Recreation", Value = "park" },

            new SelectListItem() { Text = "Landmarks & Historical Sites", Value = "landmark" },
        };
    }
}
