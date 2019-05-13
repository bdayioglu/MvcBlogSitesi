namespace MvcBlogSitesi.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Makale")]
    public partial class Makale
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Makale()
        {
            Yorums = new HashSet<Yorum>();
            Etikets = new HashSet<Etiket>();
        }

        [Key]
        public int MakaleNo { get; set; }

        [StringLength(500)]
        public string MakaleBaşlık { get; set; }

        public string Makaleİçerik { get; set; }

        [StringLength(500)]
        public string MakaleFoto { get; set; }

        public DateTime? MakaleTarih { get; set; }

        public int? KategoriNo { get; set; }

        public int? ÜyeNo { get; set; }

        public int? MakaleOkunma { get; set; }

        public virtual Kategori Kategori { get; set; }

        public virtual Üye Üye { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Yorum> Yorums { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Etiket> Etikets { get; set; }
    }
}
