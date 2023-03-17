using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SamBotique.Models;

namespace SamBotique.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        SamBotiqueDBContext db = new SamBotiqueDBContext();
        // GET: Admin/Home
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login()
        {
            return View();
        }
        public ActionResult Sign()
        {
            return View();
        }
        public JsonResult PostCheckLogin(string id)
        {
            JsonResult jr = new JsonResult();
            try
            {
                string[] str = id.Split('*');
                string tk = str[0];
                string mk = str[1];
                User us = db.Database.SqlQuery<User>(
                "select * from dbo.[User] WHERE UserName = N'" + tk + "'"
                ).FirstOrDefault();
                if (us != null)
                {
                    if(us.Password.Trim() == mk)
                    {
                        jr.Data = new
                        {
                            status = "OK"
                        };
                    }
                    else
                    {
                        jr.Data = new
                        {
                            status = "NO OK"
                        };
                    }
                }
                else
                {
                    jr.Data = new
                    {
                        status = "NO OK"
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
    }
}