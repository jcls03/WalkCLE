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
                        locationDetail.District = Convert.ToString(reader["district"]);
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
    }
}
