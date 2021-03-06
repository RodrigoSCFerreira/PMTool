﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using PMTool.Models;

namespace PMTool.Controllers
{
    public class OwnersLicenseController : Controller
    {
        private readonly PmToolDbContext _context;

        public OwnersLicenseController(PmToolDbContext context)
        {
            _context = context;
        }

        // GET: OwnersLicense
        public async Task<IActionResult> Index()
        {
            var pmToolContext = _context.OwnersLicense
               .OrderBy(a => a.CompanyName);

            return View(await pmToolContext.ToListAsync());
        }

        // GET: OwnersLicense/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: OwnersLicense/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("OwnersLicenseId,CompanyName,ExpireDate,Active")] OwnersLicense ownersLicense)
        {

            try
            {
                if (ModelState.IsValid)
                {
                    _context.Add(ownersLicense);
                    await _context.SaveChangesAsync();
                    TempData["message"] = "The License has been successfully added";
                    HttpContext.Session.SetString("ownersLicenseId", ownersLicense.OwnersLicenseId.ToString());
                    return RedirectToAction("create", "person");
                }
            }
            catch (Exception e)
            {
                ModelState.AddModelError("", $"Create error:{e.GetBaseException().Message}");
            }
            Create();
            return View(ownersLicense);
        }

        // GET: OwnersLicense/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var ownersLicense = await _context.OwnersLicense.SingleOrDefaultAsync(m => m.OwnersLicenseId == id);
            if (ownersLicense == null)
            {
                return NotFound();
            }
            return View(ownersLicense);
        }

        // POST: OwnersLicense/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("OwnersLicenseId,CompanyName,ExpireDate,Active")] OwnersLicense ownersLicense)
        {
            if (id != ownersLicense.OwnersLicenseId)
            {
                ModelState.AddModelError("", "Invalid ID, please try again.");
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(ownersLicense);
                    await _context.SaveChangesAsync();
                    TempData["message"] = "The record has been successfully updated";
                    return RedirectToAction(nameof(Index));
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!OwnersLicenseExists(ownersLicense.OwnersLicenseId))
                    {
                        ModelState.AddModelError("", "The record does not exist, try again");
                    }
                    else
                    {
                        ModelState.AddModelError("", "This record has already been updated");
                    }
                }
                catch (Exception e)
                {
                    ModelState.AddModelError("", $"Error on Edit: {e.GetBaseException().Message}");
                }
                return RedirectToAction(nameof(Index));
            }
            Create();
            return View(ownersLicense);
        }

        // GET: OwnersLicense/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var ownersLicense = await _context.OwnersLicense
                .SingleOrDefaultAsync(m => m.OwnersLicenseId == id);
            if (ownersLicense == null)
            {
                return NotFound();
            }

            return View(ownersLicense);
        }

        // POST: OwnersLicense/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            try
            {
                var ownersLicense = await _context.OwnersLicense.SingleOrDefaultAsync(m => m.OwnersLicenseId == id);
                _context.OwnersLicense.Remove(ownersLicense);
                await _context.SaveChangesAsync();
                TempData["message"] = "The record has been successfully Deleted";
                return RedirectToAction(nameof(Index));
            }
            catch (Exception e)
            {
                TempData["message"] = $"Delete error: {e.GetBaseException().Message}";
            }
            return Redirect($"/ownerslicense/delete/{id}");
        }

        private bool OwnersLicenseExists(int id)
        {
            return _context.OwnersLicense.Any(e => e.OwnersLicenseId == id);
        }
    }
}
