using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SamBotique.Models
{
    public class CartItem
    {
        public string idsp { get; set; }
        public string hinhanh { get; set; }
        public string tensp { get; set; }
        public int? dongia { get; set; }
        public int? soluong { get; set; }
        public int? thanhtien
        {
            get
            {
                return soluong * dongia;
            }
        }
    }
}