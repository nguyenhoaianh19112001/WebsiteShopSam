namespace SamBotique.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CTHDN")]
    public partial class CTHDN
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(15)]
        public string MaHDN { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(15)]
        public string MaSP { get; set; }

        public int? SoLuong { get; set; }

        public double? DonGia { get; set; }

        public virtual HoaDonNhap HoaDonNhap { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}
