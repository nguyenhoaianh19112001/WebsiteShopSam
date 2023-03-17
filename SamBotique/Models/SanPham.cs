    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

namespace SamBotique.Models
{
    [Table("SanPham")]
    public partial class SanPham
    {
        public SanPham()
        {
            CTHDBs = new HashSet<CTHDB>();
            CTHDNs = new HashSet<CTHDN>();
        }

        [Key]
        public string MaSP { get; set; }

        public string TenSP { get; set; }

        public string MaLSP { get; set; }

        public int? SoLuong { get; set; }

        public string Anh { get; set; }

        public int? DonGia { get; set; }

        public string MaNCC { get; set; }

        [StringLength(3999)]
        public string MoTaSP { get; set; }

        public virtual ICollection<CTHDB> CTHDBs { get; set; }

        public virtual ICollection<CTHDN> CTHDNs { get; set; }

        public virtual LoaiSP LoaiSP { get; set; }
    }
}
