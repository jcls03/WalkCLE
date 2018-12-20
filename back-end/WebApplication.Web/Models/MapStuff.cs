using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication.Web.Models
{
    public class MapStuff
    {
        /// <summary>
        /// User Entered Start Location
        /// </summary>
        public string Origin { get; set; }

        /// <summary>
        /// User Entered Type to Search
        /// </summary>
        public string Type { get; set; }

        /// <summary>
        /// Bucket List Latitudes
        /// </summary>
        public List<double> Latitudes { get; set; }

        /// <summary>
        /// Bucket List Longitudes
        /// </summary>
        public List<double> Longitudes { get; set; }

        /// <summary>
        /// Bucket list Names
        /// </summary>
        public List<string> Names { get; set; }
    }
}
