﻿using System.ComponentModel.DataAnnotations;

namespace BusinessObjects.Models;

public partial class TicketClass
{
    public string Id { get; set; } = null!;

    public string FlightId { get; set; } = null!;

    public string SeatClassId { get; set; } = null!;


    [Range(0, double.MaxValue, ErrorMessage = "Price must be a positive value.")]
    public decimal Price { get; set; }


    public string Status { get; set; } = null!;

    public virtual Flight Flight { get; set; } = null!;

    public virtual SeatClass SeatClass { get; set; } = null!;

    public virtual ICollection<Ticket> Tickets { get; set; } = new List<Ticket>();
}
