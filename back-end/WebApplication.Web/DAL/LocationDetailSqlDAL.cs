﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data.SqlClient;
using WebApplication.Web.Models;

namespace WebApplication.Web.DAL
{
    public class LocationDetailSqlDAL : ILocationDetailDAL
    {
        private readonly string connectionString;

        public LocationDetailSqlDAL(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public LocationDetail GetLocationDetail(string locationName)
        {
            LocationDetail locationDetail = new LocationDetail();

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM locations WHERE name = @name;", conn);
                    cmd.Parameters.AddWithValue("@name", locationName);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        locationDetail.Name = Convert.ToString(reader["name"]);
                        locationDetail.Description = Convert.ToString(reader["description"]);
                        locationDetail.Street = Convert.ToString(reader["street"]);
                        locationDetail.City = Convert.ToString(reader["city"]);
                        locationDetail.State = Convert.ToString(reader["district"]);
                        locationDetail.Zip = Convert.ToString(reader["zip"]);
                        locationDetail.WebLink = Convert.ToString(reader["web_link"]);
                        locationDetail.FbLink = Convert.ToString(reader["fb_link"]);
                        locationDetail.TwLink = Convert.ToString(reader["tw_link"]);
                        locationDetail.IgLink = Convert.ToString(reader["ig_link"]);
                    }
                }

            }
            catch (SqlException ex)
            {
                throw;
            }

            return locationDetail;
        }

        public IList<LocationDetail> GetAllLocations(string locationType)
        {

            IList<LocationDetail> locationsOnMap = new List<LocationDetail>();

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT name, street, city, district, zip, [type] FROM locations INNER JOIN location_venue_types ON location_venue_types.location_id = locations.id INNER JOIN venue_types ON venue_types.id = location_venue_types.venue_type_id;", conn);
                    //cmd.Parameters.AddWithValue("@xx", locationType);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        LocationDetail locations = new LocationDetail()
                        {
                            Name = Convert.ToString(reader["name"]),
                            City = Convert.ToString(reader["city"]),
                            Street = Convert.ToString(reader["street"]),
                            State = Convert.ToString(reader["district"]),
                            // Type = Convert.ToString(reader["type"]),
                            Zip = Convert.ToString(reader["zip"]),
                        };
                        locationsOnMap.Add(locations);
                    }
                }
            }
            catch (SqlException ex)
            {
                throw;
            }

            return locationsOnMap;
        }


    }
}
