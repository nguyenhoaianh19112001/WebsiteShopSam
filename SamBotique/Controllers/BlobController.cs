using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using SamBotique.Models;
using System.Web.Mvc;
using System.Drawing;
using System.IO;
using System.Text.RegularExpressions;

namespace SamBotique.Controllers
{
    public class BlobController : Controller
    {
        private readonly SamBotiqueDBContext _context = new SamBotiqueDBContext();

       
        [HttpGet]
        public ActionResult GetById(int id)
        {
            var blob = _context.Blobs.FirstOrDefault(b => b.Id == id);
            if (blob != null)
            {
                byte[] imageBytes = Convert.FromBase64String(Regex.Replace(blob.Content, "data:*;base64,", ""));
                MemoryStream ms = new MemoryStream(imageBytes, 0, imageBytes.Length);
                return File(imageBytes, "image/jpge");
            }
            else
            {
                return new HttpNotFoundResult();
            }
        }

        [HttpGet]
        public ActionResult GetByName(string id)
        {
            var blob = _context.Blobs.FirstOrDefault(b => b.Name == id);
            if (blob != null)
            {
                byte[] imageBytes = Convert.FromBase64String(Regex.Replace(blob.Content, "data:.+;base64,", ""));
                MemoryStream ms = new MemoryStream(imageBytes, 0, imageBytes.Length);
                return File(imageBytes, "image/jpge");
            }
            else
            {
                return new HttpNotFoundResult();
            }
        }


        [Route("upload")]
        [HttpPost]
        public bool Upload(BlobDto blob)
        {
            var blobObj = new Blob { Content = blob.Content, Name = blob.Name };
            _context.Blobs.Add(blobObj);
            return _context.SaveChanges() > 0;
        }
    }
}
