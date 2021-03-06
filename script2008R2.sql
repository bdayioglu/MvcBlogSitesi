USE [MvcBlogSitesi]
GO
/****** Object:  Table [dbo].[Etiket]    Script Date: 13.05.2019 15:35:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Etiket](
	[EtiketNo] [int] IDENTITY(1,1) NOT NULL,
	[EtiketAdı] [nvarchar](50) NULL,
 CONSTRAINT [PK_Etiket] PRIMARY KEY CLUSTERED 
(
	[EtiketNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 13.05.2019 15:35:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[KategoriNo] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdı] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[KategoriNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Makale]    Script Date: 13.05.2019 15:35:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Makale](
	[MakaleNo] [int] IDENTITY(1,1) NOT NULL,
	[MakaleBaşlık] [nvarchar](500) NULL,
	[Makaleİçerik] [nvarchar](max) NULL,
	[MakaleFoto] [nvarchar](500) NULL,
	[MakaleTarih] [datetime] NULL,
	[KategoriNo] [int] NULL,
	[ÜyeNo] [int] NULL,
	[MakaleOkunma] [int] NULL,
 CONSTRAINT [PK_Makale] PRIMARY KEY CLUSTERED 
(
	[MakaleNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MakaleEtiket]    Script Date: 13.05.2019 15:35:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MakaleEtiket](
	[MakaleNo] [int] NOT NULL,
	[EtiketNo] [int] NOT NULL,
 CONSTRAINT [PK_MakaleEtiket] PRIMARY KEY CLUSTERED 
(
	[MakaleNo] ASC,
	[EtiketNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Üye]    Script Date: 13.05.2019 15:35:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Üye](
	[ÜyeNo] [int] IDENTITY(1,1) NOT NULL,
	[KullanıcıAdı] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Şifre] [nvarchar](50) NULL,
	[AdSoyad] [nvarchar](50) NULL,
	[ÜyeFoto] [nvarchar](500) NULL,
	[YetkiNo] [int] NULL,
 CONSTRAINT [PK_Üye] PRIMARY KEY CLUSTERED 
(
	[ÜyeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yetki]    Script Date: 13.05.2019 15:35:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yetki](
	[YetkiNo] [int] IDENTITY(1,1) NOT NULL,
	[YetkiAdı] [nvarchar](50) NULL,
 CONSTRAINT [PK_Yetki] PRIMARY KEY CLUSTERED 
(
	[YetkiNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yorum]    Script Date: 13.05.2019 15:35:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorum](
	[YorumNo] [int] IDENTITY(1,1) NOT NULL,
	[Yorumİçerik] [nvarchar](750) NULL,
	[ÜyeNo] [int] NULL,
	[MakaleNo] [int] NULL,
	[YorumTarih] [datetime] NULL,
 CONSTRAINT [PK_Yorum] PRIMARY KEY CLUSTERED 
(
	[YorumNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Etiket] ON 

INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (11, N'nasa')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (12, N' apollo 11')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (13, N' aya iniş')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (14, N'')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (15, N' apple')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (16, N' iphone')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (17, N' google')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (18, N' pixel 3a')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (19, N'tesla')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (20, N' tesla model s')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (21, N' otopilot')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (22, N'android')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (23, N' xiaomi')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (24, N'küresel ısınma')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (25, N' iklim değişikliği')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (26, N'nokia 2')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (27, N' kernel')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (28, N'OnePlus 7')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (29, N' oneplus 7 pro')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (30, N'huawei P30')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (31, N' Huawei P30 Pro')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (32, N'mariana çukuru')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (33, N' nükleer faaliyetler')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (34, N'bağış')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (35, N' tosuncuk')
INSERT [dbo].[Etiket] ([EtiketNo], [EtiketAdı]) VALUES (36, N' Asude Defne Özkan')
SET IDENTITY_INSERT [dbo].[Etiket] OFF
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([KategoriNo], [KategoriAdı]) VALUES (1, N'Genel')
INSERT [dbo].[Kategori] ([KategoriNo], [KategoriAdı]) VALUES (2, N'Teknoloji')
INSERT [dbo].[Kategori] ([KategoriNo], [KategoriAdı]) VALUES (3, N'Sağlık')
INSERT [dbo].[Kategori] ([KategoriNo], [KategoriAdı]) VALUES (4, N'Yazılım')
INSERT [dbo].[Kategori] ([KategoriNo], [KategoriAdı]) VALUES (5, N'Spor')
INSERT [dbo].[Kategori] ([KategoriNo], [KategoriAdı]) VALUES (6, N'Müzik')
INSERT [dbo].[Kategori] ([KategoriNo], [KategoriAdı]) VALUES (7, N'Mobil')
INSERT [dbo].[Kategori] ([KategoriNo], [KategoriAdı]) VALUES (8, N'Bilim')
INSERT [dbo].[Kategori] ([KategoriNo], [KategoriAdı]) VALUES (9, N'Sağlık')
INSERT [dbo].[Kategori] ([KategoriNo], [KategoriAdı]) VALUES (10, N'Oyun')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
SET IDENTITY_INSERT [dbo].[Makale] ON 

INSERT [dbo].[Makale] ([MakaleNo], [MakaleBaşlık], [Makaleİçerik], [MakaleFoto], [MakaleTarih], [KategoriNo], [ÜyeNo], [MakaleOkunma]) VALUES (8, N'NASA: Apollo 11 ile İlgili Ses Kayıtları Oluşturup Bize Gönderin, Yayınlayalım', N'<p>NASA, Apollo 11 ile ilgili bir hikaye projesi başlattı. Apollo 11&#39;in 50. yılı şerefine başlatılan bu programa herkes katılabiliyor. Program dahilinde insanlarla r&ouml;portaj yapılması veya hikayelerin oluşturulması isteniyor. Kabul edilen kayıtlar, NASA tarafından derlenerek paylaşılacak.</p>

<p>Apollo 11&#39;in yeri t&uuml;m insanlık i&ccedil;in ayrı bir &ouml;neme sahiptir. Bilindiği &uuml;zere Apollo 11, Ay y&uuml;zeyine yapılmış olan ilk u&ccedil;uştur. 1969 yılında Neil Armstrong ve Buzz Aldrin tarafından Ay&#39;a ayak basılmış ve bu olay bir ilk olarak tarihe adını yazdırmıştır. G&uuml;n&uuml;m&uuml;ze kadar gelen s&uuml;re&ccedil;te her ne kadar farklı iddialar ortaya atılsa da NASA, Apollo 11&#39;i hala &ouml;nemsiyor. Hatta Apollo 11 ile ilgili yeni bir program başlattı. Bu program dahilinde NASA, insanlarla r&ouml;portaj yapılmasını ve bu kayıtların kendilerine g&ouml;nderilmesini istiyor.</p>

<p><img alt="" src="https://www.webtekno.com/images/editor/default/0002/02/6389c62ba094d8b2f44c06797db1fa8b48109dbd.jpeg" /></p>

<p>Ay&#39;a ilk kez ayak basılmasının 50. yılı i&ccedil;inde başlatılan bu programa herkes katılabilir. Programa iki farklı şekilde katılabiliyorsunuz. Bunlardan ilki 1969 yılında yaşanmış olan bu tarihi anlara tanıklık eden&nbsp;birilerini bularak Apollo 11 hakkında konuşmak. O d&ouml;nem Apollo 11 hakkında&nbsp;neler konuşulmuş, neler hissedilmiş gibi soruları r&ouml;portaj yapmış olduğunuz kişiye y&ouml;neltmeniz gerekiyor. İkinci se&ccedil;eneğiniz ise Apollo 11&#39;le ilgili kendi ses kaydınızı oluşturmak. Yani kendi d&uuml;ş&uuml;ncelerinizi de paylaşabilirsiniz.&nbsp;OIuşturmuş olduğunuz ses kayıtlarını NASA&#39;nın ilgili mail adresine (Haberin sonunda mail adresini paylaşacağız.) g&ouml;ndermeniz gerekiyor. Bundan sonra yapmanız gereken şey ise beklemek. Kaydınız kabul edilirse NASA tarafından bilgilendirme maili alacaksınız.</p>

<p>&nbsp;</p>

<p>İLGİLİ HABER</p>

<h3><a href="https://www.webtekno.com/nasa-49-yil-sonra-apollo-11-gorevi-sirasinda-yapilan-konusmalari-yayinladi-h50734.html" onclick="ga(''send'', ''event'', ''Releated news'', ''Click'', ''https://www.webtekno.com/nasa-49-yil-sonra-apollo-11-gorevi-sirasinda-yapilan-konusmalari-yayinladi-h50734.html'')" title="NASA, 49 Yıl Sonra Apollo 11 Görevi Sırasında Yapılan Konuşmaları Yayınladı">NASA, 49 Yıl Sonra Apollo 11 G&ouml;revi Sırasında Yapılan Konuşmaları Yayınladı</a></h3>

<p>&nbsp;</p>

<p>&quot;İnsanların tekrar Ay&#39;da y&uuml;r&uuml;mesinin nasıl olacağını d&uuml;ş&uuml;n&uuml;yorsunuz?&quot; ve &quot;Keşif sizin i&ccedil;in ne ifade ediyor?&quot; gibi soruların, r&ouml;portajınız ya da hikayenizde yer alması gerekiyor. Ayrıca m&uuml;mk&uuml;n olan en kısa s&uuml;rede kaydın tamamlanması gerekiyor. NASA&#39;nın bu konuda belirlemiş olduğu s&uuml;re ise&nbsp;120 saniye. Ayrıca ses kayıtlarınız, &#39;.mp3&#39; ve &#39;.wav&#39; gibi uzantılara sahip olmalı.&nbsp;NASA&#39;nın bu program hakkında a&ccedil;mış olduğu bir internet sitesi bulunuyor.&nbsp;<a href="https://www.nasa.gov/apollostories?utm_source=webtekno" rel="nofollow" target="_blank">Buradan</a>&nbsp;o adrese ulaşarak yapacağınız kayıtla ilgili &ccedil;ok daha detaylı bilgilere ulaşabilirsiniz. Sitede, r&ouml;portaj yaptığınız kişilere neler sormanız gerektiği ve kaydın nasıl yapılması gerektiğine dair bilgilendirmeler yapılıyor.</p>

<p>Bu yılın sonuna kadar Apollo 11 ile ilgili kayıtlarınızı g&ouml;nderebilirsiniz. Kayıtlar, Apollo 11 ile ilgili olarak hazırlanan bir hatıra olarak derlenecek ve paylaşılacak. Eğer hatıra derlemesinin i&ccedil;inde yer almak isterseniz 14 Haziran&#39;a kadar kaydınızı g&ouml;ndermeniz gerekiyor &ccedil;&uuml;nk&uuml; bu tarihe kadar g&ouml;nderilecek olan kayıtların derleme i&ccedil;erisinde bulunma ihtimali daha y&uuml;ksek. Bunun haricinde sosyal medya platformlarında da kabul edilen ses kayıtları paylaşılacak. Mail adresinizi kontrol etmeyi unutmayın, bol şans.</p>

<p>Kayıtlarınızı NASA&#39;ya g&ouml;ndermeniz i&ccedil;in gerekli olan mail adresi:&nbsp;apollostories@mail.nasa.gov</p>

<p><iframe frameborder="0" height="315" scrolling="no" src="https://www.youtube.com/embed/NEOtODoeNYQ" width="560"></iframe></p>
', N'/Uploads/MakaleFoto/42be3193-9872-48ed-9ab3-79d2206fd27d.jpeg', CAST(N'2019-05-13T00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[Makale] ([MakaleNo], [MakaleBaşlık], [Makaleİçerik], [MakaleFoto], [MakaleTarih], [KategoriNo], [ÜyeNo], [MakaleOkunma]) VALUES (9, N'Steam Fiyatı Toplam 23 TL Olan İki Oyun, Kısa Süreliğine Ücretsiz Oldu', N'<p>Steam k&uuml;t&uuml;phanenizi &uuml;cretsiz bir şekilde genişletmenin tam vakti. Steam&#39;de toplam 23 TL&#39;ye satılan Divide By Sheep ve Fearless Fantasy, kısa s&uuml;reliğine &uuml;cretsiz oldu.</p>

<p>Bir oyunun en g&uuml;zel hali, &uuml;cretsiz olduğu halidir. Victor Solodilov ve&nbsp;Denis Novikov tarafından geliştirilen bağımsız bir yapım olan Divide By Sheep ve Enter Skies tarafından geliştirilen Fearless Fantasy, an itibarıyla Steam&rsquo;de &uuml;cretsiz bir şekilde oyuncuların beğenisine sunulmuş durumda.</p>

<p><img alt="" src="https://www.webtekno.com/images/editor/default/0002/02/c5b5a8ced5c33f3355e5244015f9b2f4db064aa4.jpeg" style="height:100%; width:100%" /></p>

<p>Temmuz 2015 &ccedil;ıkışlı bir oyun olan Divide By Sheep, tek oyunculu modda oynanabilen, macera odaklı bir basit eğlence oyunu olarak karşımıza &ccedil;ıkıyor. Mayıs 2014 &ccedil;ıkışlı olan Fearless Fantasy ise aksiyon ve macera severler i&ccedil;in geliştirilmiş basit ama g&uuml;zel denebilecek bir RPG oyunu.</p>

<p>&nbsp;</p>

<p>İLGİLİ HABER</p>

<h3><a href="https://www.webtekno.com/steam-fiyati-49-tl-olan-oyun-kisa-sureligine-ucretsiz-oldu-h68375.html" onclick="ga(''send'', ''event'', ''Releated news'', ''Click'', ''https://www.webtekno.com/steam-fiyati-49-tl-olan-oyun-kisa-sureligine-ucretsiz-oldu-h68375.html'')" title="Steam Fiyatı 49 TL Olan Oyun, Kısa Süreliğine Ücretsiz Oldu">Steam Fiyatı 49 TL Olan Oyun, Kısa S&uuml;reliğine &Uuml;cretsiz Oldu</a></h3>

<p>&nbsp;</p>

<p>Şu ana kadar Divide By Sheep 10 TL, Fearless Fantasy ise 13 TL fiyat etiketiyle oyunculara sunuluyordu. Bug&uuml;ne geldiğimizde ise her iki oyunu da &uuml;cretsiz bir şekilde Steam k&uuml;t&uuml;phanenize eklemeniz m&uuml;mk&uuml;n. Divide By Sheep&rsquo;in mağaza sayfasına ulaşmak i&ccedil;in&nbsp;<a href="https://store.steampowered.com/app/252130/Divide_By_Sheep/?utm_source=webtekno" rel="nofollow" target="_blank"><strong>buraya</strong></a>, Fearless Fantasy&rsquo;nin mağaza sayfasına ulaşmak i&ccedil;in de&nbsp;<a href="https://store.steampowered.com/app/282100/Fearless_Fantasy/?utm_source=webtekno" rel="nofollow" target="_blank"><strong>buraya&nbsp;</strong></a>tıklayabilirsiniz.</p>
', N'/Uploads/MakaleFoto/76d83ad0-308c-4a8b-921c-5cacc8d85c9f.jpeg', CAST(N'2019-05-13T00:00:00.000' AS DateTime), 10, 1, 1)
INSERT [dbo].[Makale] ([MakaleNo], [MakaleBaşlık], [Makaleİçerik], [MakaleFoto], [MakaleTarih], [KategoriNo], [ÜyeNo], [MakaleOkunma]) VALUES (10, N'Google, Pixel 3a Reklamında iPhone ile Dalga Geçti', N'<p>Google, uzun s&uuml;redir uzak durduğu b&uuml;t&ccedil;e dostu telefon piyasasına Pixel 3a ile yeniden giriş yapmasıyla birlikte Apple&#39;a g&ouml;ndermeyi de hemen yapıştırdı.</p>

<p>Google, b&uuml;t&ccedil;e dostu telefon piyasasına Pixel 3a ile yeniden giriş yaptı. Şirketin Pixel serisi, &uuml;&ccedil; nesildir &uuml;st segment olarak piyasaya sunuluyor ve hepsinin fiyatı da iPhone fiyatlarına yakın oluyordu. Şimdiyse Google&rsquo;ın piyasaya b&uuml;t&ccedil;e dostu bir Pixel telefon sunmasıyla birlikte, şirket Apple&rsquo;a g&ouml;nderme yapmaktan &ccedil;ekinmedi.</p>

<p>&nbsp;</p>

<p>İLGİLİ HABER</p>

<h3><a href="https://www.webtekno.com/google-in-ceo-su-sundar-pichai-apple-i-gizlilik-konusunda-topa-tuttu-h68277.html" onclick="ga(''send'', ''event'', ''Releated news'', ''Click'', ''https://www.webtekno.com/google-in-ceo-su-sundar-pichai-apple-i-gizlilik-konusunda-topa-tuttu-h68277.html'')" title="Google''ın CEO''su Sundar Pichai, Apple''ı Gizlilik Konusunda Topa Tuttu">Google&#39;ın CEO&#39;su Sundar Pichai, Apple&#39;ı Gizlilik Konusunda Topa Tuttu</a></h3>

<p>&nbsp;</p>

<p><img alt="" src="https://www.webtekno.com/images/editor/default/0002/02/803cdc925c01a157983124d94acc536404247be4.jpeg" /></p>

<p>Google&rsquo;ın reklam panosuna verdiği reklamda, &lsquo;Phone X&rsquo; yazısının altındaki 999 dolar fiyat etiketiyle malumunuz Apple&rsquo;a g&ouml;nderme yapılmış. Altında da 399 dolarlık b&uuml;t&ccedil;e dostu Pixel 3a yer alıyor. Yapılan g&ouml;ndermede &#39;999 dolarlık Phone X&#39;in kamerası b&ouml;yle karanlık fotoğraf &ccedil;ekerken, 399 dolarlık&nbsp;Pixel 3a&#39;nın kamerası b&ouml;yle net fotoğraf &ccedil;ekebiliyor&#39; denmek istenmiş. &Ouml;zellikle &Ccedil;inli &uuml;reticiler başta olmak &uuml;zere akıllı telefon &uuml;reticileri bir s&uuml;redir bu şekilde atışıyor.</p>

<p>&nbsp;</p>

<p>İLGİLİ HABER</p>

<h3><a href="https://www.webtekno.com/google-pixel-3a-hazirana-kadar-android-q-beta-programi-icin-uygun-olmayacak-h68427.html" onclick="ga(''send'', ''event'', ''Releated news'', ''Click'', ''https://www.webtekno.com/google-pixel-3a-hazirana-kadar-android-q-beta-programi-icin-uygun-olmayacak-h68427.html'')" title="Google Pixel 3a, Hazirana Kadar Android Q Beta Programı İçin Uygun Olmayacak">Google Pixel 3a, Hazirana Kadar Android Q Beta Programı İ&ccedil;in Uygun Olmayacak</a></h3>

<p>&nbsp;</p>

<p>Pixel 3a&rsquo;nın en b&uuml;y&uuml;k satış stratejisi, ailesindeki &uuml;st segment telefonların &ouml;zelliklerini daha makul bir fiyata sunması. Google bu reklamı, Apple hayranlarının sosyal medyada Pixel 3a&rsquo;nın fotoğraf kalitesinin iPhone XS&rsquo;in gerisinde kaldığını s&ouml;ylemesinden sonra yayımladı. Bazen şirketler arasında rekabet b&uuml;y&uuml;k olsa da biz t&uuml;keticiler i&ccedil;in eğlenceli g&ouml;r&uuml;nt&uuml;ler &ccedil;ıkabiliyor.&nbsp;Bu da onlardan biri.</p>
', N'/Uploads/MakaleFoto/b2e786ba-ce84-437a-ad6e-a62aa950e65d.jpeg', CAST(N'2019-05-13T00:00:00.000' AS DateTime), 2, 1, 5)
INSERT [dbo].[Makale] ([MakaleNo], [MakaleBaşlık], [Makaleİçerik], [MakaleFoto], [MakaleTarih], [KategoriNo], [ÜyeNo], [MakaleOkunma]) VALUES (11, N'Tesla Model S, Bu Kez Bir Tavşanın Hayatını Kurtardı (Video)', N'<p>&Ouml;zellikle otomatik pilot &ouml;zelliğiyle &ouml;n plana &ccedil;ıkan Tesla, bu kez bir tavşanın hayatını kurtardı. Twitter &uuml;zerinden paylaşılan g&ouml;r&uuml;nt&uuml;lerde, yolda bulunan bir tavşana &ccedil;arpmamak i&ccedil;in Tesla&#39;nın otopilotu &ouml;nce fren, ardından da tavşandan uzaklaşmak i&ccedil;in manevra yapıyor.</p>

<p>&Uuml;st&uuml;n donanımsal &ouml;zelliklere sahip olan otomobilleriyle &ouml;n plana &ccedil;ıkan Tesla, bir kez daha bu &ouml;zelliklerin ne kadar yerinde olduğunu g&ouml;sterdi. Daha &ouml;nce pek &ccedil;ok kez kazaları &ouml;nleyen Tesla&#39;nın otopilot &ouml;zelliği, bu kez k&uuml;&ccedil;&uuml;k bir tavşanın hayatını kurtardı. Amerika&#39;nın Florida eyaletinde yaşanan olay, Twitter &uuml;zerinden paylaşıldı. Tesla Model S sahibi olan Twitter kullanıcısı, bu manevrayı kendisinin yapmadığını belirterek, Tesla&#39;nın otopilot &ouml;zelliği sayesinde tavşanın kurtulduğunu ifade etti. İşte Twitter &uuml;zerinden paylaşılan o anlar;</p>

<p>&nbsp;</p>

<p><a href="https://twitter.com/dealer_of_happy/status/1126108842394357760"><img alt="" src="https://pbs.twimg.com/ext_tw_video_thumb/1126108760878002178/pu/img/F2NV4mfr5K1hADZq?format=jpg&amp;name=small" /></a></p>

<blockquote><a href="https://twitter.com/dealer_of_happy"><img alt="" src="https://pbs.twimg.com/profile_images/928707621229604866/BHZX3_qR_normal.jpg" /></a>

<p><a href="https://twitter.com/dealer_of_happy">Dealer of Happiness@dealer_of_happy</a></p>

<p dir="ltr">This <img alt="🐰" src="https://abs.twimg.com/emoji/v2/72x72/1f430.png" title="Rabbit face" /> and my car&rsquo;s bumper should thank <a dir="ltr" href="https://twitter.com/Tesla">@Tesla</a> AutoPilot.</p>

<p><a href="https://twitter.com/dealer_of_happy/status/1126108842394357760">3:57 PM - May 8, 2019</a></p>

<ul>
	<li><a href="https://twitter.com/intent/like?tweet_id=1126108842394357760" title="Like">800</a></li>
	<li><a href="https://twitter.com/dealer_of_happy/status/1126108842394357760" title="View the conversation on Twitter">227 people are talking about this</a></li>
</ul>
</blockquote>

<p><a href="https://support.twitter.com/articles/20175256" title="Twitter Ads info and privacy">Twitter Ads info and privacy</a></p>

<p>&nbsp;</p>

<p>Videoda da g&ouml;r&uuml;lebileceği &uuml;zere Model S, tavşanı fark etmesinin ardından &ouml;nce yavaşlıyor, ardından da tavşandan uzaklaşacak şekilde manevra yapıyor. Tavşanın tekrardan aracın &ouml;n&uuml;ne y&ouml;nelmesiyle birlikte Model S, bir kez daha hafif bir manevra yapıyor. Bu sırada da tavşan ka&ccedil;ıyor.&nbsp;</p>

<p><img alt="" src="https://www.webtekno.com/images/editor/default/0002/02/56460be4892dbd6b52a617eccff97c8d8ca1b8bc.jpeg" style="height:50%; width:100%" /></p>

<p>Tesla&#39;nın sahibi paylaşmış olduğu Twitter g&ouml;nderisinin altında yapılan yorumlara cevap vererek dolaylı olarak konuyla ilgili de a&ccedil;ıklamalarda bulunmuş oldu. Olayın ge&ccedil;tiğimiz ay sabahın ilk saatlerinde&nbsp;yaşandığını ifade eden ara&ccedil; sahibi, yazılım s&uuml;r&uuml;m&uuml;n&uuml;n 2019.8.5 olduğunu, ayrıca bu olay sayesinde hem tavşanın hayatının kurtulduğunu hem de kendisinin maddi zarara girmediğini ifade etti.</p>

<p>&nbsp;</p>

<p>İLGİLİ HABER</p>

<h3><a href="https://www.webtekno.com/tesla-model-3-un-otomatik-pilotu-bir-ailenin-hayatini-kurtardi-video-h67542.html" onclick="ga(''send'', ''event'', ''Releated news'', ''Click'', ''https://www.webtekno.com/tesla-model-3-un-otomatik-pilotu-bir-ailenin-hayatini-kurtardi-video-h67542.html'')" title="Tesla Model 3''ün Otomatik Pilotu, Bir Ailenin Hayatını Kurtardı (Video)">Tesla Model 3&#39;&uuml;n Otomatik Pilotu, Bir Ailenin Hayatını Kurtardı (Video)</a></h3>

<p>&nbsp;</p>

<p>Tesla tarafından yapılan a&ccedil;ıklamalarda, yollarda karşılaşılabilecek sorunlar i&ccedil;in &ccedil;alışmaların s&uuml;rd&uuml;r&uuml;ld&uuml;ğ&uuml; ifade edilmişti. Ortaya &ccedil;ıkan bu video ile&nbsp;yapılan &ccedil;alışmaların hedefine ulaşmaya devam ettiğini g&ouml;r&uuml;yoruz.</p>
', N'/Uploads/MakaleFoto/0b6c511e-2a83-4feb-aea7-77abe0ff2678.jpeg', CAST(N'2019-05-13T00:00:00.000' AS DateTime), 8, 1, 1)
INSERT [dbo].[Makale] ([MakaleNo], [MakaleBaşlık], [Makaleİçerik], [MakaleFoto], [MakaleTarih], [KategoriNo], [ÜyeNo], [MakaleOkunma]) VALUES (12, N'Xiaomi, Telefon Fotoğrafçılığında Yeni Bir Dönem Açacak Özelliğini Test Ediyor', N'<p>Yeni akıllı telefonlarını duyurmaya hazırlanan Xiaomi, galeri i&ccedil;erisinde b&uuml;y&uuml;k ses getirecek bir yenilik &uuml;zerinde &ccedil;alışıyor.</p>

<p>Fiyat/performans &uuml;r&uuml;nleriyle d&uuml;nya genelindeki Android işletim sistemi kullanıcıları arasında b&uuml;y&uuml;k ilgi g&ouml;ren &Ccedil;inli akıllı telefon sekt&ouml;r&uuml; devi Xiaomi, i&ccedil;erisinde bulunduğumuz Mayıs ayı i&ccedil;erisinde y&uuml;ksek donanım &ouml;zelliklerine sahip yeni akıllı telefonlarını lanse edeceğini duyurmuştu. Bug&uuml;n ortaya &ccedil;ıkan bir video ise Xiaomi&#39;nin &quot;fotoğraf d&uuml;zenleme&quot; uygulaması &uuml;zerinde yeni &ouml;zellikler getireceğini doğruladı.</p>

<p><iframe frameborder="0" height="315" scrolling="no" src="https://www.youtube.com/embed/yPocEF1XyPE" width="560"></iframe></p>

<p>Xiaomi&#39;nin geliştirdiği yeni fotoğraf d&uuml;zenleyicisinde, &ccedil;ekilmiş olan bir fotoğrafta bulunan &quot;g&ouml;ky&uuml;z&uuml;&quot; değiştirilebiliyor. Diğer uygulamaların aksine Xiaomi, değişen g&ouml;ky&uuml;z&uuml;yle beraber fotoğraftaki ışık oranlarında ve t&uuml;rlerinde de ufak ayarlamalar yaparak fotoğrafın ger&ccedil;ek anlamda doğal durmasını sağlıyor.</p>

<p><img src="https://www.webtekno.com/images/editor/default/0002/02/ae8f0e4041375a559be9695cfb536aa888aa1b47.jpeg" style="height:20%; width:100%" /></p>
', N'/Uploads/MakaleFoto/d138c95c-8f4a-4290-9c20-a973dccfcab3.jpeg', CAST(N'2019-05-13T00:00:00.000' AS DateTime), 7, 1, 1)
INSERT [dbo].[Makale] ([MakaleNo], [MakaleBaşlık], [Makaleİçerik], [MakaleFoto], [MakaleTarih], [KategoriNo], [ÜyeNo], [MakaleOkunma]) VALUES (13, N'Kutupları Donduruyoruz: Bilim İnsanları, İklim Değişikliğine Karşı Yeni Yöntemler Deniyor', N'<p>İngiltere&#39;de kurulacak yeni bir araştırma merkezi, iklim değişikliği konusuna odaklanacak ve gezegenimizde oluşan veya oluşabilecek zararları en aza indirmek i&ccedil;in b&uuml;y&uuml;k &ccedil;aplı projeler ger&ccedil;ekleştirecek.</p>

<p>İngiltere&#39;de bilim insanları, gezegenimizin atmosferinde oluşan hasarı onarabilmek adına bazı y&ouml;ntemlerin test edilebileceği bir araştırma merkezi kurmaya hazırlanıyor. Merkez, Cambridge&#39;de kurulacak ve kutupları dondurmak, atmosferden karbondioksit &ccedil;ekmek gibi y&ouml;ntemler&nbsp;&uuml;zerine &uuml;zerine &ccedil;alışılacak.</p>

<p>&nbsp;</p>

<p>İLGİLİ HABER</p>

<h3><a href="https://www.webtekno.com/kuresel-isinma-nedeniyle-2070-yilina-kadar-bengal-kaplanlarinin-nesli-tukenecek-h68194.html" onclick="ga(''send'', ''event'', ''Releated news'', ''Click'', ''https://www.webtekno.com/kuresel-isinma-nedeniyle-2070-yilina-kadar-bengal-kaplanlarinin-nesli-tukenecek-h68194.html'')" title="Küresel Isınma Nedeniyle 2070 Yılına Kadar Bengal Kaplanlarının Nesli Tükenecek">K&uuml;resel Isınma Nedeniyle 2070 Yılına Kadar Bengal Kaplanlarının Nesli T&uuml;kenecek</a></h3>

<p>&nbsp;</p>

<p><img alt="" src="https://www.webtekno.com/images/editor/default/0002/02/cb7ead2e0cb9378d510c19deb15205cbf619b39f.jpeg" style="height:20%; width:100%" /></p>

<p>Merkezin kurulma nedeni, gezegenimize verilen zararın &uuml;st boyutlara ulaşmış olması ve mevcut y&ouml;ntemlerin bunun &ouml;n&uuml;ne ge&ccedil;emeyeceğinin d&uuml;ş&uuml;n&uuml;lmesi olarak g&ouml;steriliyor. Bu alanda bir ilk olacak araştırma merkezinin karbon emisyonunda b&uuml;y&uuml;k azalmalar&nbsp;sağlayacağı &ouml;ng&ouml;r&uuml;l&uuml;yor. Cambridge &Uuml;niversitesi&#39;nden Dr. Emily Shuckburgh, merkezin amacının iklim problemini &ccedil;&ouml;zmek olduğunu s&ouml;yl&uuml;yor.&nbsp;</p>

<h3>Kutuplar Nasıl Dondurulacak?</h3>

<p>Kutuplardaki erimeye dikkat &ccedil;eken proje, kutupların tekrar dondurulması i&ccedil;in ilgin&ccedil; bir y&ouml;ntem kullanacak. Denizden alınan sular, uzun bacalar ile g&ouml;ky&uuml;z&uuml;ne p&uuml;sk&uuml;rt&uuml;lecek ve bu sayede denizden bulutlara aktarılacak tuz taneleri, bulutların g&uuml;neş ışıklarını uzaya daha fazla geri yansıtmasını sağlayacak. Bu sayede bulutların altı daha soğuk kalacak.&nbsp;</p>

<h3>Karbondioksit Geri D&ouml;n&uuml;şt&uuml;r&uuml;lecek</h3>

<p><img alt="" src="https://www.webtekno.com/images/editor/default/0002/02/53f49193e9b56aa586befd8fb63e99bb17ea01d8.jpeg" style="height:20%; width:100%" /></p>

<p>K&ouml;m&uuml;r santralleri ve &ccedil;elik fabrikaları gibi binalardan salınan karbondioksit gazı &ccedil;ekilecek ve yer altında depolanacak. Ardından karbon, sentetik yakıta d&ouml;n&uuml;şt&uuml;r&uuml;lecek ve ulaştırmada kullanılabilecek.</p>

<h3>Okyanuslar Yeşillendirilecek</h3>

<p>İlgin&ccedil; bir y&ouml;ntem ile okyanusların yeşillendirilmesi ve&nbsp;karbondioksitin azalması sağlanacak. Biraz garip gibi g&ouml;r&uuml;nse de okyanusa demir par&ccedil;acıkları bırakılacak ve demir, alglerin daha fazla beslenmesini sağlayacak. Bu sayede deniz y&uuml;zeyindeki su yosunu miktarı artacak. Algler, yaptıkları fotosentez ile karbondioksitin azaltılmasına katkı sağlayacak.</p>

<p><img alt="" src="https://www.webtekno.com/images/editor/default/0002/02/19b22066d612851bb843d34a771815005199c3ff.jpeg" style="height:20%; width:100%" /></p>

<p>Bunun yanı sıra bu y&ouml;ntem, daha &ouml;nce denenmiş ve yeterli karbondioksit &ccedil;ekilemediği g&ouml;r&uuml;lm&uuml;şt&uuml;. Ayrıca okyanusa verebileceği zarar ve maliyet fayda a&ccedil;ısından olumsuz olduğu d&uuml;ş&uuml;n&uuml;lerek&nbsp;bir sonuca varılamamıştı.</p>

<p>Ancak&nbsp;York &Uuml;niversitesi&#39;nden Prof. Callum Roberts,&nbsp;konuyla ilgili bazı durumlara katlanmanın zorunlu olduğunu belirtiyor. Bu y&ouml;ntemin &ccedil;evreye verdiği zararın, iklim değişikliğinin yaratacağı zarar g&ouml;z &ouml;n&uuml;nde bulundurulduğunda kabul edilebilir olması gerektiğini dile getiriyor.</p>

<p>&nbsp;</p>

<p>İLGİLİ HABER</p>

<h3><a href="https://www.webtekno.com/sese-donusturulen-iklim-degisiklikligi-verileri-ne-mesaj-veriyor-h67058.html" onclick="ga(''send'', ''event'', ''Releated news'', ''Click'', ''https://www.webtekno.com/sese-donusturulen-iklim-degisiklikligi-verileri-ne-mesaj-veriyor-h67058.html'')" title="Sese Dönüştürülen İklim Değişiklikliği Verileri Ne Mesaj Veriyor?">Sese D&ouml;n&uuml;şt&uuml;r&uuml;len İklim Değişiklikliği Verileri Ne Mesaj Veriyor?</a></h3>

<p>&nbsp;</p>

<p>Fakat Cambridge &Uuml;niversitesi&#39;nden okyanus fizik&ccedil;isi Prof. Peter Wadhams, bu projelerin yan etkilerinin g&ouml;z &ouml;n&uuml;nde bulundurulması gerektiğini&nbsp;ve y&ouml;ntemlerin CO2 salınımını azaltmak i&ccedil;in tek başına yeterli olmayacağını s&ouml;yl&uuml;yor.</p>
', N'/Uploads/MakaleFoto/4e348f39-31ec-4a16-8ca4-9338515fc655.jpeg', CAST(N'2019-05-13T00:00:00.000' AS DateTime), 8, 1, 1)
INSERT [dbo].[Makale] ([MakaleNo], [MakaleBaşlık], [Makaleİçerik], [MakaleFoto], [MakaleTarih], [KategoriNo], [ÜyeNo], [MakaleOkunma]) VALUES (14, N'Nokia 2''nin Kernel Kaynak Kodu Yayımlandı', N'<p>Kernel kaynak kodlarının paylaşımında Motorola ve Google kadar hızlı olmayan Nokia, 2 yıl &ouml;nce piyasaya s&uuml;rd&uuml;ğ&uuml; Nokia 2&#39;nin kaynak kodlarını paylaştı.</p>

<p>Kernel kaynak kodunu paylaşma konusunda akla ilk gelen isimler daima Motorola ve Google oluyor. Bu kez kernel kaynak kodu konusunda hamle yapan şirket Nokia oldu. Nokia, bu konuda pek de adını duyduğumuz bir &uuml;retici değil.</p>

<p>Nokia, 2 yıl &ouml;nce piyasaya s&uuml;rd&uuml;ğ&uuml; Nokia 2&#39;nin kernel kaynak kodlarını resmi sitesi &uuml;zerinden paylaştı. Fakat bu konuya ilgili kullanıcıları pek de memnun etmeyecek bir durum da mevcut. Nokia, Nokia 2&#39;nin bootloader kilidinin a&ccedil;ılmasına hen&uuml;z izin vermiyor.</p>

<p>&nbsp;</p>

<p>İLGİLİ HABER</p>

<h3><a href="https://www.webtekno.com/nokia-2-fiyati-ve-ozellikleri-h35771.html" onclick="ga(''send'', ''event'', ''Releated news'', ''Click'', ''https://www.webtekno.com/nokia-2-fiyati-ve-ozellikleri-h35771.html'')" title="Devasa Bataryası ve Uygun Fiyatıyla Nokia 2 Tanıtıldı!">Devasa Bataryası ve Uygun Fiyatıyla Nokia 2 Tanıtıldı!</a></h3>

<p>&nbsp;</p>

<p><img alt="" src="https://www.webtekno.com/images/editor/default/0002/02/89ad0dc4a01ffe43b2dff72ea8fc765b0b212d84.jpeg" style="height:20%; width:100%" /></p>

<p>Şimdiye dek ge&ccedil; de olsa bir&ccedil;ok model i&ccedil;in i&ccedil;in kernek kaynak kodlarını paylaşan &uuml;retici, 2 yıl &ouml;nce satışa sunulmuş bir cihaz i&ccedil;in kaynak kodlarını paylaşınca garipsemek doğal oluyor. Bahsi ge&ccedil;en Nokia 2&#39;nin kaynak kodu sayfasına&nbsp;<a href="https://www.nokia.com/phones/en_int/opensource?utm_source=webtekno" rel="nofollow" target="_blank">bu bağlantı</a>&nbsp;&uuml;zerinden erişebilirsiniz. Aynı bağlantı sayesinde Nokia&#39;nın diğer modelleri i&ccedil;in yayımladığı kaynak kodlarına da g&ouml;z atmanız m&uuml;mk&uuml;n.</p>
', N'/Uploads/MakaleFoto/9013464a-1a83-4eba-8adb-5003a9f07441.jpeg', CAST(N'2019-05-13T00:00:00.000' AS DateTime), 4, 1, 1)
INSERT [dbo].[Makale] ([MakaleNo], [MakaleBaşlık], [Makaleİçerik], [MakaleFoto], [MakaleTarih], [KategoriNo], [ÜyeNo], [MakaleOkunma]) VALUES (15, N'Yeni Sızıntılar, OnePlus 7''nin Üç Arka Kameralı Olacağını Doğruluyor', N'<p>OnePlus 7 ve Pro 7 modelleri i&ccedil;in sızdırılan g&ouml;rseller ve bilgiler, cihazın daha &ouml;nce ortaya &ccedil;ıkan &ouml;zelliklerini doğruluyor. OnePlus 7 Pro&#39;nun kızaklı &ouml;n kamerası ve standart modelinin ikili arka kamerası, sızdırılan bilgiler arasında.</p>

<p>OnePlus 7 Pro&#39;nın ortaya &ccedil;ıkan sızıntılara g&ouml;re kızaklı &ouml;n kamesı ve &uuml;&ccedil; tane arka kamerası olacağı biliniyordu.&nbsp;Bu zamana kadar yaptığı haberlerle b&uuml;y&uuml;k g&uuml;ven toplayan Winfuture web sitesinden gelen yeni sızıntılar, bunu doğruluyor. Ayrıca OnePlus 7 standart modelinin&nbsp;2 arka kameraya sahip olacağı da &ccedil;ıkan haberler arasında.</p>

<p><img alt="" src="https://www.webtekno.com/images/editor/default/0002/02/ed5ca6005d1c01dd41e2b5ff0536107bc319765f.jpeg" /></p>

<p>Roland Quandt tarafından sağlanan bilgiler,&nbsp;Oneplus7 ve Pro modelinin sırasıyla merkezi olarak konumlandırılmış &ccedil;ift ve &uuml;&ccedil;l&uuml; kamera kurulumuna sahip olacağını doğruluyor.&nbsp;Standart modelinin kumtaşı, naylon ve silikon kırmızı, Pro modelininse&nbsp;karbon gri, karbon siyah&nbsp;ve kumtaşı renk se&ccedil;eneklerine sahip olacağı belirtiliyor.</p>

<p><img alt="" src="https://www.webtekno.com/images/editor/default/0002/02/983c063b73199decae62a9f171e6f4527126c620.jpeg" /></p>

<p>Bir s&uuml;redir dile getirilen s&ouml;ylentilere g&ouml;re OnePlus 7 Pro modelinin a&ccedil;ılıp kapanabilen &ouml;n kamerası ile şirketin ilk &ccedil;entiksiz telefonu olacağı iddia ediliyordu. Ayrıca&nbsp;QHD+ &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;kte bir ekrana sahip olacağı belirtilen telefonun 90Hz yenileme hızına ve HDR 10+ desteğine sahip olacağı s&ouml;ylenen ekranı&nbsp;DisplayMate&#39;den erken bir a&ccedil;ıklamayla A+ puan almıştı.</p>
', N'/Uploads/MakaleFoto/97b2111b-922c-46fb-9755-cbc8368d56fe.jpeg', CAST(N'2019-05-13T00:00:00.000' AS DateTime), 7, 1, 1)
INSERT [dbo].[Makale] ([MakaleNo], [MakaleBaşlık], [Makaleİçerik], [MakaleFoto], [MakaleTarih], [KategoriNo], [ÜyeNo], [MakaleOkunma]) VALUES (16, N'Huawei P30 Pro İle Ağır Çekim Videolar Nasıl Kaydedilir?', N'<p>Huawei&#39;nin yeni amiral gemileri P30 ve P30 Pro, etkileyici kamera &ouml;zelliklerine sahip. Cihazların başarılı kameraları ile ağır &ccedil;ekim videolar kaydetmek de m&uuml;mk&uuml;n.</p>

<p>Huawei P30 serisi, sekt&ouml;r&uuml;n &uuml;st&uuml;nde fotoğraf yeteneklerinin yanı sıra&nbsp;etkileyici video kayıt &ouml;zelliklerine de sahip.&nbsp;4K video kaydı yapılabilen telefonda ağır &ccedil;ekim videolar da &ccedil;ekilebiliyor.</p>

<p><img alt="" src="https://www.webtekno.com/images/editor/default/0002/02/22ab416e459ba44b2f69550d796c0324e12bb327.jpeg" style="height:20%; width:100%" /></p>

<p>Normal ağır &ccedil;ekim videolarının yanı sıra Huawei P30 ve P30 Pro ile s&uuml;per ağır &ccedil;ekim videolar da kaydedilebiliyor. 4x (120 fps), 8x (240 fps), 32x (960 fps) olarak &uuml;&ccedil; farklı ağır &ccedil;ekim modu bulunuyor. 1080p &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;kte &ccedil;ekilebilen 4x videolar dışındaki diğer b&uuml;t&uuml;n ağır &ccedil;ekim videoları 720p &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml;nde kaydedilebiliyor.</p>

<h3>Huawei P30 İle Ağır &Ccedil;ekim Video Nasıl Kaydedilir?</h3>

<p>Huawei P30 veya P30 Pro telefonunuzu yeni aldıysanız ve ağır &ccedil;ekim videolarının nasıl kaydedileceğini bilmiyorsanız aşağıdaki adımları takip edebilirsiniz.</p>

<ol>
	<li>Kamera uygulamasını a&ccedil;ın&nbsp;ve diğer sekmesine kaydırın. Yavaş &ccedil;ekim se&ccedil;eneği en &uuml;stte karşınıza &ccedil;ıkacaktır.</li>
	<li>Ardından sağ alt tarafta bulunan simgeye dokunarak ağır &ccedil;ekim modları arasında ge&ccedil;iş yapabilirsiniz.</li>
</ol>

<p><img alt="" src="https://www.webtekno.com/images/editor/default/0002/02/8433023dbc7c0135b0a0fca7b1841852806f96f5.jpeg" style="height:20%; width:100%" /></p>

<p>32x (960 fps) videoların&nbsp;en iyi performası&nbsp;bol ışık olduğu zaman verdiğini unutmayın. Ayrıca bu mod&nbsp;ile&nbsp;&ccedil;ekilen videoların &ccedil;ok kaliteli olmasını da beklemeyin. Ağır &ccedil;ekim video, 0,4 saniye ile sınırlı&nbsp;ve toplam video uzunluğu ise 12-15 saniye kadar olacaktır.</p>

<p>40 MP&#39;lik ana kamera haricindeki kameralar ile 960 fps s&uuml;per ağır &ccedil;ekim videoları dışında yavaş &ccedil;ekimli videolar kaydetmek m&uuml;mk&uuml;n değil. Yani 5x optik zoom sens&ouml;r&uuml; veya ultra geniş a&ccedil;ılı sens&ouml;rden ağır &ccedil;ekim modları arasından sadece 960 fps videolar kaydedilebiliyor.</p>
', N'/Uploads/MakaleFoto/a56ff8ff-e1ae-4b1a-aa09-71e8dfbccbde.jpeg', CAST(N'2019-05-13T00:00:00.000' AS DateTime), 7, 1, 1)
INSERT [dbo].[Makale] ([MakaleNo], [MakaleBaşlık], [Makaleİçerik], [MakaleFoto], [MakaleTarih], [KategoriNo], [ÜyeNo], [MakaleOkunma]) VALUES (17, N'Nükleer Faaliyetlerin Gezegenimizi Nasıl Etkilediği Tespit Edildi', N'<p>G&uuml;n&uuml;m&uuml;zde bile bazı &uuml;lkeler n&uuml;kleer faaliyetlerini s&uuml;rd&uuml;r&uuml;rken, bir grup bilim insanı bu konudaki araştırmaları sonu&ccedil;landırıyorlar. Yapılan yeni bir araştırma, Soğuk Savaş d&ouml;neminde ger&ccedil;ekleştirilen n&uuml;kleer faaliyetlerin okyanustaki canlıları etkilediğini tespit etti.</p>

<p>N&uuml;kleer testler, bir takım ama&ccedil;lar uğruna ger&ccedil;ekleştiriliyor olsalar da i&ccedil;inde bulunduğumuz gezegene ciddi zararlar veriyor. Yapılan n&uuml;kleer faaliyetlerin ne kadar uzağa etki ettiğini &ouml;ğrenmek isteyen bilim insanları, korkutucu veriler elde ettiler.</p>

<p>Yapılan yeni bir &ccedil;alışma, Soğuk Savaş d&ouml;neminde yapılan n&uuml;kleer bomba testlerinin ortaya &ccedil;ıkardığı karbonun, Mariana &Ccedil;ukuru&#39;ndaki kabuklu canlıları&nbsp;ve okyanusun kalanındaki canlı hayatını etkilediğini saptadı. Bildiğiniz &uuml;zere&nbsp;Mariana &Ccedil;ukuru, şimdilik gezegenimizin y&uuml;zeyinde bilinen en derin nokta. Derinliği ise&nbsp;10.994 metre. &Ccedil;ukurun derinliğini daha iyi anlamanız i&ccedil;in Everest Dağı&#39;nın&nbsp;8.848 metre olduğunu hatırlatmakta fayda var.</p>

<p><img src="https://www.webtekno.com/images/editor/default/0002/02/f7a5c4bc470a525ff58d6e42963b23955722f24e.jpeg" style="height:20%; width:100%" /></p>

<p>Soğuk Savaş d&ouml;nemindeki testlerin deniz yaşamını etkilediğini saptayan &ccedil;alışma, radyoaktif karbonun bu kadar fazla yayılmasının sebebi olarak da deniz canlılarının besin zincirini g&ouml;sterdi.&nbsp;Chinese Academy of Sciences&#39;dan (&Ccedil;in Bilimler Akademisi) Ning Wang, okyanuslardaki radyoaktif karbonun ilerlemesinin y&uuml;zyıllar boyunca bile s&uuml;rebileceğini ancak besin zincirinin bu s&uuml;reci fazlasıyla hızlandırdığını belirtti.</p>

<p>&nbsp;</p>

<p>İLGİLİ HABER</p>

<h3><a href="https://www.webtekno.com/cernobil-nukleer-santrali-faciasinda-gercekte-tam-olarak-ne-oldu-h68267.html" onclick="ga(''send'', ''event'', ''Releated news'', ''Click'', ''https://www.webtekno.com/cernobil-nukleer-santrali-faciasinda-gercekte-tam-olarak-ne-oldu-h68267.html'')" title="Çernobil Nükleer Santrali Faciasında Gerçekte Tam Olarak Ne Oldu?">&Ccedil;ernobil N&uuml;kleer Santrali Faciasında Ger&ccedil;ekte Tam Olarak Ne Oldu?</a></h3>

<p>&nbsp;</p>

<p>Şimdilik gezegenimiz bu faaliyetlerin zararlarından ciddi bi&ccedil;imde etkilenmemiş olsa da gelecekteki n&uuml;kleer faaliyetlere dikkat edilmesi gerektiğini belirten bilim insanları, bu şekilde devam edildiği s&uuml;rece 60 yıl i&ccedil;inde deniz yaşamının ciddi bir tehlike altında olacağını belirttiler.</p>
', N'/Uploads/MakaleFoto/1a7ce82c-de8d-4c9d-bf24-3afd51cf07fc.jpeg', CAST(N'2019-05-13T00:00:00.000' AS DateTime), 8, 1, 1)
INSERT [dbo].[Makale] ([MakaleNo], [MakaleBaşlık], [Makaleİçerik], [MakaleFoto], [MakaleTarih], [KategoriNo], [ÜyeNo], [MakaleOkunma]) VALUES (18, N'Yeni Bir Tosuncuk Vakası mı Geliyor: Asude Defne Özkan 21 Bin Dolar Bağış Topladı', N'<p>Sosyal medya &uuml;zerinden yaptığı paylaşımla yurt dışında bir &uuml;niversite kazandığını s&ouml;yleyerek y&uuml;z bin lirayı aşkın bağış toplayan Asude Defne &Ouml;zkan, sosyal medyada b&uuml;y&uuml;k ayrılıklara yol a&ccedil;tı.</p>

<p>Son g&uuml;nlerde sosyal medyada kendinden fazlasıyla bahsettiren Asude Defne &Ouml;zkan, ge&ccedil;tiğimiz g&uuml;nlerde ABD&rsquo;deki bir &uuml;niversiteyi kazandığını belirterek yardım talebinde bulundu. Pace isimli &uuml;niversiteye se&ccedil;ilen sayılı kız &ouml;ğrencilerden olduğunu belirten &Ouml;zkan, 24 saatten kısa bir s&uuml;rede 21 bin dolar gibi bir meblağ topladı.</p>

<p>Sosyal medya &uuml;zerinde &uuml;nl&uuml;lerden tutun milletvekillerine kadar bir&ccedil;ok kişiyi destek&ccedil;isi yapmayı başaran &Ouml;zkan, bunun yanı sıra bir&ccedil;ok haber sitesinin de desteğini aldı. T&uuml;m bu gelişmeler başta insanların g&ouml;ğs&uuml;n&uuml; kabartmış olsa da vakit ge&ccedil;tik&ccedil;e insanların farklı konularda ş&uuml;pheleri oluşmaya başladı.</p>

<p>&nbsp;</p>

<p><a href="https://twitter.com/asudedefneozkan/status/1126488114279714819"><img alt="" src="https://pbs.twimg.com/ext_tw_video_thumb/1126487259665129473/pu/img/4MgQRolHR89azApY?format=jpg&amp;name=small" /></a></p>

<blockquote><a href="https://twitter.com/asudedefneozkan"><img alt="" src="https://pbs.twimg.com/profile_images/1126190955978264576/GJh2TIRh_normal.jpg" /></a>

<p><a href="https://twitter.com/asudedefneozkan">defne@asudedefneozkan</a></p>

<p dir="ltr">New York&rsquo;taki Pace &Uuml;niversitesi&rsquo;nin (Actor&rsquo;s Studio) oyunculuk b&ouml;l&uuml;m&uuml;n&uuml; kazanan d&uuml;nya &ccedil;apında 15 kızdan biri oldum. G&ouml;nl&uuml;n&uuml;zden kopacak herhangi bir destek benim i&ccedil;in &ccedil;ok değerli. <a dir="ltr" href="https://t.co/ufxitzfwyv" rel="nofollow noopener" target="_blank" title="https://gogetfunding.com/oyunculuk-egitimim-icin-yardiminiza-ihtiyacim-var/">https://gogetfunding.com/oyunculuk-egitimim-icin-yardiminiza-ihtiyacim-var/&nbsp;&hellip;</a></p>

<p><a href="https://twitter.com/asudedefneozkan/status/1126488114279714819">5:04 PM - May 9, 2019</a></p>

<ul>
	<li><a href="https://twitter.com/intent/like?tweet_id=1126488114279714819" title="Like">49.4K</a></li>
	<li><a href="https://twitter.com/asudedefneozkan/status/1126488114279714819" title="View the conversation on Twitter">17.9K people are talking about this</a></li>
</ul>
</blockquote>

<p><a href="https://support.twitter.com/articles/20175256" title="Twitter Ads info and privacy">Twitter Ads info and privacy</a></p>

<p>&nbsp;</p>

<p>Bir&ccedil;ok &uuml;niversiteden kabul aldığını ve en &ccedil;ok burs veren &uuml;niversiteyi tercih ettiğini a&ccedil;ıkladıktan sonra maddi destek isteyen &Ouml;zkana karşı sosyal medyada &lsquo;dolandırıcı&rsquo; diyenler de ortaya &ccedil;ıktı. Bunlardan bazıları &Ouml;zkan&rsquo;ın Instagram &uuml;zerinde bir seyahat bloğu olduğunu ve &uuml;lke &uuml;lke gezdiği i&ccedil;in yeterli maddi durumunun da bulunduğunu belirtti.</p>

<p>&Ouml;zkan&rsquo;ın Instagram hesabı şu an i&ccedil;in gizli olsa da Twitter &uuml;zerinden hesaptaki paylaşımların ekran g&ouml;r&uuml;nt&uuml;leri paylaşıldı. Hal b&ouml;yle olunca da &ccedil;ok kısa s&uuml;rede y&uuml;z bin lirayı aşkın bir para toplayan Asude Defne &Ouml;zkan hakkında &lsquo;dolandırıcı&rsquo; iddiaları y&uuml;kseldi.</p>

<p>&nbsp;</p>

<p><a href="https://twitter.com/asudedefneozkan/status/1126765529287483392/photo/1"><img alt="View image on Twitter" src="https://pbs.twimg.com/media/D6MTRNiUUAAZ2IO?format=jpg&amp;name=small" style="height:40%; width:100%" title="View image on Twitter" /></a><a href="https://twitter.com/asudedefneozkan/status/1126765529287483392/photo/1"><img alt="View image on Twitter" src="https://pbs.twimg.com/media/D6MTRNeU0AEG4w-?format=jpg&amp;name=360x360" style="height:50%; width:100%" title="View image on Twitter" /></a><a href="https://twitter.com/asudedefneozkan/status/1126765529287483392/photo/1"><img alt="View image on Twitter" src="https://pbs.twimg.com/media/D6MTRNZV4AIBKBq?format=jpg&amp;name=360x360" style="height:50%; width:100%" title="View image on Twitter" /></a></p>

<blockquote><a href="https://twitter.com/asudedefneozkan"><img alt="" src="https://pbs.twimg.com/profile_images/1126190955978264576/GJh2TIRh_normal.jpg" /></a>

<p><a href="https://twitter.com/asudedefneozkan">defne@asudedefneozkan</a></p>

<p dir="ltr">Yanlış bir anlaşılmaya yol a&ccedil;mamak i&ccedil;in, okul kab&uuml;llerimi paylaşıyorum.</p>

<p><a href="https://twitter.com/asudedefneozkan/status/1126765529287483392">11:26 AM - May 10, 2019</a></p>

<ul>
	<li><a href="https://twitter.com/intent/like?tweet_id=1126765529287483392" title="Like">600</a></li>
	<li><a href="https://twitter.com/asudedefneozkan/status/1126765529287483392" title="View the conversation on Twitter">163 people are talking about this</a></li>
</ul>
</blockquote>

<p><a href="https://support.twitter.com/articles/20175256" title="Twitter Ads info and privacy">Twitter Ads info and privacy</a></p>

<p>&nbsp;</p>

<p>&Ouml;zkan kabul mektuplarını paylaşmasına rağmen insanlar &Ouml;zkan&rsquo;ı ciddi anlamda eleştirmeye devam etti. &Ouml;rneğin okula yatırılması gereken paranın yatırılması i&ccedil;in son tarih 1 Mayıs&rsquo;ken neden 9 Mayıs tarihinde bir bağış kampanyası başlatıldığı soruldu. Bunun &uuml;zerine Asude Defne &Ouml;zkan&rsquo;dan bir a&ccedil;ıklama geldi.</p>

<p>Sosyal medya &uuml;zerinde &ccedil;ok ciddi anlamda bilgi kirliliği oluştuğunu ileri s&uuml;ren Asude Defne &Ouml;zkan, Twitter &uuml;zerinden yaptığı a&ccedil;ıklamada sosyal medya &uuml;zerinden &lsquo;lin&ccedil;&rsquo; yediğini belirtti. &Ouml;zkan, parayı okula yatırdığı zaman belgeleyeceğini de ekledi. A&ccedil;ıklama ise şu şekilde oldu:</p>

<p>&nbsp;</p>

<p><a href="https://twitter.com/asudedefneozkan/status/1127262419552804864/photo/1" tabindex="-1" title="View image on Twitter">View image on Twitter</a></p>

<p><a href="https://twitter.com/asudedefneozkan/status/1127262419552804864/photo/1"><img alt="View image on Twitter" src="https://pbs.twimg.com/media/D6TXMPuX4AAjxzh?format=jpg&amp;name=small" style="height:20%; width:100%" title="View image on Twitter" /></a></p>

<blockquote><a href="https://twitter.com/asudedefneozkan"><img alt="" src="https://pbs.twimg.com/profile_images/1126190955978264576/GJh2TIRh_normal.jpg" /></a>

<p><a href="https://twitter.com/asudedefneozkan">defne@asudedefneozkan</a></p>

<p dir="ltr">Bilgi kirliliğini d&uuml;zeltmek i&ccedil;in:</p>

<p><a href="https://twitter.com/asudedefneozkan/status/1127262419552804864">8:21 PM - May 11, 2019</a></p>

<ul>
	<li><a href="https://twitter.com/intent/like?tweet_id=1127262419552804864" title="Like">887</a></li>
	<li><a href="https://twitter.com/asudedefneozkan/status/1127262419552804864" title="View the conversation on Twitter">443 people are talking about this</a></li>
</ul>
</blockquote>

<p><a href="https://support.twitter.com/articles/20175256" title="Twitter Ads info and privacy">Twitter Ads info and privacy</a></p>

<p>&nbsp;</p>

<p>Konu şu anda son derece muğlak ve kesin bir şey s&ouml;ylenemiyor. Siz bu konu hakkında ne d&uuml;ş&uuml;n&uuml;yorsunuz? Fikirlerinizi yorumlar kısmından bizlerle paylaşmayı unutmayın.</p>
', N'/Uploads/MakaleFoto/b0a13be5-d5ac-4933-87cd-fb653a94ca94.jpg', CAST(N'2019-05-13T00:00:00.000' AS DateTime), 1, 1, 3)
SET IDENTITY_INSERT [dbo].[Makale] OFF
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (8, 11)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (8, 12)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (8, 13)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (9, 14)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (10, 15)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (10, 16)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (10, 17)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (10, 18)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (11, 19)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (11, 20)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (11, 21)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (12, 22)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (12, 23)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (13, 24)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (13, 25)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (14, 26)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (14, 27)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (15, 28)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (15, 29)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (16, 30)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (16, 31)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (17, 32)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (17, 33)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (18, 34)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (18, 35)
INSERT [dbo].[MakaleEtiket] ([MakaleNo], [EtiketNo]) VALUES (18, 36)
SET IDENTITY_INSERT [dbo].[Üye] ON 

INSERT [dbo].[Üye] ([ÜyeNo], [KullanıcıAdı], [Email], [Şifre], [AdSoyad], [ÜyeFoto], [YetkiNo]) VALUES (1, N'Burhan', N'burhan_gf5226@hotmail.com', N'burhan123', N'Burhan', N'/Uploads/ÜyeFoto/f2fba115-43fb-44d7-b284-d297e9c9dcbe.jpg', 1)
INSERT [dbo].[Üye] ([ÜyeNo], [KullanıcıAdı], [Email], [Şifre], [AdSoyad], [ÜyeFoto], [YetkiNo]) VALUES (2, N'Keremcikk', N'kerem@hotmail.com', N'kerem123', N'Kerem Çantaoğlu', N'/Uploads/ÜyeFoto/fc88e2fd-e3af-4ce3-b812-65f7cb4b2e26.jpg', 2)
SET IDENTITY_INSERT [dbo].[Üye] OFF
SET IDENTITY_INSERT [dbo].[Yetki] ON 

INSERT [dbo].[Yetki] ([YetkiNo], [YetkiAdı]) VALUES (1, N'Admin')
INSERT [dbo].[Yetki] ([YetkiNo], [YetkiAdı]) VALUES (2, N'Üye')
SET IDENTITY_INSERT [dbo].[Yetki] OFF
SET IDENTITY_INSERT [dbo].[Yorum] ON 

INSERT [dbo].[Yorum] ([YorumNo], [Yorumİçerik], [ÜyeNo], [MakaleNo], [YorumTarih]) VALUES (2, N'Deneme Yorumu', 1, 10, CAST(N'2019-05-13T12:36:08.967' AS DateTime))
SET IDENTITY_INSERT [dbo].[Yorum] OFF
ALTER TABLE [dbo].[Makale] ADD  CONSTRAINT [DF_Makale_MakaleTarih]  DEFAULT (getdate()) FOR [MakaleTarih]
GO
ALTER TABLE [dbo].[Yorum] ADD  CONSTRAINT [DF_Yorum_YorumTarih]  DEFAULT (getdate()) FOR [YorumTarih]
GO
ALTER TABLE [dbo].[Makale]  WITH CHECK ADD  CONSTRAINT [FK_Makale_Kategori] FOREIGN KEY([KategoriNo])
REFERENCES [dbo].[Kategori] ([KategoriNo])
GO
ALTER TABLE [dbo].[Makale] CHECK CONSTRAINT [FK_Makale_Kategori]
GO
ALTER TABLE [dbo].[Makale]  WITH CHECK ADD  CONSTRAINT [FK_Makale_Üye] FOREIGN KEY([ÜyeNo])
REFERENCES [dbo].[Üye] ([ÜyeNo])
GO
ALTER TABLE [dbo].[Makale] CHECK CONSTRAINT [FK_Makale_Üye]
GO
ALTER TABLE [dbo].[MakaleEtiket]  WITH CHECK ADD  CONSTRAINT [FK_MakaleEtiket_Etiket] FOREIGN KEY([EtiketNo])
REFERENCES [dbo].[Etiket] ([EtiketNo])
GO
ALTER TABLE [dbo].[MakaleEtiket] CHECK CONSTRAINT [FK_MakaleEtiket_Etiket]
GO
ALTER TABLE [dbo].[MakaleEtiket]  WITH CHECK ADD  CONSTRAINT [FK_MakaleEtiket_Makale] FOREIGN KEY([MakaleNo])
REFERENCES [dbo].[Makale] ([MakaleNo])
GO
ALTER TABLE [dbo].[MakaleEtiket] CHECK CONSTRAINT [FK_MakaleEtiket_Makale]
GO
ALTER TABLE [dbo].[Üye]  WITH CHECK ADD  CONSTRAINT [FK_Üye_Yetki] FOREIGN KEY([YetkiNo])
REFERENCES [dbo].[Yetki] ([YetkiNo])
GO
ALTER TABLE [dbo].[Üye] CHECK CONSTRAINT [FK_Üye_Yetki]
GO
ALTER TABLE [dbo].[Yorum]  WITH CHECK ADD  CONSTRAINT [FK_Yorum_Makale] FOREIGN KEY([MakaleNo])
REFERENCES [dbo].[Makale] ([MakaleNo])
GO
ALTER TABLE [dbo].[Yorum] CHECK CONSTRAINT [FK_Yorum_Makale]
GO
ALTER TABLE [dbo].[Yorum]  WITH CHECK ADD  CONSTRAINT [FK_Yorum_Üye] FOREIGN KEY([ÜyeNo])
REFERENCES [dbo].[Üye] ([ÜyeNo])
GO
ALTER TABLE [dbo].[Yorum] CHECK CONSTRAINT [FK_Yorum_Üye]
GO
