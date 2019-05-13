using MvcBlogSitesi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcBlogSitesi.Controllers
{
    public class AdminController : Controller
    {
        MvcBlogDB db = new MvcBlogDB();
        // GET: Admin
        public ActionResult Index()
        {
            ViewBag.MakaleSayisi = db.Makales.Count();
            ViewBag.YorumSayisi = db.Yorums.Count();
            ViewBag.KategoriSayisi = db.Kategoris.Count();
            ViewBag.UyeSayisi = db.Üye.Count();
            return View();
        }
    }
}