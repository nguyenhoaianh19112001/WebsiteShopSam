using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SamBotique.Models;

namespace SamBotique.Areas.Admin.Controllers
{
    public class DonHangController : Controller
    {
        SamBotiqueDBContext db = new SamBotiqueDBContext();
        // GET: Admin/DonHang
        public ActionResult Index()
        {
            ViewBag.HoaDon = db.HoaDons.ToList();
            ViewBag.ChiTietHoaDon = db.SanPhamDatHangs.ToList();
            return View();
        }
    }
}