using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SamBotique.Models
{
    public class Blob
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string Name { get; set; }

        [Required]
        public string Content { get; set; }
    }

    public class BlobDto
    {
        public string Name { get; set; }
        public string Content { get; set; }
    }
}