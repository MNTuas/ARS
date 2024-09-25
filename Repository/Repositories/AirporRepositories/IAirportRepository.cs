﻿using BusinessObjects.Models;
using Repository.Repositories.GenericRepositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository.Repositories.AirporRepositories
{
    public interface IAirportRepository : IGenericRepository<Airport>
    {
        Task<List<Airport>> GetAllAirport();
    }
}
