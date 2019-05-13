using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcBlogSitesi.Models;
using System.Web.Helpers;
using System.IO;

namespace MvcBlogSitesi.Controllers
{
    public class UyeController : Controller
    {
        MvcBlogDB db = new MvcBlogDB();
        // GET: Uye
        public ActionResult Index(int id)
        {
            var uye = db.Üye.Where(u => u.ÜyeNo == id).SingleOrDefault();
            if (Convert.ToInt32(Session["uyeid"]) != uye.ÜyeNo)
            {
                return HttpNotFound();
            }
            return View(uye);
        }
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(Üye uye)
        {
            var login = db.Üye.Where(u => u.KullanıcıAdı == uye.KullanıcıAdı).SingleOrDefault();
            if (login.KullanıcıAdı == uye.KullanıcıAdı && login.Email == uye.Email && login.Şifre == uye.Şifre)
            {
                Session["uyeid"] = login.ÜyeNo;
                Session["kullaniciadi"] = login.KullanıcıAdı;
                Session["yetkiid"] = login.YetkiNo;
                return RedirectToAction("Index", "Home");
            }
            else
            {
                ViewBag.Uyari = "Kullanıcı Adı , Email Ya da Şifrenizi Kontrol Ediniz...!";
                return View();
            }

        }
        public ActionResult Logout()
        {
            Session["uyeid"] = null;
            Session.Abandon();
            return RedirectToAction("Index", "Home");
        }
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Üye uye, HttpPostedFileBase Foto)
        {
            if (ModelState.IsValid)
            {
                if (Foto != null)
                {
                    WebImage img = new WebImage(Foto.InputStream);
                    FileInfo fotoinfo = new FileInfo(Foto.FileName);

                    string newfoto = Guid.NewGuid().ToString() + fotoinfo.Extension;
                    img.Resize(150, 150);
                    img.Save("~/Uploads/ÜyeFoto/" + newfoto);
                    uye.ÜyeFoto = "/Uploads/ÜyeFoto/" + newfoto;
                    uye.YetkiNo = 2;
                    db.Üye.Add(uye);
                    db.SaveChanges();
                    Session["uyeid"] = uye.ÜyeNo;
                    Session["kullaniciadi"] = uye.KullanıcıAdı;
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ModelState.AddModelError("Fotoğraf", "Fotoğraf Seçiniz");
                }
            }
            return View(uye);
        }
        public ActionResult Edit(int id)
        {
            var uye = db.Üye.Where(u => u.ÜyeNo == id).SingleOrDefault();
            if (Convert.ToInt32(Session["uyeid"]) != uye.ÜyeNo)
            {
                return HttpNotFound();
            }
            return View(uye);
        }
        [HttpPost]
        public ActionResult Edit(Üye uye, int id, HttpPostedFileBase Foto)
        {
            if (ModelState.IsValid)
            {
                var uyes = db.Üye.Where(u => u.ÜyeNo == id).SingleOrDefault();
                if (Foto != null)
                {
                    if (System.IO.File.Exists(Server.MapPath(uye.ÜyeFoto)))
                    {
                        System.IO.File.Delete(Server.MapPath(uyes.ÜyeFoto));
                    }
                    WebImage img = new WebImage(Foto.InputStream);
                    FileInfo fotoinfo = new FileInfo(Foto.FileName);

                    string newfoto = Guid.NewGuid().ToString() + fotoinfo.Extension;
                    img.Resize(150, 150);
                    img.Save("~/Uploads/ÜyeFoto/" + newfoto);
                    uyes.ÜyeFoto = "/Uploads/ÜyeFoto/" + newfoto;
                }
                uyes.AdSoyad = uye.AdSoyad;
                uyes.KullanıcıAdı = uye.KullanıcıAdı;
                uyes.Şifre = uye.Şifre;
                uyes.Email = uye.Email;
                db.SaveChanges();
                Session["kullaniciadi"] = uye.KullanıcıAdı;
                return RedirectToAction("Index", "Home", new { id = uyes.ÜyeNo });


            }
            return View();
        }

        public ActionResult UyeProfil(int id)
        {
            var uye = db.Üye.Where(u => u.ÜyeNo == id).SingleOrDefault();
            return View(uye);
        }
    }
}