using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SamBotique.Models;

namespace SamBotique.Controllers
{
    public class CartController : Controller
    {
        // GET: Cart
        SamBotiqueDBContext db = new SamBotiqueDBContext();
        public ActionResult Index()
        {
            if (Session["GioHang"] == null)
            {
                Session["GioHang"] = new List<SanPham>();
            }
            List<SanPham> DSSP = (List<SanPham>)Session["GioHang"];
            return View(DSSP);
        }
        public ActionResult ThanhToan()
        {
            if (Session["GioHang"] == null)
            {
                Session["GioHang"] = new List<SanPham>();
            }
            List<SanPham> DSSP = (List<SanPham>)Session["GioHang"];
            return View(DSSP);
        }

        //public RedirectToRouteResult ThemVaoGio(string IDSP, int sl = 1)
        //{
        //    //if (Session["giohang"] == null) // Nếu giỏ hàng chưa được khởi tạo
        //    //{
        //    //    Session["giohang"] = new List<CartItem>();  // Khởi tạo Session["giohang"] là 1 List<CartItem>
        //    //}

        //    //List<CartItem> giohang = Session["giohang"] as List<CartItem>;  // Gán qua biến giohang dễ code

        //    //// Kiểm tra xem sản phẩm khách đang chọn đã có trong giỏ hàng chưa

        //    //if (giohang.FirstOrDefault(m => m.idsp == IDSP) == null) // ko co sp nay trong gio hang
        //    //{
        //    //    SanPham sp = db.SanPhams.Find(IDSP);  // tim sp theo sanPhamID

        //    //    CartItem newItem = new CartItem()
        //    //    {
        //    //        idsp = IDSP,
        //    //        tensp = sp.TenSP,
        //    //        soluong = sl,
        //    //        hinhanh = sp.Anh,
        //    //        dongia = sp.DonGia,

        //    //    };  // Tạo ra 1 CartItem mới

        //    //    giohang.Add(newItem);  // Thêm CartItem vào giỏ 
        //    //}
        //    //else
        //    //{
        //    //    // Nếu sản phẩm khách chọn đã có trong giỏ hàng thì không thêm vào giỏ nữa mà tăng số lượng lên.
        //    //    CartItem cardItem = giohang.FirstOrDefault(m => m.idsp == IDSP);
        //    //    cardItem.soluong += sl;
        //    //}

        //    // Action này sẽ chuyển hướng về trang chủ khi khách hàng đặt vào giỏ thành công. Bạn có thể chuyển về chính trang khách hàng vừa đứng bằng lệnh return Redirect(Request.UrlReferrer.ToString()); nếu muốn.
        //    //return RedirectToAction("TrangChu", "Quan", new { id = IDSP });
        //    return RedirectToAction("Index", "TrangChu", new { id = IDSP });
        //}
        //public RedirectToRouteResult XoaKhoiGio(string IDSP)
        //{
        //    //List<CartItem> giohang = Session["giohang"] as List<CartItem>;
        //    //CartItem itemXoa = giohang.FirstOrDefault(m => m.idsp == IDSP);
        //    //if (itemXoa != null)
        //    //{
        //    //    giohang.Remove(itemXoa);
        //    //}
        //    return RedirectToAction("Index");
        //}
        //[HttpPost]

        //public ActionResult Incart(string id)
        //{
        //    //SanPham sp = db.SanPhams.Find(id);
        //    //List<CartItem> giohang = Session["giohang"] as List<CartItem>;
        //    //CartItem itemin = giohang.FirstOrDefault(m => m.idsp == id);
        //    //if (itemin != null)
        //    //{
        //    //    if (sp.SoLuong > itemin.soluong)
        //    //    {
        //    //        itemin.soluong++;
        //    //    }
        //    //    else return Json(new { success = false, ms = "Vượt quá số lượng trong kho!" }, JsonRequestBehavior.AllowGet);

        //    //}

        //    return Json(new { success = true }, JsonRequestBehavior.AllowGet);
        //}

        //[HttpPost]//Các function mà dữ liệu trả về sau khi form hoặc ajax gọi phương thức Post.

        //public ActionResult Outcart(string id)
        //{
        //    //List<CartItem> giohang = Session["giohang"] as List<CartItem>;
        //    //CartItem itemout = giohang.FirstOrDefault(m => m.idsp == id);
        //    //if (itemout != null)
        //    //{
        //    //    if (itemout.soluong > 1)
        //    //    {
        //    //        itemout.soluong--;
        //    //        return Json(new { success = true }, JsonRequestBehavior.AllowGet);
        //    //    }
        //    //}

        //    return Json(new { success = false }, JsonRequestBehavior.AllowGet);
        //}
    }
}

