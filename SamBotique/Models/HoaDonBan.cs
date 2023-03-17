namespace SamBotique.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HoaDonBan")]
    public partial class HoaDonBan
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HoaDonBan()
        {
            CTHDBs = new HashSet<CTHDB>();
        }

        [Key]
        [StringLength(15)]
        public string MaHDB { get; set; }

        [StringLength(15)]
        public string MaKH { get; set; }

        [StringLength(15)]
        public string MaNV { get; set; }

        public double? ThanhTien { get; set; }

        public int? SoLuong { get; set; }

        public DateTime? NgayBan { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CTHDB> CTHDBs { get; set; }

        public virtual KhachHang KhachHang { get; set; }

        public virtual NhanVien NhanVien { get; set; }
    }
}
