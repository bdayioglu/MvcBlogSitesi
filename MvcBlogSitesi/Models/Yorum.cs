namespace MvcBlogSitesi.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Yorum")]
    public partial class Yorum
    {
        [Key]
        public int YorumNo { get; set; }

        [StringLength(750)]
        public string Yorumİçerik { get; set; }

        public int? ÜyeNo { get; set; }

        public int? MakaleNo { get; set; }

        public DateTime? YorumTarih { get; set; }

        public virtual Makale Makale { get; set; }

        public virtual Üye Üye { get; set; }
    }
}
