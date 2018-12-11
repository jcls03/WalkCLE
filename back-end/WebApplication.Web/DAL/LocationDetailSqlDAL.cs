using System;
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
                    SqlCommand cmd = new SqlCommand("SELECT name, street, city, state FROM locations WHERE type = @xx;", conn);
                    cmd.Parameters.AddWithValue("@xx", locationType);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        LocationDetail locations = new LocationDetail()
                        {
                            Name = Convert.ToString(reader["name"]),
                            City = Convert.ToString(reader["city"]),
                            State = Convert.ToString(reader["district"]),
                            Zip = Convert.ToString(reader["zip"]),
                            Type = Convert.ToString(reader["type"])
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
