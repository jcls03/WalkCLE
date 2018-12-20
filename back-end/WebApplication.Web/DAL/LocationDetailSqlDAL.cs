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
                        locationDetail.Name = Convert.ToString(reader["name"]);
                        locationDetail.Description = Convert.ToString(reader["description"]);
                        locationDetail.Street = Convert.ToString(reader["street"]);
                        locationDetail.City = Convert.ToString(reader["city"]);
                        locationDetail.State = Convert.ToString(reader["district"]);
                        locationDetail.Zip = Convert.ToString(reader["zip"]);
                        locationDetail.Latitude = Convert.ToDouble(reader["latitude"]);
                        locationDetail.Longitude = Convert.ToDouble(reader["longitude"]);
                        locationDetail.WebLink = Convert.ToString(reader["web_link"]);
                        locationDetail.FbLink = Convert.ToString(reader["fb_link"]);
                        locationDetail.TwLink = Convert.ToString(reader["tw_link"]);
                        locationDetail.IgLink = Convert.ToString(reader["ig_link"]);
                        locationDetail.Image_Path = Convert.ToString(reader["image_path"]);

                    }
                }

            }
            catch (SqlException ex)
            {
                throw;
            }

            return locationDetail;
        }

        public IList<LocationDetail> GetAllLocations()
        {

            IList<LocationDetail> locationsOnMap = new List<LocationDetail>();

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT *  FROM locations;", conn);
                    //cmd.Parameters.AddWithValue("@xx", locationType);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        LocationDetail locations = new LocationDetail()
                        {
                            Name = Convert.ToString(reader["name"]),
                            Description = Convert.ToString(reader["description"]),
                            City = Convert.ToString(reader["city"]),
                            Street = Convert.ToString(reader["street"]),
                            State = Convert.ToString(reader["district"]),
                            Zip = Convert.ToString(reader["zip"]),
                            Latitude = Convert.ToDouble(reader["latitude"]),
                            Longitude = Convert.ToDouble(reader["longitude"]),
                            WebLink = Convert.ToString(reader["web_link"]),
                            FbLink = Convert.ToString(reader["fb_link"]),
                            TwLink = Convert.ToString(reader["tw_link"]),
                            IgLink = Convert.ToString(reader["ig_link"]),
                            Image_Path = Convert.ToString(reader["image_path"])
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

        public List<double> Latitudes(IList<LocationDetail> locationDetails)
        {
            List<double> lats = new List<double>();

            foreach (var location in locationDetails)
            {
                double lat = location.Latitude;
                lats.Add(lat);
            }           
            
            return lats;
        }

        public List<double> Longitudes(IList<LocationDetail> locationDetails)
        {
            List<double> longs = new List<double>();

            foreach (var location in locationDetails)
            {
                double longitude = location.Longitude;
                longs.Add(longitude);
            }

            return longs;
        }

        public List<string> Names(IList<LocationDetail> locationDetails)
        {
            List<string> names = new List<string>();

            foreach (var location in locationDetails)
            {
                string name = location.Name;
                names.Add(name);
            }
            return names;
        }
    }
}
