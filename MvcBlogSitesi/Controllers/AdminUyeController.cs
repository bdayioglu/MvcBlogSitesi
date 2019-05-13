using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using MvcBlogSitesi.Models;

namespace MvcBlogSitesi.Controllers
{
    public class AdminUyeController : Controller
    {
        private MvcBlogDB db = new MvcBlogDB();

        // GET: AdminUye
        public ActionResult Index()
        {
            var üye = db.Üye.Include(ü => ü.Yetki);
            return View(üye.ToList());
        }

        // GET: AdminUye/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Üye üye = db.Üye.Find(id);
            if (üye == null)
            {
                return HttpNotFound();
            }
            return View(üye);
        }

        // GET: AdminUye/Create
        public ActionResult Create()
        {
            ViewBag.YetkiNo = new SelectList(db.Yetkis, "YetkiNo", "YetkiAdı");
            return View();
        }

        // POST: AdminUye/Create
        // Aşırı gönderim saldırılarından korunmak için, lütfen bağlamak istediğiniz belirli özellikleri etkinleştirin, 
        // daha fazla bilgi için https://go.microsoft.com/fwlink/?LinkId=317598 sayfasına bakın.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ÜyeNo,KullanıcıAdı,Email,Şifre,AdSoyad,ÜyeFoto,YetkiNo")] Üye üye)
        {
            if (ModelState.IsValid)
            {
                db.Üye.Add(üye);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.YetkiNo = new SelectList(db.Yetkis, "YetkiNo", "YetkiAdı", üye.YetkiNo);
            return View(üye);
        }

        // GET: AdminUye/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Üye üye = db.Üye.Find(id);
            if (üye == null)
            {
                return HttpNotFound();
            }
            ViewBag.YetkiNo = new SelectList(db.Yetkis, "YetkiNo", "YetkiAdı", üye.YetkiNo);
            return View(üye);
        }

        // POST: AdminUye/Edit/5
        // Aşırı gönderim saldırılarından korunmak için, lütfen bağlamak istediğiniz belirli özellikleri etkinleştirin, 
        // daha fazla bilgi için https://go.microsoft.com/fwlink/?LinkId=317598 sayfasına bakın.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ÜyeNo,KullanıcıAdı,Email,Şifre,AdSoyad,ÜyeFoto,YetkiNo")] Üye üye)
        {
            if (ModelState.IsValid)
            {
                db.Entry(üye).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.YetkiNo = new SelectList(db.Yetkis, "YetkiNo", "YetkiAdı", üye.YetkiNo);
            return View(üye);
        }

        // GET: AdminUye/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Üye üye = db.Üye.Find(id);
            if (üye == null)
            {
                return HttpNotFound();
            }
            return View(üye);
        }

        // POST: AdminUye/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Üye üye = db.Üye.Find(id);
            db.Üye.Remove(üye);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
