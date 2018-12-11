﻿using System;
using System.Collections.Generic;
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
        public int Zip { get; set; }
    }
}