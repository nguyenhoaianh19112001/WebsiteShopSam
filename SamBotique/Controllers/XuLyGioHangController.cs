using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SamBotique.Models;

namespace SamBotique.Controllers
{
    public class XuLyGioHangController : Controller
    {
        SamBotiqueDBContext db = new SamBotiqueDBContext();


        [Route("PostAddToCard")]
        public JsonResult PostAddToCard(string id)
        {
            if (Session["GioHang"] == null)
            {
                Session["GioHang"] = new List<SanPham>();
            }
            JsonResult jr = new JsonResult();
            try
            {
                SanPham sp = db.Database.SqlQuery<SanPham>(
                "select * from SanPham WHERE MaSP = N'"+id+"'"
                ).FirstOrDefault();
                List<SanPham> DSSP = (List<SanPham>)Session["GioHang"];
                bool ckeck = false;
                for (int i = 0; i < DSSP.Count; i++)
                {
                    if (DSSP[i].MaSP.Trim() == id.Trim())
                    {
                        ckeck = true;
                        DSSP[i].SoLuong++;
                        jr.Data = new
                        {
                            status = "SL",
                            SL = DSSP[i].SoLuong,
                            DSSP = DSSP
                        };
                        break;
                    }
                }
                if (ckeck == false)
                {
                    sp.SoLuong = 1;
                    DSSP.Add(sp);
                    jr.Data = new
                    {
                        status = "OK",
                        DSSP = DSSP
                    };
                }
                Session["GioHang"] = DSSP;
            }
            catch
            {
                jr.Data = new
                {
                    status = "F"
                };
            }
            return Json(jr, JsonRequestBehavior.AllowGet);
        }
        public JsonResult PostaddSP(string id)
        {
            JsonResult jr = new JsonResult();
            try
            {
                if (Session["GioHang"] == null)
                {
                    jr.Data = new
                    {
                        status = "NULL"
                    };
                }
                else
                {
                    List<SanPham> DSSP = (List<SanPham>)Session["GioHang"];
                    for (int i = 0; i < DSSP.Count; i++)
                    {
                        if (DSSP[i].MaSP.Trim() == id.Trim())
                        {
                            DSSP[i].SoLuong++;
                            break;
                        }
                    }
                    jr.Data = new
                    {
                        status = "OK"
                    };
                }
            }
            catch
            {
                jr.Data = new
                {
                    status = "F"
                };
            }
            return Json(jr, JsonRequestBehavior.AllowGet);
        }
        public JsonResult PostdropSP(string id)
        {
            JsonResult jr = new JsonResult();
            try
            {
                if (Session["GioHang"] == null)
                {
                    jr.Data = new
                    {
                        status = "NULL"
                    };
                }
                else
                {
                    List<SanPham> DSSP = (List<SanPham>)Session["GioHang"];
                    for (int i = 0; i < DSSP.Count; i++)
                    {
                        if (DSSP[i].MaSP.Trim() == id.Trim())
                        {
                            DSSP[i].SoLuong--;
                            if (DSSP[i].SoLuong == 0)
                            {
                                DSSP.Remove(DSSP[i]);

                            }
                            break;
                        }
                    }
                    jr.Data = new
                    {
                        status = "OK"
                    };
                }
            }
            catch
            {
                jr.Data = new
                {
                    status = "F"
                };
            }
            return Json(jr, JsonRequestBehavior.AllowGet);
        }
        public JsonResult PostdeleteSP(string id)
        {
            JsonResult jr = new JsonResult();
            try
            {
                if (Session["GioHang"] == null)
                {
                    jr.Data = new
                    {
                        status = "NULL"
                    };
                }
                else
                {
                    List<SanPham> DSSP = (List<SanPham>)Session["GioHang"];
                    for (int i = 0; i < DSSP.Count; i++)
                    {
                        if (DSSP[i].MaSP.Trim() == id.Trim())
                        {
                            DSSP.Remove(DSSP[i]);
                            break;
                        }
                    }
                    jr.Data = new
                    {
                        status = "OK"
                    };
                }
            }
            catch
            {
                jr.Data = new
                {
                    status = "F"
                };
            }
            return Json(jr, JsonRequestBehavior.AllowGet);
        }
        public JsonResult PostdeleteHoaDon(string id)
        {
            JsonResult jr = new JsonResult();
            try
            {
                db.Database.ExecuteSqlCommand(
                            "DELETE FROM HoaDon WHERE MaHoaDon = N'"+id+"'"+
                            "DELETE FROM SanPhamDatHang WHERE MaHoaDon = N'" + id + "'"
                            );
                jr.Data = new
                {
                    status = "OK"
                };
            }
            catch
            {
                jr.Data = new
                {
                    status = "F"
                };
            }
            return Json(jr, JsonRequestBehavior.AllowGet);
        }
        public JsonResult PostAddGioHang(string id)
        {
            JsonResult jr = new JsonResult();
            try
            {
                if (Session["GioHang"] == null)
                {
                    jr.Data = new
                    {
                        status = "NULL"
                    };
                }
                else
                {
                    List<SanPham> DSSP = (List<SanPham>)Session["GioHang"];
                    if (DSSP.Count == 0)
                    {
                        jr.Data = new
                        {
                            status = "NULL"
                        };
                    }
                    else
                    {
                        string[] str = id.Split('*');
                        HoaDon HD = new HoaDon();
                        HD.TenKH = str[0];
                        HD.SDT = str[1];
                        HD.DiaChi = str[3];
                        HD.Email = str[2];
                        HD.NgayTaoDon = DateTime.Now.ToString();
                        HD.MaHoaDon = Guid.NewGuid().ToString();//tạo mã k trùng lại nhau

                        for (int i = 0; i < DSSP.Count; i++)
                        {
                            HD.TongTien += int.Parse(DSSP[i].DonGia + "") * int.Parse(DSSP[i].SoLuong + "");
                            SanPhamDatHang sp = new SanPhamDatHang();
                            sp.MaHoaDon = HD.MaHoaDon;
                            sp.MaSP = DSSP[i].MaSP;
                            sp.TenSP = DSSP[i].TenSP;
                            sp.Hinhanh = DSSP[i].Anh;
                            sp.SoLuong = int.Parse(DSSP[i].SoLuong+"");
                            sp.Gia = int.Parse(DSSP[i].DonGia + "");

                            db.Database.ExecuteSqlCommand(
                            "insert into SanPhamDatHang(MaHoaDon,MaSP,TenSP,Hinhanh,SoLuong,Gia) values(@mahd,@masp,@tensp,@hinhanh,@soluong,@gia)",
                            new SqlParameter("@mahd", HD.MaHoaDon),
                            new SqlParameter("@masp", DSSP[i].MaSP),
                            new SqlParameter("@tensp", DSSP[i].TenSP),
                            new SqlParameter("@hinhanh", DSSP[i].Anh),
                            new SqlParameter("@soluong", DSSP[i].SoLuong),
                            new SqlParameter("@gia", DSSP[i].DonGia)
                            );
                        }
                        db.Database.ExecuteSqlCommand(
                            "insert into HoaDon(MaHoaDon,TenKH,DiaChi,SDT,Email,TongTien,NgayTaoDon) values(@mahd,@tenkh,@diachi,@sdt,@email,@tongtien,@ngaytaodon)",
                            new SqlParameter("@mahd", HD.MaHoaDon),
                            new SqlParameter("@tenkh", HD.TenKH),
                            new SqlParameter("@diachi", HD.DiaChi),
                            new SqlParameter("@sdt", HD.SDT),
                            new SqlParameter("@email", HD.Email),
                            new SqlParameter("@tongtien", HD.TongTien),
                            new SqlParameter("@ngaytaodon", HD.NgayTaoDon)
                            );
                        jr.Data = new
                        {
                            status = "OK"
                        };
                        Session["GioHang"] = new List<SanPham>();
                    }
                }
            }
            catch
            {
                jr.Data = new
                {
                    status = "F"
                };
            }
            return Json(jr, JsonRequestBehavior.AllowGet);
        }
    }
}