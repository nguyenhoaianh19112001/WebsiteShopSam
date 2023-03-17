using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace SamBotique.Models
{
    [Table("HoaDon")]
    public partial class HoaDon
    {
        [Key]
        public string MaHoaDon { get; set; }

        public string TenKH { get; set; }

        public string DiaChi { get; set; }

        public string SDT { get; set; }

        public string Email { get; set; }

        public int TongTien { get; set; }

        public string NgayTaoDon { get; set; }
    }
}
