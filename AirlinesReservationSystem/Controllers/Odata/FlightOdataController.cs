﻿using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.OData.Query;
using Microsoft.AspNetCore.OData.Routing.Controllers;
using Service.Services.FlightServices;

namespace AirlinesReservationSystem.Controllers.Odata
{
    [Route("odata/flights")]
    [ApiController]
    public class FlightOdataController : ODataController
    {
        private readonly IFlightService _flightService;

        public FlightOdataController(IFlightService flightService)
        {
            _flightService = flightService;
        }

        [HttpGet]
        [Authorize(Roles = "Staff")]
        [EnableQuery]
        public async Task<IActionResult> GetAllFlightsDetails([FromQuery] string? flightNumber)
        {
            var result = await _flightService.GetAllFlights(flightNumber);
            return Ok(result);
        }
    }
}
