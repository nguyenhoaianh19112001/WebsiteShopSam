using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SamBotique.Models;

namespace SamBotique.Controllers
{
    public class TrangChuController : Controller
    {
        SamBotiqueDBContext db = new SamBotiqueDBContext();       
        public ActionResult Index()
        {
            if (Session["GioHang"] == null)
            {
                List<SanPham> DSSP = new List<SanPham>();
                Session["GioHang"] = DSSP;
            }
            var sp = db.SanPhams.OrderBy(x => x.MaSP).Take(10).ToList();
      
            return View(sp);
        }

        public ActionResult Chitiet(string id)
        {
            var chitiet = db.SanPhams.FirstOrDefault(e => e.MaSP == id);
            return View(chitiet);
        }
        public ActionResult Dam()
        {
            var sp = db.SanPhams.Where(c => c.MaLSP == "MLSP01").OrderBy(x => x.MaSP).Take(30).ToList();

            return View(sp);
        }
        public ActionResult HDThanhToan()
        {
            return View();
        }
        public ActionResult MuaHang()
        {
            return View();
        }
        public ActionResult DoiTra()
        {
            return View();
        }
        public ActionResult BaoHanh()
        {
            return View();
        }
        public ActionResult GioiThieu()
        {
            return View();
        }
        public ActionResult Vay()
        {
            var sp = db.SanPhams.Where(c => c.MaLSP == "MLSP08").OrderBy(x => x.MaSP).Take(30).ToList();

            return View(sp);
        }
        public ActionResult Quan()
        {
            var sp = db.SanPhams.Where(c => c.MaLSP == "MLSP05").OrderBy(x => x.MaSP).Take(30).ToList();

            return View(sp);
        }
        public ActionResult Ao()
        {
            var sp = db.SanPhams.Where(c => c.MaLSP == "MLSP02").OrderBy(x => x.MaSP).Take(30).ToList();

            return View(sp);
        }
        public ActionResult GioHang()
        {
            return View();
        }
        public ActionResult DangNhapND()
        {
            return View();
        }
        public ActionResult DangKiND()
        {
            return View();
        }
        public ActionResult Search(string searchString)
        {
            var links = from l in db.SanPhams
                        select l; //lấy toàn bộ liên kết

            //long gia;
            //bool hasPrice = long.TryParse(searchString, out gia);
            if (!String.IsNullOrEmpty(searchString))// trong trường họp so sánh khác null 
            {//“select * from Links where LinkName like ‘Dammio’“.
                // nếu ko thấy chuỗi tìm kiếm  tìm theo tên dùng contains giá trị gần đúng và 
                // tìm theo cả tên và giá bán
                links = links.Where(s => s.TenSP.Contains(searchString) || s.DonGia.ToString() == searchString);
            }
            return View(links);
        }
        public ActionResult ThanhToan()
        {
            return View();
        }
    }
}