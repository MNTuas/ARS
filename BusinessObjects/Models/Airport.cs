﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace BusinessObjects.Models;

public partial class Airport
{
    public string Id { get; set; }

    public string Name { get; set; }

    public string City { get; set; }

    public string Country { get; set; }

    public string Status { get; set; }

    public virtual ICollection<Route> RouteFromNavigations { get; set; } = new List<Route>();

    public virtual ICollection<Route> RouteToNavigations { get; set; } = new List<Route>();
}