using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace SamBotique.Models
{
    [Table("SanPhamDatHang")]
    public partial class SanPhamDatHang
    {
        [Key]
        public int Id { get; set; }

        public string MaHoaDon { get; set; }

        public string MaSP { get; set; }

        public string TenSP { get; set; }

        public string Hinhanh { get; set; }

        public int SoLuong { get; set; }

        public int Gia { get; set; }
    }
}
