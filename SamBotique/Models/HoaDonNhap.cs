namespace SamBotique.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HoaDonNhap")]
    public partial class HoaDonNhap
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HoaDonNhap()
        {
            CTHDNs = new HashSet<CTHDN>();
        }

        [Key]
        [StringLength(15)]
        public string MaHDN { get; set; }

        [StringLength(15)]
        public string MaNCC { get; set; }

        [StringLength(15)]
        public string MaNV { get; set; }

        public double? ThanhTien { get; set; }

        public DateTime? NgayNhap { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CTHDN> CTHDNs { get; set; }

        public virtual NhaCungCap NhaCungCap { get; set; }

        public virtual NhanVien NhanVien { get; set; }
    }
}
