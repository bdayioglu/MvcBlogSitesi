using MvcBlogSitesi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList.Mvc;
using PagedList;

namespace MvcBlogSitesi.Controllers
{
    public class HomeController : Controller
    {
        MvcBlogDB db = new MvcBlogDB();
        // GET: Home
        public ActionResult Index(int Page = 1)
        {
            var makale = db.Makales.OrderByDescending(m => m.MakaleNo).ToPagedList(Page,5);
            return View(makale);
        }
        public ActionResult BlogAra(string Ara = null)
        {
            var aranan = db.Makales.Where(m => m.MakaleBaşlık.Contains(Ara)).ToList();
            return View(aranan.OrderByDescending(m => m.MakaleTarih));
        }
        public ActionResult SonYorumlar()
        {
            return View(db.Yorums.OrderByDescending(y => y.YorumNo).Take(5));
        }
        public ActionResult PopülerMakaleler()
        {
            return View(db.Makales.OrderByDescending(m => m.MakaleOkunma).Take(5));
        }
        public ActionResult KategoriMakale(int id)
        {
            var makaleler = db.Makales.Where(m => m.Kategori.KategoriNo == id).ToList();
            return View(makaleler);
        }
        public ActionResult MakaleDetay(int id)
        {
            var makale = db.Makales.Where(m => m.MakaleNo == id).SingleOrDefault();
            if (makale == null)
            {
                return HttpNotFound();
            }
            return View(makale);
        }
        public ActionResult KategoriPartial()
        {
            return View(db.Kategoris.ToList());
        }
        public ActionResult Hakkimizda()
        {
            return View();
        }
        public ActionResult Iletisim()
        {
            return View();
        }
        public JsonResult YorumYap(string yorum, int Makaleno)
        {
            var uyeid = Session["uyeid"];
            if (yorum == null)
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            db.Yorums.Add(new Yorum { ÜyeNo = Convert.ToInt32(uyeid), MakaleNo = Makaleno, Yorumİçerik = yorum, YorumTarih = DateTime.Now });
            db.SaveChanges();

            return Json(false, JsonRequestBehavior.AllowGet);
        }
        public ActionResult YorumSil(int id)
        {
            var uyeid = Session["uyeid"];
            var yorum = db.Yorums.Where(y => y.YorumNo == id).SingleOrDefault();
            var makale = db.Makales.Where(m => m.MakaleNo == yorum.MakaleNo).SingleOrDefault();
            if (yorum.ÜyeNo == Convert.ToInt32(uyeid))
            {
                db.Yorums.Remove(yorum);
                db.SaveChanges();
                return RedirectToAction("MakaleDetay", "Home", new { id = makale.MakaleNo });
            }
            else
            {
                return HttpNotFound();
            }
        }
        public ActionResult OkunmaArttir(int Makaleno)
        {
            var makale = db.Makales.Where(m => m.MakaleNo == Makaleno).SingleOrDefault();
            makale.MakaleOkunma += 1;
            db.SaveChanges();
            return View();
        }
    }
}