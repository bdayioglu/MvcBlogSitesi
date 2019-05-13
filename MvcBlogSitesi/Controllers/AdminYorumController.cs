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
    public class AdminYorumController : Controller
    {
        private MvcBlogDB db = new MvcBlogDB();

        // GET: AdminYorum
        public ActionResult Index()
        {
            var yorums = db.Yorums.Include(y => y.Makale).Include(y => y.Üye);
            return View(yorums.ToList());
        }

        // GET: AdminYorum/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Yorum yorum = db.Yorums.Find(id);
            if (yorum == null)
            {
                return HttpNotFound();
            }
            return View(yorum);
        }

        // GET: AdminYorum/Create
        public ActionResult Create()
        {
            ViewBag.MakaleNo = new SelectList(db.Makales, "MakaleNo", "MakaleBaşlık");
            ViewBag.ÜyeNo = new SelectList(db.Üye, "ÜyeNo", "KullanıcıAdı");
            return View();
        }

        // POST: AdminYorum/Create
        // Aşırı gönderim saldırılarından korunmak için, lütfen bağlamak istediğiniz belirli özellikleri etkinleştirin, 
        // daha fazla bilgi için https://go.microsoft.com/fwlink/?LinkId=317598 sayfasına bakın.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "YorumNo,Yorumİçerik,ÜyeNo,MakaleNo,YorumTarih")] Yorum yorum)
        {
            if (ModelState.IsValid)
            {
                db.Yorums.Add(yorum);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MakaleNo = new SelectList(db.Makales, "MakaleNo", "MakaleBaşlık", yorum.MakaleNo);
            ViewBag.ÜyeNo = new SelectList(db.Üye, "ÜyeNo", "KullanıcıAdı", yorum.ÜyeNo);
            return View(yorum);
        }

        // GET: AdminYorum/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Yorum yorum = db.Yorums.Find(id);
            if (yorum == null)
            {
                return HttpNotFound();
            }
            ViewBag.MakaleNo = new SelectList(db.Makales, "MakaleNo", "MakaleBaşlık", yorum.MakaleNo);
            ViewBag.ÜyeNo = new SelectList(db.Üye, "ÜyeNo", "KullanıcıAdı", yorum.ÜyeNo);
            return View(yorum);
        }

        // POST: AdminYorum/Edit/5
        // Aşırı gönderim saldırılarından korunmak için, lütfen bağlamak istediğiniz belirli özellikleri etkinleştirin, 
        // daha fazla bilgi için https://go.microsoft.com/fwlink/?LinkId=317598 sayfasına bakın.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "YorumNo,Yorumİçerik,ÜyeNo,MakaleNo,YorumTarih")] Yorum yorum)
        {
            if (ModelState.IsValid)
            {
                db.Entry(yorum).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MakaleNo = new SelectList(db.Makales, "MakaleNo", "MakaleBaşlık", yorum.MakaleNo);
            ViewBag.ÜyeNo = new SelectList(db.Üye, "ÜyeNo", "KullanıcıAdı", yorum.ÜyeNo);
            return View(yorum);
        }

        // GET: AdminYorum/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Yorum yorum = db.Yorums.Find(id);
            if (yorum == null)
            {
                return HttpNotFound();
            }
            return View(yorum);
        }

        // POST: AdminYorum/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Yorum yorum = db.Yorums.Find(id);
            db.Yorums.Remove(yorum);
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
