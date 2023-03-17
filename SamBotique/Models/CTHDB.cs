namespace SamBotique.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CTHDB")]
    public partial class CTHDB
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(15)]
        public string MaHDB { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(15)]
        public string MaSP { get; set; }

        public int? SoLuong { get; set; }

        public int? DonGia { get; set; }

        public virtual HoaDonBan HoaDonBan { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}
