using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcBlogSitesi.Models;
using System.Web.Helpers;
using System.IO;
using PagedList;
using PagedList.Mvc;
namespace MvcBlogSitesi.Controllers
{
    public class AdminMakaleController : Controller
    {
        MvcBlogDB db = new MvcBlogDB();
        // GET: AdminMakale
        public ActionResult Index(int Page=1)
        {
            var makales = db.Makales.OrderByDescending(m => m.MakaleNo).ToPagedList(Page, 10);
            return View(makales);
        }

        // GET: AdminMakale/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: AdminMakale/Create
        public ActionResult Create()
        {
            ViewBag.KategoriNo = new SelectList(db.Kategoris, "KategoriNo", "KategoriAdı");
            return View();
        }

        // POST: AdminMakale/Create
        [HttpPost]
        [ValidateInput(false)] 
        public ActionResult Create(Makale makale, string etiketler, HttpPostedFileBase Foto)
        {
            if (ModelState.IsValid)
            {
                if (Foto != null)
                {
                    WebImage img = new WebImage(Foto.InputStream);
                    FileInfo fotoinfo = new FileInfo(Foto.FileName);

                    string newfoto = Guid.NewGuid().ToString() + fotoinfo.Extension;
                    img.Resize(800, 350);
                    img.Save("~/Uploads/MakaleFoto/" + newfoto);
                    makale.MakaleFoto = "/Uploads/MakaleFoto/" + newfoto;


                }
                if (etiketler != null)
                {
                    string[] etiketdizi = etiketler.Split(',');
                    foreach (var i in etiketdizi)
                    {
                        var yenietiket = new Etiket { EtiketAdı = i };
                        db.Etikets.Add(yenietiket);
                        makale.Etikets.Add(yenietiket);
                    }
                }
                makale.MakaleOkunma = 1;
                db.Makales.Add(makale);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(makale);
        }

        // GET: AdminMakale/Edit/5
        public ActionResult Edit(int id)
        {
            var makale = db.Makales.Where(m => m.MakaleNo == id).SingleOrDefault();
            if (makale == null)
            {
                return HttpNotFound();
            }
            ViewBag.KategoriNo = new SelectList(db.Kategoris, "KategoriNo", "KategoriAdı", makale.KategoriNo);
            return View(makale);
        }

        // POST: AdminMakale/Edit/5
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(int id, HttpPostedFileBase Foto, Makale makale)
        {
            try
            {
                var makales = db.Makales.Where(m => m.MakaleNo == id).SingleOrDefault();
                if (Foto != null)
                {
                    if (System.IO.File.Exists(Server.MapPath(makales.MakaleFoto)))
                    {
                        System.IO.File.Delete(Server.MapPath(makales.MakaleFoto));
                    }
                    WebImage img = new WebImage(Foto.InputStream);
                    FileInfo fotoinfo = new FileInfo(Foto.FileName);

                    string newfoto = Guid.NewGuid().ToString() + fotoinfo.Extension;
                    img.Resize(800, 350);
                    img.Save("~/Uploads/MakaleFoto/" + newfoto);
                    makales.MakaleFoto = "/Uploads/MakaleFoto/" + newfoto;
                    makales.MakaleBaşlık = makale.MakaleBaşlık;
                    makales.Makaleİçerik = makale.Makaleİçerik;
                    makales.KategoriNo = makale.KategoriNo;

                    db.SaveChanges();
                    return RedirectToAction("Index");
                }

                return View();
            }
            catch
            {
                ViewBag.KategoriNo = new SelectList(db.Kategoris, "KategoriNo", "KategoriAdı", makale.KategoriNo);
                return View(makale);
            }
        }

        // GET: AdminMakale/Delete/5
        public ActionResult Delete(int id)
        {
            var makale = db.Makales.Where(m => m.MakaleNo == id).SingleOrDefault();
            if (makale == null)
            {
                return HttpNotFound();
            }
            return View(makale);
        }

        // POST: AdminMakale/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                var makales = db.Makales.Where(m => m.MakaleNo == id).SingleOrDefault();
                if (makales == null)
                {
                    return HttpNotFound();
                }
                if (System.IO.File.Exists(Server.MapPath(makales.MakaleFoto)))
                {
                    System.IO.File.Delete(Server.MapPath(makales.MakaleFoto));
                }
                foreach (var i in makales.Yorums.ToList())
                {
                    db.Yorums.Remove(i);
                }
                foreach (var i in makales.Etikets.ToList())
                {
                    db.Etikets.Remove(i);
                }
                db.Makales.Remove(makales);
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
