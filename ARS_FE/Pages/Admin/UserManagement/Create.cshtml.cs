﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using BusinessObjects.Models;
using DAO;

namespace ARS_FE.Pages.Admin.UserManagement
{
    public class CreateModel : PageModel
    {
        private readonly DAO.AirlinesReservationSystemContext _context;

        public CreateModel(DAO.AirlinesReservationSystemContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
            ViewData["RankId"] = new SelectList(_context.Ranks, "Id", "Id");
            return Page();
        }

        [BindProperty]
        public User User { get; set; } = default!;

        // For more information, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Users.Add(User);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
