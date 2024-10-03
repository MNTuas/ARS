﻿using System;
using System.Collections.Generic;

namespace BusinessObjects.Models;

public partial class Passenger
{
    public string Id { get; set; } = null!;

    public string FirstName { get; set; } = null!;

    public string LastName { get; set; } = null!;

    public string Gender { get; set; } = null!;

    public DateOnly Dob { get; set; }

    public string Country { get; set; } = null!;

    public string Type { get; set; } = null!;

    public string? UserId { get; set; }

    public virtual ICollection<PassengerOfBooking> PassengerOfBookings { get; set; } = new List<PassengerOfBooking>();

    public virtual User? User { get; set; }
}
