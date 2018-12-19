using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication.Web.Models;

namespace WebApplication.Web.DAL
{
    public interface ILocationDetailDAL
    {
        LocationDetail GetLocationDetail(string locationName);

        IList<LocationDetail> GetAllLocations();

        List<double> Latitudes(IList<LocationDetail> locationDetails);

        List<double> Longitudes(IList<LocationDetail> locationDetails);

        List<string> Names(IList<LocationDetail> locationDetails);
    }
}
