﻿using BusinessObjects.Models;
using BusinessObjects.RequestModels;
using FFilms.Application.Shared.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Service.Services.AirportService
{
    public interface IAirportService
    {
        Task<List<Airport>> GetAllAirport();
        Task<Result<Airport>> AddAirport(CreateAirportRequest createAirportRequest);
    }
}
