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
    }
}
