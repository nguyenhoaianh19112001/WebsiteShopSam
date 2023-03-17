using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using SamBotique.Models;

namespace SamBotique.Areas.Admin.Controllers
{
    public class BlobsController : Controller
    {
        private SamBotiqueDBContext db = new SamBotiqueDBContext();

        // GET: Admin/Blobs
        public async Task<ActionResult> Index()
        {
            return View(await db.Blobs.ToListAsync());
        }

        // GET: Admin/Blobs/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Blob blob = await db.Blobs.FindAsync(id);
            if (blob == null)
            {
                return HttpNotFound();
            }
            return View(blob);
        }

        // GET: Admin/Blobs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Blobs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "Id,Name,Content")] Blob blob)
        {
            if (ModelState.IsValid)
            {
                db.Blobs.Add(blob);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(blob);
        }

        // GET: Admin/Blobs/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Blob blob = await db.Blobs.FindAsync(id);
            if (blob == null)
            {
                return HttpNotFound();
            }
            return View(blob);
        }

        // POST: Admin/Blobs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "Id,Name,Content")] Blob blob)
        {
            if (ModelState.IsValid)
            {
                db.Entry(blob).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(blob);
        }

        // GET: Admin/Blobs/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Blob blob = await db.Blobs.FindAsync(id);
            if (blob == null)
            {
                return HttpNotFound();
            }
            return View(blob);
        }

        // POST: Admin/Blobs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Blob blob = await db.Blobs.FindAsync(id);
            db.Blobs.Remove(blob);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
