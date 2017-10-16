<%Session.CodePage = 1254%>
<!-- #include file="_temizle.asp"-->
<%
'Sabit Değişkenler
domain = Request.Form("domain")
xxemail =  Request.Form("email")
response.Write(domain)
strHost = "smtp.yandex.ru"
strHostPort = 465
strUsername = "noreply@"&domain
strMailPass = "20d08U89"
strMailBCC = "entegresoft@outlook.com"
'Sabit Değişkenler



set vt=server.createOBject("adodb.connection" ) 
vt.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("\App_Data\data.mdb") & ";Persist Security Info=False"

Set rs=Server.createobject("ADODB.Recordset")
rs.open "select * from email",vt,1,3

do while not rs.eof
select case Request.Form("domain")
case rs("DomainID")

if instr(request.Form("email"),"@") and instr(request.Form("email"),".") then

x1=Request.Form("ad")
x2=Request.Form("email")
x3=Request.Form("telefon")
x4=Request.Form("mesaj")
formadi=Request.Form("formadi")
formtipi=Request.Form("formtipi")
referans=Request.Form("referans")
sayfa=Request.Form("sayfa")
ipadres=Request.Form("ipadres")

strMailTo = rs("GidecekMail")
strSubject = domain & " Sitesinden Mesaj Var"

mesaj = "<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Gelen Sayfa</td><td width='476'>"&sayfa&"</td></tr><tr><td width='166' height='40'>&nbsp;Alan Adı</td><td width='476'>"&domain&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;Ad Soyad</td><td width='476'>" &cevir(x1)& "</td></tr><tr><td width='166' height='40'>&nbsp;E mail</td><td width='476'>" &x2& "</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>" &x3& "</td></tr><tr><td width='166' height='40'>&nbsp;Mesaj</td><td width='476'>" &cevir(x4)& "</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

response.Write(mesaj)

end if


end select 
rs.movenext
loop

rs.close
vt.close

select case Request.Form("domain")

case "fest-ile-30-yil.com"


if instr(request.Form("x2"),"@") and instr(request.Form("x2"),".") then

x1=Request.Form("x1")
x2=Request.Form("x2")
x3=Request.Form("x3")
x4=Request.Form("x4")
x5=Request.Form("x5")
formadi=Request.Form("formadi")
formtipi=Request.Form("formtipi")
referans=Request.Form("referans")
sayfa=Request.Form("sayfa")
ipadres=Request.Form("ipadres")

mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>Fest Travel 30. Yıl</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Gelen Sayfa</td><td width='476'>"&sayfa&"</td></tr><tr><td width='166' height='40'>&nbsp;Alan Adı</td><td width='476'>"&domain&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;Ad Soyad</td><td width='476'>" &cevir(x1)& "</td></tr><tr><td width='166' height='40'>&nbsp;E mail</td><td width='476'>" &x2& "</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>" &x3& "</td></tr><tr><td width='166' height='40'>&nbsp;Program</td><td width='476'>" &x4& "</td></tr><tr><td width='166' height='40'>&nbsp;Mesaj</td><td width='476'>" &cevir(x5)& "</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"



'if Referans="" then

'response.Redirect("index.asp")

'else

strHost = "smtp.fest-ile-30-yil.com"
strUsername = "noreply@fest-ile-30-yil.com"
strMailPass = "20d08U89"
strSubject="Rezervasyon Formu"


Set Mail = Server.CreateObject("Persits.MailSender")
Mail.Charset="ISO-8859-9"
Mail.Host = strHost
Mail.Username = strUsername
Mail.Password = strMailPass
Mail.From = strUsername
Mail.FromName = "Fest Travel"
Mail.AddAddress "30yil@festtravel.com"
Mail.AddBcc "entegresoft@outlook.com"
Mail.Subject = strSubject
Mail.IsHTML = True 
Mail.Body = mesaj & Chr(13) & Chr(10)
Mail.Send


mesaj1= "<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>Fest Travel 30. Yıl</td></tr><tr><td>Rezervasyon talebiniz bize ulaşmıştır. <br /><br /> Bilgilendirme için tarafınıza en kısa sürede geri dönüş yapılacaktır.<br /><br />İlginiz için teşekkür ederiz.<br /><br /><td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.fest-ile-30-yil.com' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>fest travel</a></td></tr></table>"

strSubject1="Rezervasyon Formunuz Alınmıştır."


Set Mail1 = Server.CreateObject("Persits.MailSender")
Mail1.Charset="ISO-8859-9"
Mail1.Host = strHost
Mail1.Username = strUsername
Mail1.Password = strMailPass
Mail1.From = strUsername
Mail1.FromName = "Fest Travel 30. Yıl"
Mail1.AddAddress x2
'Mail1.AddBcc "duzgun@entegresoft.com,entegresoft@outlook.com"
Mail1.Subject = strSubject1
Mail1.IsHTML = True 
Mail1.Body = mesaj1 & Chr(13) & Chr(10)
Mail1.Send



Session.Timeout = 1
Session("iletisim")="okay"


response.Redirect Request.ServerVariables("HTTP_REFERER") & "?ref=ok"

end if





case "kecinegg.com"

if instr(request.Form("email"),"@") and instr(request.Form("email"),".") then

select case Request.Form("formtipi")

case "iletisim"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
ad = request.Form("ad")
email = Request.Form("email")
telefon = Request.Form("telefon")
il = Request.Form("il")
ilce = Request.Form("ilce")
urun1 = Request.Form("urun1")
urun2 = Request.Form("urun2")
urun3 = Request.Form("urun3")
urun4 = Request.Form("urun4")
urun5 = Request.Form("urun5")
urun6 = Request.Form("urun6")
urun7 = Request.Form("urun7")
urun8 = Request.Form("urun8")
urun9 = Request.Form("urun9")
urun10 = Request.Form("urun10")
urun11 = Request.Form("urun11")
urun12 = Request.Form("urun12")
urun13 = Request.Form("urun13")
urun14 = Request.Form("urun14")
urun15 = Request.Form("urun15")
urun16 = Request.Form("urun16")
urun17 = Request.Form("urun17")
urun18 = Request.Form("urun18")
urun19 = Request.Form("urun19")
urun20 = Request.Form("urun20")
urun21 = Request.Form("urun21")
urun22 = Request.Form("urun22")
urun23 = Request.Form("urun23")
urun24 = Request.Form("urun24")
urun25 = Request.Form("urun25")
urun26 = Request.Form("urun26")
urun27 = Request.Form("urun27")
urun28 = Request.Form("urun28")
urun29 = Request.Form("urun29")
urun30 = Request.Form("urun30")
urun31 = Request.Form("urun31")
urun32 = Request.Form("urun32")
urun33 = Request.Form("urun33")
urun34 = Request.Form("urun34")
urun35 = Request.Form("urun35")
urun36 = Request.Form("urun36")
urun37 = Request.Form("urun37")
urun38 = Request.Form("urun38")
urun39 = Request.Form("urun39")
urun40 = Request.Form("urun40")
urun41 = Request.Form("urun41")
urun42 = Request.Form("urun42")
urun43 = Request.Form("urun43")
urun44 = Request.Form("urun44")
urun45 = Request.Form("urun45")
urun46 = Request.Form("urun46")
urun47 = Request.Form("urun47")
urun48 = Request.Form("urun48")
urun49 = Request.Form("urun49")
urun50 = Request.Form("urun50")
urun51 = Request.Form("urun51")
urun52 = Request.Form("urun52")
urun53 = Request.Form("urun53")
urun54 = Request.Form("urun54")
urun55 = Request.Form("urun55")
urun56 = Request.Form("urun56")
urun57 = Request.Form("urun57")
urun58 = Request.Form("urun58")
urun59 = Request.Form("urun59")
urun60 = Request.Form("urun60")
urun61 = Request.Form("urun61")
urun62 = Request.Form("urun62")
urun63 = Request.Form("urun63")
urun64 = Request.Form("urun64")
urun65 = Request.Form("urun65")

odeme = Request.Form("odeme")
mesaj = Request.Form("mesaj")


strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&ad&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;İl</td><td width='476'>"&ilce&"</td></tr><tr><td width='166' height='40'>&nbsp;İlce</td><td width='476'>"&il&"</td></tr><tr><td width='166' height='40'>&nbsp;Keçi Sütü</td><td width='476'>"&urun1&"</td></tr><tr><td width='166' height='40'>&nbsp;İnek Sütü</td><td width='476'>"&urun2&"</td></tr><tr><td width='166' height='40'>&nbsp;Yumurta 10lu</td><td width='476'>"&urun5&"</td></tr><tr><td width='166' height='40'>&nbsp;Yumurta 15 li</td><td width='476'>"&urun9&"</td></tr><tr><td width='166' height='40'>&nbsp;Yumurta 20 li</td><td width='476'>"&urun10&"</td></tr><tr><td width='166' height='40'>&nbsp;Yumurta 30 lu</td><td width='476'>"&urun11&"</td></tr><tr><td width='166' height='40'>&nbsp;Keçi Köy Peyniri</td><td width='476'>"&urun6&"</td></tr><tr><td width='166' height='40'>&nbsp;İnek Köy Peyniri</td><td width='476'>"&urun7&"</td></tr><tr><td width='166' height='40'>&nbsp;Salamura Keçi Peyniri</td><td width='476'>"&urun12&"</td></tr><tr><td width='166' height='40'>&nbsp;Van Otlu Peyniri</td><td width='476'>"&urun13&"</td></tr><tr><td width='166' height='40'>&nbsp;Çeçil Peyniri</td><td width='476'>"&urun14&"</td></tr><tr><td width='166' height='40'>&nbsp;Sepet Peyniri</td><td width='476'>"&urun15&"</td></tr><tr><td width='166' height='40'>&nbsp;Taze Kaşar</td><td width='476'>"&urun16&"</td></tr><tr><td width='166' height='40'>&nbsp;Çerkez Peyniri</td><td width='476'>"&urun17&"</td></tr><tr><td width='166' height='40'>&nbsp;Abazha Peyniri</td><td width='476'>"&urun18&"</td></tr><tr><td width='166' height='40'>&nbsp;Şavak Yağlı Tulum Peyniri</td><td width='476'>"&urun19&"</td></tr><tr><td width='166' height='40'>&nbsp;Keçi Lor Peyniri</td><td width='476'>"&urun20&"</td></tr><tr><td width='166' height='40'>&nbsp;Keçi Yoğurdu 900gr</td><td width='476'>"&urun3&"</td></tr><tr><td width='166' height='40'>&nbsp;Ev Tipi İnek Yoğurdu (2 kg)</td><td width='476'>"&urun21&"</td></tr><tr><td width='166' height='40'>&nbsp;Manda Yoğurdu (750 gr)</td><td width='476'>"&urun22&"</td></tr><tr><td width='166' height='40'>&nbsp;Süzme Yoğurdu</td><td width='476'>"&urun23&"</td></tr><tr><td width='166' height='40'>&nbsp;İnek Tereyağı</td><td width='476'>"&urun4&"</td></tr><tr><td width='166' height='40'>&nbsp;Keçi Tereyağı</td><td width='476'>"&urun24&"</td></tr><tr><td width='166' height='40'>&nbsp;Elazığ İnek Tereyağı</td><td width='476'>"&urun25&"</td></tr><tr><td width='166' height='40'>&nbsp;Yayık Keçi Tereyağı</td><td width='476'>"&urun8&"</td></tr><tr><td width='166' height='40'>&nbsp;Boşnak Kuru Et</td><td width='476'>"&urun26&"</td></tr><tr><td width='166' height='40'>&nbsp;Macahel Balı-Artvin (500 gr)</td><td width='476'>"&urun27&"</td></tr><tr><td width='166' height='40'>&nbsp;Çiçek Balı-Bolu (700 gr)</td><td width='476'>"&urun28&"</td></tr><tr><td width='166' height='40'>&nbsp;Ceviz Reçeli-Antakya (350 gr)</td><td width='476'>"&urun29&"</td></tr><tr><td width='166' height='40'>&nbsp; Keçi Sütlü ve Organik Esmer Şekerli Süt Reçeli (250 gr)</td><td width='476'>"&urun30&"</td></tr><tr><td width='166' height='40'>&nbsp;Çilek Reçeli</td><td width='476'>"&urun31&"</td></tr><tr><td width='166' height='40'>&nbsp;Böğürtlen Reçeli</td><td width='476'>"&urun32&"</td></tr><tr><td width='166' height='40'>&nbsp;Kızılcık Marmelatı</td><td width='476'>"&urun33&"</td></tr><tr><td width='166' height='40'>&nbsp;Erik Marmelatı</td><td width='476'>"&urun34&"</td></tr><tr><td width='166' height='40'>&nbsp;Kuşburnu Marmelatı</td><td width='476'>"&urun35&"</td></tr><tr><td width='166' height='40'>&nbsp;Harnup Keçibuynuzu Özü (800 gr)</td><td width='476'>"&urun37&"</td></tr><tr><td width='166' height='40'>&nbsp;Harnup Keçibuynuzu Özü (450 gr)</td><td width='476'>"&urun38&"</td></tr><tr><td width='166' height='40'>&nbsp;Üzüm Pekmezi (El Yapımı) (500 gr)</td><td width='476'>"&urun39&"</td></tr><tr><td width='166' height='40'>&nbsp;Tahin (El Yapımı) (500 gr)</td><td width='476'>"&urun40&"</td></tr><tr><td width='166' height='40'>&nbsp;Kan Portakalı Şurubu (500 gr)</td><td width='476'>"&urun41&"</td></tr><tr><td width='166' height='40'>&nbsp;Samandağ Biberi Salçası</td><td width='476'>"&urun42&"</td></tr><tr><td width='166' height='40'>&nbsp;Acı Biber Salçası</td><td width='476'>"&urun43&"</td></tr><tr><td width='166' height='40'>&nbsp;Tatlı Biber Salçası</td><td width='476'>"&urun44&"</td></tr><tr><td width='166' height='40'>&nbsp;Domates Salçası</td><td width='476'>"&urun45&"</td></tr><tr><td width='166' height='40'>&nbsp;Nar Ekşisi- Ekşisi (Ev Yapımı 500 gr)</td><td width='476'>"&urun46&"</td></tr><tr><td width='166' height='40'>&nbsp;Nar Ekşisi- Tatlı (Ev Yapımı 500 gr)</td><td width='476'>"&urun47&"</td></tr><tr><td width='166' height='40'>&nbsp;Sumak Ekşisi (Ev Yapımı 500 gr)</td><td width='476'>"&urun48&"</td></tr><tr><td width='166' height='40'>&nbsp;Erik Ekşisi (Ev Yapımı 500 gr)</td><td width='476'>"&urun49&"</td></tr><tr><td width='166' height='40'>&nbsp;Alıç Sirkesi (KEMAL ÜNLÜ 250 gr)</td><td width='476'>"&urun50&"</td></tr><tr><td width='166' height='40'>&nbsp;Elma Sirkesi (KEMAL ÜNLÜ 250 gr)</td><td width='476'>"&urun51&"</td></tr><tr><td width='166' height='40'>&nbsp;Üzüm Sirkesi (KEMAL ÜNLÜ 500 gr)</td><td width='476'>"&urun52&"</td></tr><tr><td width='166' height='40'>&nbsp;Salamura Zahter (500 gr)</td><td width='476'>"&urun53&"</td></tr><tr><td width='166' height='40'>&nbsp;Zeytinyağlı Kekik (600 gr)</td><td width='476'>"&urun54&"</td></tr><tr><td width='166' height='40'>&nbsp;Doğal Turşu Çeşitleri</td><td width='476'>"&urun55&"</td></tr><tr><td width='166' height='40'>&nbsp;Siyah Zeytin (Jumbo Boy Elek Üstü)</td><td width='476'>"&urun56&"</td></tr><tr><td width='166' height='40'>&nbsp;Yeşil Zeytin (Taş Kırma Özel Seçim)</td><td width='476'>"&urun57&"</td></tr><tr><td width='166' height='40'>&nbsp;Yeşil Zeytin (Jumbo Çizik)</td><td width='476'>"&urun58&"</td></tr><tr><td width='166' height='40'>&nbsp;Zeytin Yağı (Soğuk Sızma, 0.5 Dizyem)</td><td width='476'>"&urun59&"</td></tr><tr><td width='166' height='40'>&nbsp;Maş Fasulyesi</td><td width='476'>"&urun60&"</td></tr><tr><td width='166' height='40'>&nbsp;Acılı Doğal Tarhana (500 gr)</td><td width='476'>"&urun61&"</td></tr><tr><td width='166' height='40'>&nbsp;Acısız Doğal Tarhana (500 gr)</td><td width='476'>"&urun62&"</td></tr><tr><td width='166' height='40'>&nbsp;Çedene Menengiç Kahvesi (400 gr)</td><td width='476'>"&urun63&"</td></tr><tr><td width='166' height='40'>&nbsp;Mırra Kahvesi (750 ml)</td><td width='476'>"&urun64&"</td></tr><tr><td width='166' height='40'>&nbsp;Bısmil Kahvesi(200 gr)</td><td width='476'>"&urun65&"</td></tr><tr><td width='166' height='40'>&nbsp;Ödeme</td><td width='476'>"&odeme&"</td></tr><tr><td width='166' height='40'>&nbsp;Adres</td><td width='476'>"&mesaj&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "ersel@entegresoft.com,info@kecinegg.com"
strSubject = "kecinegg Sitesinden Mesaj Var"

case "Form3"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
isim = request.Form("isim")
email = Request.Form("email")
telefon = Request.Form("telefon")
mesaj = Request.Form("mesaj")


strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&isim&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;Sorunuz</td><td width='476'>"&mesaj&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "ersel@entegresoft.com,info@kecinegg.com"
strSubject = "kecinegg Sitesinden Mesaj Var"

end select


end if



case "ifkd.org"

if instr(request.Form("email"),"@") and instr(request.Form("email"),".") then

select case Request.Form("formtipi")

case "iletisim"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
ad = request.Form("ad")
email = Request.Form("email")
telefon = Request.Form("telefon")
mesaj = Request.Form("mesaj")


strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&ad&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;Sorunuz</td><td width='476'>"&mesaj&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "bilgi@ifkd.org"
strSubject = "ifkd.org Sitesinden Mesaj Var"

case "kursiyer"

ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
formtipi = request.Form("formtipi")
isim = request.Form("isim")
email = request.Form("email")
dogum = request.Form("dogum")
meslek = request.Form("meslek")
ogrenim = request.Form("ogrenim")
telefon = request.Form("telefon")
gsm = request.Form("gsm")




strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&isim&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Doğum Tarihi</td><td width='476'>"&dogum&"</td></tr><tr><td width='166' height='40'>&nbsp;Meslek</td><td width='476'>"&meslek&"</td></tr><tr><td width='166' height='40'>&nbsp;Öğrenim Durumu</td><td width='476'>"&ogrenim&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;GSM</td><td width='476'>"&gsm&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "bilgi@ifkd.org"
strSubject = "ifkd.org Sitesinden Mesaj Var"

end select


end if






case "kulturkarincalari.org"

if instr(request.Form("email"),"@") and instr(request.Form("email"),".") then

select case Request.Form("formtipi")

case "iletisim"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
ad = request.Form("ad")
email = Request.Form("email")
telefon = Request.Form("telefon")
mesaj = Request.Form("mesaj")


strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&ad&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;Sorunuz</td><td width='476'>"&mesaj&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@kulturkarincalari.org,ersel@entegresoft.com"
strSubject = "kulturkarincalari.org Sitesinden Mesaj Var"

case "kursiyer"

ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
formtipi = request.Form("formtipi")
isim = request.Form("isim")
dogum = request.Form("dogum")
cinsiyet = request.Form("cinsiyet")
tel = request.Form("tel")
email = request.Form("email")
meslek = request.Form("meslek")
bolum = request.Form("bolum")
kurum = request.Form("kurum")
dil = request.Form("dil")
zaman = request.Form("zaman")
alan = request.Form("alan")
diger = request.Form("diger")
katilim = request.Form("katilim")
baska = request.Form("baska")







strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&isim&"</td></tr><tr><td width='166' height='40'>&nbsp;Doğum Tarihi</td><td width='476'>"&dogum&"</td></tr><tr><td width='166' height='40'>&nbsp;cinsiyet</td><td width='476'>"&cinsiyet&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&tel&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Meslek</td><td width='476'>"&meslek&"</td></tr><tr><td width='166' height='40'>&nbsp;Universite/bölüm</td><td width='476'>"&bolum&"</td></tr><tr><td width='166' height='40'>&nbsp;Çalışılan Firma / Kurum</td><td width='476'>"&kurum&"</td></tr><tr><td width='166' height='40'>&nbsp;Çeviri yapılacak dil</td><td width='476'>"&dil&"</td></tr><tr><td width='166' height='40'>&nbsp;Proje için ayrılacak zaman</td><td width='476'>"&zaman&"</td></tr><tr><td width='166' height='40'>&nbsp;Katkı sağlanacak alan</td><td width='476'>"&alan&"</td></tr><tr><td width='166' height='40'>&nbsp;Diğer</td><td width='476'>"&diger&"</td></tr><tr><td width='166' height='40'>&nbsp;herhangi bir projeye katıldınızmı?</td><td width='476'>"&katilim&"</td></tr><tr><td width='166' height='40'>&nbsp;başka bir projeye katıldınızmı?</td><td width='476'>"&baska&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@kulturkarincalari.org,ersel@entegresoft.com"
strSubject = "kulturkarincalari.org Sitesinden Mesaj Var"





end select


end if



case "atlasyapigayrimenkul.com.tr"

if instr(request.Form("email"),"@") and instr(request.Form("email"),".") then

select case Request.Form("formtipi")

case "iletisim"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
ad = request.Form("ad")
email = Request.Form("email")
telefon = Request.Form("telefon")
mesaj = Request.Form("mesaj")


strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&ad&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;Sorunuz</td><td width='476'>"&mesaj&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@atlasyapigayrimenkul.com.tr"
strSubject = "Atlas yapi Sitesinden Mesaj Var"

case "insankaynaklari"

formtipi = request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
ad = request.Form("ad")
email = request.Form("email")
GSM = request.Form("GSM")
x4 = request.Form("x4")
mesaj = request.Form("mesaj")




strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&ad&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&GSM&"</td></tr><tr><td width='166' height='40'>&nbsp;cv</td><td width='476'>"&x4&"</td></tr><tr><td width='166' height='40'>&nbsp;Sorunuz</td><td width='476'>"&mesaj&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "ersel@entegresoft.com"
strSubject = "Atlas Yapi Sitesinden Mesaj Var"

end select


end if




case "sigortabulutu.com"

if instr(request.Form("email"),"@") and instr(request.Form("email"),".") then

select case Request.Form("formtipi")




case "Form2"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
ad = request.Form("ad")
email = Request.Form("email")
telefon = Request.Form("telefon")
mesaj = Request.Form("mesaj")


strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&ad&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;Sorunuz</td><td width='476'>"&mesaj&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@ozguvensigorta.com"
strSubject = "sigortabulutu.com Sitesinden Mesaj Var"

case "trafic"

formtipi = request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
ad = request.Form("ad")
tc = request.Form("tc")
plaka = request.Form("plaka")
tescil = request.Form("tescil")
telefon = request.Form("telefon")
email = request.Form("email")
il = request.Form("il")


strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&ad&"</td></tr><tr><td width='166' height='40'>&nbsp;TC-VKN</td><td width='476'>"&tc&"</td></tr><tr><td width='166' height='40'>&nbsp;Plaka</td><td width='476'>"&plaka&"</td></tr><tr><td width='166' height='40'>&nbsp;Tescil Belge</td><td width='476'>"&tescil&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;E -posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;İl İlçe</td><td width='476'>"&il&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@ozguvensigorta.com"
strSubject = "sigorta bulutu Sitesinden Mesaj Var"


case "Formkonut"

formtipi = request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
ad = request.Form("ad")
tc = request.Form("tc")
riziko = request.Form("riziko")
m2 = request.Form("m2")
ilk = request.Form("ilk")
insa = request.Form("insa")
esya = request.Form("esya")
cam = request.Form("cam")
telefon = request.Form("telefon")
email = request.Form("email")

strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&ad&"</td></tr><tr><td width='166' height='40'>&nbsp;TC-VKN</td><td width='476'>"&tc&"</td></tr><tr><td width='166' height='40'>&nbsp;Riziko Adresi</td><td width='476'>"&riziko&"</td></tr><tr><td width='166' height='40'>&nbsp;M2</td><td width='476'>"&m2&"</td></tr><tr><td width='166' height='40'>&nbsp;Bina Sahibimisiniz</td><td width='476'>"&ilk&"</td></tr><tr><td width='166' height='40'>&nbsp;insa Yılı</td><td width='476'>"&insa&"</td></tr><tr><td width='166' height='40'>&nbsp;Eşya Bedeli</td><td width='476'>"&esya&"</td></tr><tr><td width='166' height='40'>&nbsp;Cam Bedeli</td><td width='476'>"&cam&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@ozguvensigorta.com"
strSubject = "sigorta bulutu Sitesinden Mesaj Var"


case "Formkasko"

formtipi = request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
ad = request.Form("ad")
tc = request.Form("tc")
plaka = request.Form("plaka")
tescil = request.Form("tescil")
telefon = request.Form("telefon")
email = request.Form("email")
il = request.Form("il")


strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&ad&"</td></tr><tr><td width='166' height='40'>&nbsp;TC-VKN</td><td width='476'>"&tc&"</td></tr><tr><td width='166' height='40'>&nbsp;Plaka</td><td width='476'>"&plaka&"</td></tr><tr><td width='166' height='40'>&nbsp;Tescil Belge</td><td width='476'>"&tescil&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;E -posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;İl İlçe</td><td width='476'>"&il&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@ozguvensigorta.com"
strSubject = "sigorta bulutu Sitesinden Mesaj Var"


case "Formdask"

formtipi = request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
ad = request.Form("ad")
tc = request.Form("tc")
riziko = request.Form("riziko")
m2 = request.Form("m2")
ilk = request.Form("ilk")
insa = request.Form("insa")
telefon = request.Form("telefon")
email = request.Form("email")
il = request.Form("il")

strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&ad&"</td></tr><tr><td width='166' height='40'>&nbsp;İl İlçe</td><td width='476'>"&il&"</td></tr><tr><td width='166' height='40'>&nbsp;Riziko Adresi</td><td width='476'>"&riziko&"</td></tr><tr><td width='166' height='40'>&nbsp;M2</td><td width='476'>"&m2&"</td></tr><tr><td width='166' height='40'>&nbsp;İlk Sigortamı</td><td width='476'>"&ilk&"</td></tr><tr><td width='166' height='40'>&nbsp;insa Yılı</td><td width='476'>"&insa&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@ozguvensigorta.com"
strSubject = "sigorta bulutu Sitesinden Mesaj Var"

case "Formisyeri"

formtipi = request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
ad = request.Form("ad")
tc = request.Form("tc")
riziko = request.Form("riziko")
m2 = request.Form("m2")
faaliyet = request.Form("faaliyet")
ilk = request.Form("ilk")
bina = request.Form("bina")
bedel = request.Form("bedel")
emtea = request.Form("emtea")
demirbas = request.Form("demirbas")
teminat = request.Form("teminat")
cam = request.Form("cam")
makine = request.Form("makine")
telefon = request.Form("telefon")
email = request.Form("email")

strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&ad&"</td></tr><tr><td width='166' height='40'>&nbsp;TC-VKN</td><td width='476'>"&tc&"</td></tr><tr><td width='166' height='40'>&nbsp;Riziko Adresi</td><td width='476'>"&riziko&"</td></tr><tr><td width='166' height='40'>&nbsp;M2</td><td width='476'>"&m2&"</td></tr><tr><td width='166' height='40'>&nbsp;Faaliyet Konusu</td><td width='476'>"&faaliyet&"</td></tr><tr><td width='166' height='40'>&nbsp;İlk Sigortamı</td><td width='476'>"&ilk&"</td></tr><tr><td width='166' height='40'>&nbsp;Bina Sahibimisiniz</td><td width='476'>"&bina&"</td></tr><tr><td width='166' height='40'>&nbsp;Dekorasyon Bedeli</td><td width='476'>"&bedel&"</td></tr><tr><td width='166' height='40'>&nbsp;Emtea Bedeli</td><td width='476'>"&emtea&"</td></tr><tr><td width='166' height='40'>&nbsp;Demirbaş Bedeli</td><td width='476'>"&demirbas&"</td></tr><tr><td width='166' height='40'>&nbsp;Çalışan Sayısı</td><td width='476'>"&teminat&"</td></tr><tr><td width='166' height='40'>&nbsp;Cam Teminatı</td><td width='476'>"&cam&"</td></tr><tr><td width='166' height='40'>&nbsp;Makine Bedeli</td><td width='476'>"&makine&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@ozguvensigorta.com"
strSubject = "sigorta bulutu Sitesinden Mesaj Var"


case "Formsaglik"

formtipi = request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
tc = request.Form("tc")
ad = request.Form("ad")
dogum = request.Form("dogum")
boy = request.Form("boy")
kilo = request.Form("kilo")
police = request.Form("police")
telefon = request.Form("telefon")
email = request.Form("email")
il = request.Form("il")

strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;TC</td><td width='476'>"&tc&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&ad&"</td></tr><tr><td width='166' height='40'>&nbsp;Doğum Tarihi</td><td width='476'>"&dogum&"</td></tr><tr><td width='166' height='40'>&nbsp;İl İlçe</td><td width='476'>"&il&"</td></tr><tr><td width='166' height='40'>&nbsp;kilo</td><td width='476'>"&kilo&"</td></tr><tr><td width='166' height='40'>&nbsp;Police Bilgileri</td><td width='476'>"&police&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@ozguvensigorta.com"
strSubject = "sigorta bulutu Sitesinden Mesaj Var"



end select


end if


case "yesimbanuaykan.com"

if instr(request.Form("email"),"@") and instr(request.Form("email"),".") then

select case Request.Form("formtipi")

case "Form2"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
ad = request.Form("ad")
email = Request.Form("email")
telefon = Request.Form("telefon")
mesaj = Request.Form("mesaj")


strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&ad&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;Sorunuz</td><td width='476'>"&mesaj&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@yesimbanuaykan.com,ersel@entegresoft.com"
strSubject = "yesimbanuaykan.com Sitesinden Mesaj Var"

case "seans"

ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
formtipi = request.Form("formtipi")
x1 = request.Form("x1")
x2 = request.Form("x2")
x3 = request.Form("x3")
x4 = request.Form("x4")
x5 = request.Form("x5")
x6 = request.Form("x6")
x7 = request.Form("x7")
x8 = request.Form("x8")
x9 = request.Form("x9")
x10 = request.Form("x10")
x11 = request.Form("x11")
x12 = request.Form("x12")
x13 = request.Form("x13")
email = request.Form("email")



strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='8%'>YEŞİM'İ NEREDEN DUYDUNUZ?</td><td width='90%'>"&cevir(x1)&"</td></tr><tr><td>BİR ÇOK YAŞAM KOÇU, TERAPİST, ŞİFACI VARKEN NEDEN YEŞİM İLE ÇALIŞMAK İSTİYORSUNUZ? NEDEN YEŞİM'İN SİZİN İÇİN DOĞRU KOÇ OLDUĞUNU DÜŞÜNÜYORSUNUZ?</td><td>"&x2&"</td></tr><tr><td>HAYATINIZIN HANGİ ALANLARINI İSTEDİĞİNİZ GİBİ YAŞAYAMIYORSUNUZ VE NEDEN?</td><td>"&x3&"</td></tr><tr><td>PROFESYONEL OLARAK NE YAPIYORSUNUZ VEYA NE YAPMAK İSTERSİNİZ?</td><td>"&cevir(x4)&"</td></tr><tr><td>DAHA ÖNCE BİR KOÇ İLE ÇALIŞTINIZ MI? EVET İSE, DENEYİMİNİZ NE OLDU?</td><td>"&cevir(x5)&"</td></tr><tr><td>HAYATINIZDAKİ SONUÇLARDAN KİMİN YADA NEYİN SORUMLU OLDUĞUNU DÜŞÜNÜYORSUNUZ?</td><td>"&cevir(x6)&"</td></tr><tr><td>DAHA FARKLI SONUÇLAR ELDE ETMEK İÇİN NE YAPMANIZ GEREKTİĞİNE İNANIYORSUNUZ?</td><td>"&cevir(x7)&"</td></tr><tr><td>HAYATINIZIN HANGİ ALANINDA DEĞİŞİKLİKLER YAPMAK İSTİYORSUNUZ? ( İLİŞKİLER, SAĞLIK, SPİRUTÜELLİK, AİLE, İŞ) NASIL BİR DEĞİŞİM GÖRMEK İSTERSİNİZ? AÇIKLAYIN</td><td>"&cevir(x8)&"</td></tr><tr><td>İSTEDİĞİNİZ HAYATI YAŞAMANIZA SEBEP OLAN EN BÜYÜK ENGEL NEDİR?</td><td>"&cevir(x9)&"</td></tr><tr><td>EĞER BU ENGELDEN KURTULURSAK, BİR YIL SONRA HAYATINIZ NASIL OLUR?</td><td>"&cevir(x10)&"</td></tr><tr><td>İSTEDİĞİNİZ HAYATI YARATMAYI NE KADAR İSTİYORSUNUZ? (1 EN DÜŞÜK 10 EN YÜKSEK )</td><td>"&cevir(x11)&"</td></tr><tr><td>SİZE DAHA FAZLA YARDIMCI OLABİLMEM İÇİN HAKKINIZDA BİLMEM GEREKEN BAŞKA BİR ŞEY OLDUĞUNU DÜŞÜNÜYORMUSUNUZ?</td><td>"&cevir(x12)&"</td></tr><tr><td>İLETİŞİM BİLGİLERİNİZ (Ad Soyad, E-posta, Telefon)</td><td>"&cevir(x13)&"</td></tr><tr><td>E-POSTA</td><td>"&email&"</td></tr></table>"


strMailTo = "info@yesimbanuaykan.com"
strSubject = "yesimbanuaykan.com Sitesinden Mesaj Var"

end select


end if




case "belegriligi.com"

if instr(request.Form("email"),"@") and instr(request.Form("email"),".") then

select case Request.Form("formtipi")

case "contact"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
isim = request.Form("isim")
email=Request.Form("email")
tel=Request.Form("tel")
aciklama=Request.Form("aciklama")


strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&isim&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&tel&"</td></tr><tr><td width='166' height='40'>&nbsp;Mesaj</td><td width='476'>"&aciklama&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@superslowzoneturkey.com"
strSubject = "belegriligi.com Sitesinden Mesaj Var"

case "franchise"

formtipi = request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
isim = Request.Form("isim")
dogum = Request.Form("dogum")
meslek = Request.Form("meslek")
tel = Request.Form("tel")
email = Request.Form("email")
sehir = Request.Form("sehir")
tarih = Request.Form("tarih")
nedeni = Request.Form("nedeni")


strSubject = "Franchise Formu"
mesaj ="<h3>Franchise Formu</h3><br /><h5>Ip Adres : "&ipadres&"</h5><h5>Formun Geldigi Sayfa : "&sayfa&"</h5><h5>Form Adı : "&formadi&"</h5><h5>Geldigi Domain : "&domain&"</h5><h5>Referans Sayfa : "&referans&"</h5><table width='100%' border='0' cellspacing='10' cellpadding='10'><tr><td width='8%'>Adı Soyadı</td><td width='2%'>:</td><td width='90%'>"&cevir(isim)&"</td></tr><tr><td>Dogum</td><td>:</td><td>"&dogum&"</td></tr><tr><td>Meslek</td><td>:</td><td>"&cevir(meslek)&"</td></tr><tr><td>Telefon</td><td>:</td><td>"&tel&"</td></tr><tr><td>E-mail</td><td>:</td><td>"&email&"</td></tr><tr><td>Franchise Almak istenilen Şehir</td><td>:</td><td>"&cevir(sehir)&"</td></tr><tr><td>Franchise Açılması Düşünülen Tarih</td><td>:</td><td>"&tarih&"</td></tr><tr><td>Franchise Almak İstenmesinin Nedeni</td><td>:</td><td>"&cevir(nedeni)&"</td></tr></table>"

strMailTo = "info@superslowzoneturkey.com"
strSubject = "belegriligi.com Sitesinden Mesaj Var"
end select


end if



case "belfitigitedavileri.net"

select case Request.Form("formadi")

case "iletisim"

formtipi = request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
isim=Request.Form("isim") 'Formdan alınan Ad Değeri
email=Request.Form("email") 'Formdan alınan Email Değeri
tel=Request.Form("tel") 'Formdan alınan tel Değeri
aciklama=Request.Form("aciklama") 'Formdan alınan Message Değeri

strSubject = "İletisim Formu"
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&isim&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&tel&"</td></tr><tr><td width='166' height='40'>&nbsp;Mesaj</td><td width='476'>"&aciklama&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@superslowzoneturkey.com"
strSubject = "belegriligi.com Sitesinden Mesaj Var"


case "franchise"

formtipi = request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
isim = Request.Form("isim")
dogum = Request.Form("dogum")
meslek = Request.Form("meslek")
tel = Request.Form("tel")
mail = Request.Form("mail")
sehir = Request.Form("sehir")
tarih = Request.Form("tarih")
nedeni = Request.Form("nedeni")


strSubject = "Franchise Formu"
mesaj ="<h5>Ip Adres : "&ipadres&"</h5><h5>Formun Geldigi Sayfa : "&sayfa&"</h5><h5>Form Adı : "&formadi&"</h5><h5>Geldigi Domain : "&domain&"</h5><h5>Referans Sayfa : "&referans&"</h5><table width='100%' border='0' cellspacing='10' cellpadding='10'><tr><td width='8%'>Adı Soyadı</td><td width='2%'>:</td><td width='90%'>"&cevir(isim)&"</td></tr><tr><td>Dogum</td><td>:</td><td>"&dogum&"</td></tr><tr><td>Meslek</td><td>:</td><td>"&cevir(meslek)&"</td></tr><tr><td>Telefon</td><td>:</td><td>"&tel&"</td></tr><tr><td>E-mail</td><td>:</td><td>"&mail&"</td></tr><tr><td>Franchise Almak istenilen Şehir</td><td>:</td><td>"&cevir(sehir)&"</td></tr><tr><td>Franchise Açılması Düşünülen Tarih</td><td>:</td><td>"&tarih&"</td></tr><tr><td>Franchise Almak İstenmesinin Nedeni</td><td>:</td><td>"&cevir(nedeni)&"</td></tr></table>"

strMailTo = "info@superslowzoneturkey.com"
strSubject = "belegriligi.com Sitesinden Mesaj Var"

End Select




case "boyunegriligi.com"

select case Request.Form("formadi")

case "iletisim"

formtipi = request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
isim=Request.Form("isim") 'Formdan alınan Ad Değeri
email=Request.Form("email") 'Formdan alınan Email Değeri
tel=Request.Form("tel") 'Formdan alınan tel Değeri
aciklama=Request.Form("aciklama") 'Formdan alınan Message Değeri

strSubject = "İletisim Formu"
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&isim&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&tel&"</td></tr><tr><td width='166' height='40'>&nbsp;Mesaj</td><td width='476'>"&aciklama&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@superslowzoneturkey.com"
strSubject = "belegriligi.com Sitesinden Mesaj Var"

case "franchise"

formtipi = request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
isim = Request.Form("isim")
dogum = Request.Form("dogum")
meslek = Request.Form("meslek")
tel = Request.Form("tel")
mail = Request.Form("mail")
sehir = Request.Form("sehir")
tarih = Request.Form("tarih")
nedeni = Request.Form("nedeni")


strSubject = "Franchise Formu"
mesaj ="<h3>Franchise Formu</h3><br /><h5>Ip Adres : "&ipadres&"</h5><h5>Formun Geldigi Sayfa : "&sayfa&"</h5><h5>Form Adı : "&formadi&"</h5><h5>Geldigi Domain : "&domain&"</h5><h5>Referans Sayfa : "&referans&"</h5><table width='100%' border='0' cellspacing='10' cellpadding='10'><tr><td width='8%'>Adı Soyadı</td><td width='2%'>:</td><td width='90%'>"&cevir(isim)&"</td></tr><tr><td>Dogum</td><td>:</td><td>"&dogum&"</td></tr><tr><td>Meslek</td><td>:</td><td>"&cevir(meslek)&"</td></tr><tr><td>Telefon</td><td>:</td><td>"&tel&"</td></tr><tr><td>E-mail</td><td>:</td><td>"&mail&"</td></tr><tr><td>Franchise Almak istenilen Şehir</td><td>:</td><td>"&cevir(sehir)&"</td></tr><tr><td>Franchise Açılması Düşünülen Tarih</td><td>:</td><td>"&tarih&"</td></tr><tr><td>Franchise Almak İstenmesinin Nedeni</td><td>:</td><td>"&cevir(nedeni)&"</td></tr></table>"

strMailTo = "info@superslowzoneturkey.com"
strSubject = "belegriligi.com Sitesinden Mesaj Var"

End Select




case "durusbozuklugu.com"

select case Request.Form("formadi")

case "iletisim"

formtipi = request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
isim=Request.Form("isim") 'Formdan alınan Ad Değeri
email=Request.Form("email") 'Formdan alınan Email Değeri
tel=Request.Form("tel") 'Formdan alınan tel Değeri
aciklama=Request.Form("aciklama") 'Formdan alınan Message Değeri

strSubject = "İletisim Formu"
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&isim&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&tel&"</td></tr><tr><td width='166' height='40'>&nbsp;Mesaj</td><td width='476'>"&aciklama&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@superslowzoneturkey.com"
strSubject = "belegriligi.com Sitesinden Mesaj Var"


case "franchise"

formtipi = request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
isim = Request.Form("isim")
dogum = Request.Form("dogum")
meslek = Request.Form("meslek")
tel = Request.Form("tel")
mail = Request.Form("mail")
sehir = Request.Form("sehir")
tarih = Request.Form("tarih")
nedeni = Request.Form("nedeni")


strSubject = "Franchise Formu"
mesaj ="<h3>Franchise Formu</h3><br /><h5>Ip Adres : "&ipadres&"</h5><h5>Formun Geldigi Sayfa : "&sayfa&"</h5><h5>Form Adı : "&formadi&"</h5><h5>Geldigi Domain : "&domain&"</h5><h5>Referans Sayfa : "&referans&"</h5><table width='100%' border='0' cellspacing='10' cellpadding='10'><tr><td width='8%'>Adı Soyadı</td><td width='2%'>:</td><td width='90%'>"&cevir(isim)&"</td></tr><tr><td>Dogum</td><td>:</td><td>"&dogum&"</td></tr><tr><td>Meslek</td><td>:</td><td>"&cevir(meslek)&"</td></tr><tr><td>Telefon</td><td>:</td><td>"&tel&"</td></tr><tr><td>E-mail</td><td>:</td><td>"&mail&"</td></tr><tr><td>Franchise Almak istenilen Şehir</td><td>:</td><td>"&cevir(sehir)&"</td></tr><tr><td>Franchise Açılması Düşünülen Tarih</td><td>:</td><td>"&tarih&"</td></tr><tr><td>Franchise Almak İstenmesinin Nedeni</td><td>:</td><td>"&cevir(nedeni)&"</td></tr></table>"

strMailTo = "info@superslowzoneturkey.com"
strSubject = "belegriligi.com Sitesinden Mesaj Var"

End Select





case "kasguclendirme.com"

select case Request.Form("formadi")

case "iletisim"

formtipi = request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
isim=Request.Form("isim") 'Formdan alınan Ad Değeri
email=Request.Form("email") 'Formdan alınan Email Değeri
tel=Request.Form("tel") 'Formdan alınan tel Değeri
aciklama=Request.Form("aciklama") 'Formdan alınan Message Değeri

strSubject = "İletisim Formu"
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&isim&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&tel&"</td></tr><tr><td width='166' height='40'>&nbsp;Mesaj</td><td width='476'>"&aciklama&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@superslowzoneturkey.com"
strSubject = "belegriligi.com Sitesinden Mesaj Var"


case "franchise"

formtipi = request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
isim = Request.Form("isim")
dogum = Request.Form("dogum")
meslek = Request.Form("meslek")
tel = Request.Form("tel")
mail = Request.Form("mail")
sehir = Request.Form("sehir")
tarih = Request.Form("tarih")
nedeni = Request.Form("nedeni")


strSubject = "Franchise Formu"
mesaj ="<h3>Franchise Formu</h3><br /><h5>Ip Adres : "&ipadres&"</h5><h5>Formun Geldigi Sayfa : "&sayfa&"</h5><h5>Form Adı : "&formadi&"</h5><h5>Geldigi Domain : "&domain&"</h5><h5>Referans Sayfa : "&referans&"</h5><table width='100%' border='0' cellspacing='10' cellpadding='10'><tr><td width='8%'>Adı Soyadı</td><td width='2%'>:</td><td width='90%'>"&cevir(isim)&"</td></tr><tr><td>Dogum</td><td>:</td><td>"&dogum&"</td></tr><tr><td>Meslek</td><td>:</td><td>"&cevir(meslek)&"</td></tr><tr><td>Telefon</td><td>:</td><td>"&tel&"</td></tr><tr><td>E-mail</td><td>:</td><td>"&mail&"</td></tr><tr><td>Franchise Almak istenilen Şehir</td><td>:</td><td>"&cevir(sehir)&"</td></tr><tr><td>Franchise Açılması Düşünülen Tarih</td><td>:</td><td>"&tarih&"</td></tr><tr><td>Franchise Almak İstenmesinin Nedeni</td><td>:</td><td>"&cevir(nedeni)&"</td></tr></table>"

strMailTo = "info@superslowzoneturkey.com"
strSubject = "belegriligi.com Sitesinden Mesaj Var"

End Select


case "armoniabodrum.com"


soyadi=Request.form("soyadi")
adi= Request.form("adi")
dogumgun=Request.form("dogumgun")&" / "&Request.form("dogumay")&" / "&Request.form("dogumyil")
bay=Request.form("cins")
	Select Case Request.form("departman")
		case "0":
			departman = "Seçilmedi"
		case "1":
			departman = "Rezervasyon"
		case "2":
			departman = "Misafir İlişkileri"
		case "3":
			departman = "Satış & Pazarlama"
		case "4":
			departman = "İnsan Kaynakları"
	End Select	
telefon=Request.form("telefon")
faks=Request.form("faks")
e_posta=Request.form("e_posta")
mesajx=Request.form("mesaj")


mesaj = "<table width=430 border=0 cellpadding=0 cellspacing=0><tr><td height=20 colspan=3 class=07_text><table width=100% height=20 border=0 cellpadding=0 cellspacing=0><tr><td height=30><font face=Verdana size=2 color=#000000>Tarih / Saat:" & date() & " / " & time() & "</td></tr></table><br><table width=100% height=20 border=0 cellpadding=0 cellspacing=0><tr><td height=30 bgcolor=ecebf1>&nbsp;&nbsp;<font face=Verdana size=2 color=#000000><b>İLETİŞİM FORMU</b></font></td></tr></table></td></tr><tr><td width=48>&nbsp;</td><td>&nbsp;</td><td width=48>&nbsp;</td></tr><tr><td colspan=3 valign=top><table width=100% border=0 cellpadding=0 cellspacing=0> <tr> <td width=161 height=25 valign=top><font face=Verdana size=2 color=#000000>Soyadı</font></td><td width=10 height=25 valign=top><font face=Verdana size=2 color=#000000>:</font></td><td width=259 height=25 valign=top><font face=Verdana size=2 color=#000000>" & soyadi & "</font></td></tr><tr> <td width=161 height=25 valign=top><font face=Verdana size=2 color=#000000>Adı</font></td><td width=10 height=25 valign=top><font face=Verdana size=2 color=#000000>:</font></td><td width=259 height=25 valign=top><font face=Verdana size=2 color=#000000>" & adi & "</font></td></tr><tr><td width=161 height=25 valign=top><font face=Verdana size=2 color=#000000>Doğum Tarihi</font></td><td height=25 valign=top><font face=Verdana size=2 color=#000000>:</font></td><td height=25 valign=top><font face=Verdana size=2 color=#000000>" & dogumgun & "</font></td></tr><tr><td width=161 height=25 valign=top><font face=Verdana size=2 color=#000000>Cinsiyeti</font></td><td height=25 valign=top><font face=Verdana size=2 color=#000000>:</font></td><td height=25 valign=top><font face=Verdana size=2 color=#000000>" & bay & "</font></td></tr><tr>  <td width=161 height=25 valign=top><font face=Verdana size=2 color=#000000>Departman</font></td><td height=25 valign=top><font face=Verdana size=2 color=#000000>:</font></td><td height=25 valign=top><font face=Verdana size=2 color=#000000>" & departman & "</font></td></tr><tr>  <td width=161 height=25 valign=top><font face=Verdana size=2 color=#000000>Telefon</font></td><td height=25 valign=top><font face=Verdana size=2 color=#000000>:</font></td><td height=25 valign=top><font face=Verdana size=2 color=#000000>" & telefon & "</font></td></tr><tr> <td width=161 height=25 valign=top><font face=Verdana size=2 color=#000000>Faks</font></td><td height=25 valign=top><font face=Verdana size=2 color=#000000>:</font></td><td height=25 valign=top><font face=Verdana size=2 color=#000000>" & faks & "</font></td></tr><tr> <td width=161 height=25 valign=top><font face=Verdana size=2 color=#000000>E-posta</font></td><td height=25 valign=top><font face=Verdana size=2 color=#000000>:</font></td><td height=25 valign=top><font face=Verdana size=2 color=#000000>" & e_posta & "</font></td></tr><tr> <td width=161 height=25 valign=top><font face=Verdana size=2 color=#000000>Mesaj</font></td><td height=25 valign=top><font face=Verdana size=2 color=#000000>:</font></td><td height=25 valign=top><font face=Verdana size=2 color=#000000>" & mesajx & "</font></td></tr></table></td></tr><tr><td>IP Adresi : " & Request.ServerVariables("REMOTE_ADDR") &"</td></tr></table>"

dim MAddAddressx

	Select Case Request.form("departman")
		case "0":
			MAddAddressx= "guestrelation@armoniabodrum.com"
		case "1":
			MAddAddressx= "reservation@armoniabodrum.com"		
		case "2":
			MAddAddressx= "guestrelation@armoniabodrum.com"
		case "3":
			MAddAddressx= "salesmarketing@armoniabodrum.com"		
		case "4":
			MAddAddressx= "ik@armoniabodrum.com"
	End Select
	
		
	strMailTo = MAddAddressx
	strSubject = "Armonia Holiday Village / Spa"


case "balliyasam.com"

if instr(request.Form("email"),"@") and instr(request.Form("email"),".") then

select case Request.Form("formtipi")

case "siparis"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
x1 = request.Form("x1")
x2 = Request.Form("x2")
x3 = Request.Form("x3")
x4 = Request.Form("x4")
email = Request.Form("email")
x6 = Request.Form("x6")
x7 = Request.Form("x7")
x8 = Request.Form("x8")

strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&x1&"</td></tr><tr><td width='166' height='40'>&nbsp;Soyad</td><td width='476'>"&x2&"</td></tr><tr><td width='166' height='40'>&nbsp;Ürünler</td><td width='476'>"&x3&"</td></tr><tr><td width='166' height='40'>&nbsp;Sipariş adedi</td><td width='476'>"&x4&"</td></tr><tr><td width='166' height='40'>&nbsp;e-mail</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Kargo adresi</td><td width='476'>"&x6&"</td></tr><tr><td width='166' height='40'>&nbsp;telefon</td><td width='476'>"&x7&"</td></tr><tr><td width='166' height='40'>&nbsp;not</td><td width='476'>"&x8&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"	


strMailTo = "bilgi@balliyasam.com,imza1958@hotmail.com,nihan@entegresoft.com,ersel@entegresoft.com"
strSubject = "balliyasam.com Sitesinden Mesaj Var"


case "klub"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
x1 = request.Form("x1")
x2 = Request.Form("x2")
x3 = Request.Form("x3")
x4 = Request.Form("x4")
email = Request.Form("email")
x6 = Request.Form("x6")
x7 = Request.Form("x7")
x8 = Request.Form("x8")
x9 = Request.Form("x9")
x10 = Request.Form("x10")
x11 = Request.Form("x11")
x12 = Request.Form("x12")
x13 = Request.Form("x13")
x14 = Request.Form("x14")
x15 = Request.Form("x15")


strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&x1&"</td></tr><tr><td width='166' height='40'>&nbsp;Soyad</td><td width='476'>"&x2&"</td></tr><tr><td width='166' height='40'>&nbsp;Doğum Tarihi</td><td width='476'>"&x3&"</td></tr><tr><td width='166' height='40'>&nbsp;mesleğiniz</td><td width='476'>"&x4&"</td></tr><tr><td width='166' height='40'>&nbsp;e-mail</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon-Adres</td><td width='476'>"&x6&"</td></tr><tr><td width='166' height='40'>&nbsp;Hobileriniz</td><td width='476'>"&x7&"</td></tr><tr><td width='166' height='40'>&nbsp;Fobileriniz</td><td width='476'>"&x8&"</td></tr><tr><td width='166' height='40'>&nbsp;Taraftarı olduğunuz klup</td><td width='476'>"&x9&"</td></tr><tr><td width='166' height='40'>&nbsp;Sosyal aktiviteleriniz</td><td width='476'>"&x10&"</td></tr><tr><td width='166' height='40'>&nbsp;Bal tüketim alışkanlığınız</td><td width='476'>"&x11&"</td></tr><tr><td width='166' height='40'>&nbsp;Arılar hakkında bilginiz</td><td width='476'>"&x12&"</td></tr><tr><td width='166' height='40'>&nbsp;Atolye sahibi olmak istermisiniz</td><td width='476'>"&x13&"</td></tr><tr><td width='166' height='40'>&nbsp;Sitemiz hakkında eleştirileriniz</td><td width='476'>"&x14&"</td></tr><tr><td width='166' height='40'>&nbsp;Referansınız</td><td width='476'>"&x15&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"	


strMailTo = "bilgi@balliyasam.com,imza1958@hotmail.com,nihan@entegresoft.com,ersel@entegresoft.com"
strSubject = "balliyasam.com Sitesinden Mesaj Var"

end select


end if




case "gokcegrp.com"

strMsg = "<table width=430 border=0 cellpadding=0 cellspacing=0><tr><td width=96% height=20><table width=100% height=20 border=0 cellpadding=0 cellspacing=0><tr><td height=30 bgcolor=ecebf1>&nbsp;&nbsp;<font face=Verdana size=2 color=#000000><b>e-form</b></font></td></tr></table></td></tr><tr><td valign=top><br><table width=100% border=0 cellpadding=0 cellspacing=0><tr><td width=131 height=30 valign=middle><font face=Verdana size=2 color=#000000>Adi, Soyadi</font></td><td width=13 height=30 valign=middle><font face=Verdana size=2 color=#000000>:</font></td> <td height=30 colspan=4 valign=middle><font face=Verdana size=2 color=#000000>" & request.form("x1") & "</font></td></tr><tr><td width=131 height=30 valign=middle><font face=Verdana size=2 color=#000000>E-mail Adresi</font></td><td height=30 valign=middle><font face=Verdana size=2 color=#000000>:</font></td><td height=30 colspan=4 valign=middle><font face=Verdana size=2 color=#000000>" & request.form("x2") & "</font></td></tr><tr><td width=131 height=30 valign=middle><font face=Verdana size=2 color=#000000>Telefon</font></td><td height=30 valign=middle><font face=Verdana size=2 color=#000000>:</font></td><td height=30 colspan=4 valign=middle><font face=Verdana size=2                color=#000000>" & request.form("x3") & "</font></td></tr><tr><td width=131 height=30 valign=middle><font face=Verdana size=2               color=#000000>Sube</font></td><td height=30 valign=middle><font face=Verdana size=2 color=#000000>:</font></td><td height=30 colspan=4 valign=middle><font face=Verdana size=2 color=#000000>" & request.form("x4") & "</font></td></tr><tr><td height=30 valign=middle><font face=Verdana size=2 color=#000000>Mesaj</font></td><td height=30 valign=middle><font                face=Verdana size=2 color=#000000>:</font></td><td height=30 colspan=4 valign=middle><font face=Verdana size=2 color=#000000>" & request.form("x5") & "</font></td></tr></table></td></tr></table>"	



strMailTo = "info@gokcegrp.com"
strSubject = "gokcegrp.com Sitesinden Mesaj Var"



case "kisiyeozelturlar.com"

ipadres = Request.ServerVariables("REMOTE_ADDR")
isim = Request.Form("isim") 
icq = Request.Form("icq")
url =  Request.Form("url")
sehir = Request.Form("sehir")
mesaj = Request.Form("mesaj")

mesaj = "<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Ad Soyad</td><td width='476'>"&isim&"</td></tr><tr><td width='166' height='40'>&nbsp;ICQ</td><td width='476'>"&icq&"</td></tr><tr><td width='166' height='40'>&nbsp;URL</td><td width='476'>"&url&"</td></tr><tr><td width='166' height='40'>&nbsp;Sehir</td><td width='476'>"&sehir&"</td></tr><tr><td width='166' height='40'>&nbsp;Mesaj</td><td width='476'>"&mesaj&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@kisiyeozelturlar.com"
strSubject = "kisiyeozelturlar.com Sitesinden Mesaj Var"


case "urssigorta.com"
if instr(request.Form("email"),"@") and instr(request.Form("email"),".") then

select case Request.Form("formtipi")

case "iletisim"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
isim = Request.Form("isim")
email = Request.Form("email")
firma = Request.Form("firma")
tel = Request.Form("tel")
mesaj = Request.Form("mesaj")

strSubject = "İletişim Formu"
mesaj ="<h3>İletişim Formu</h3><h5>Ip Adres : "&ipadres&"</h5><h5>Formun Geldigi Sayfa : "&sayfa&"</h5><h5>Form Adı : "&formadi&"</h5><h5>Geldigi Domain : "&domain&"</h5><h5>Referans Sayfa : "&referans&"</h5><table width='100%' border='0' cellspacing='10' cellpadding='10'><tr><td width='8%'>Ad Soyad</td><td width='2%'>:</td><td width='90%'>"&cevir(isim)&"</td></tr><tr><td width='8%'>E-Mail</td><td width='2%'>:</td><td width='90%'>"&email&"</td></tr><tr><td width='8%'>Firma</td><td width='2%'>:</td><td width='90%'>"&cevir(firma)&"</td></tr><tr><td width='8%'>Telefon</td><td width='2%'>:</td><td width='90%'>"&tel&"</td></tr><tr><td width='8%'>Mesaj</td><td width='2%'>:</td><td width='90%'>"&cevir(mesaj)&"</td></tr></table>"

strMailTo = "gcankurtaran@urssigorta.com,volkan@urssigorta.com,dsonmez@urssigorta.com"
strSubject = "Iletisim Formu"


case "danisma"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
isim = Request.Form("isim")
email = Request.Form("email")
firma = Request.Form("firma")
tel = Request.Form("tel")
mesaj = Request.Form("mesaj")

strSubject = "urssigorta.com danisma Formu"
mesaj ="<h3>Danisma Formu</h3><h5>Ip Adres : "&ipadres&"</h5><h5>Formun Geldigi Sayfa : "&sayfa&"</h5><h5>Form Adı : "&formadi&"</h5><h5>Geldigi Domain : "&domain&"</h5><h5>Referans Sayfa : "&referans&"</h5><table width='100%' border='0' cellspacing='10' cellpadding='10'><tr><td width='8%'>Ad Soyad</td><td width='2%'>:</td><td width='90%'>"&cevir(isim)&"</td></tr><tr><td width='8%'>E-Mail</td><td width='2%'>:</td><td width='90%'>"&email&"</td></tr><tr><td width='8%'>Firma</td><td width='2%'>:</td><td width='90%'>"&cevir(firma)&"</td></tr><tr><td width='8%'>Telefon</td><td width='2%'>:</td><td width='90%'>"&tel&"</td></tr><tr><td width='8%'>Mesaj</td><td width='2%'>:</td><td width='90%'>"&cevir(mesaj)&"</td></tr></table>"

strMailTo = "gcankurtaran@urssigorta.com,volkan@urssigorta.com,dsonmez@urssigorta.com"
strSubject = "Danışma Formu"


case "kasko"
formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
tc_kimlik = request.Form("tc_kimlik")
isim = request.Form("isim")
email=Request.Form("email")
ev_tel=Request.Form("ev_tel")
cep_tel=Request.Form("cep_tel")
adres=Request.Form("adres")
marka=Request.Form("marka")
model=Request.Form("model")
tip=Request.Form("tip")
plaka=Request.Form("plaka")
bedel=Request.Form("bedel")
x13=Request.Form("x13")
sigorta_adi=Request.Form("sigorta_adi")
acente_kod=Request.Form("acente_kod")
police_no=Request.Form("police_no")
asbis=Request.Form("asbis")
xalarm=Request.Form("xalarm")
xteklif_sirketi=Request.Form("xteklif_sirketi")
xsozlesme=Request.Form("xsozlesme")


mesaj ="<h5>Ip Adres : "&ipadres&"</h5><h5>Formun Geldigi Sayfa : "&sayfa&"</h5><h5>Form Adı : "&formadi&"</h5><h5>Geldigi Domain : "&domain&"</h5><h5>Referans Sayfa : "&referans&"</h5><table width='100%' border='0' cellspacing='10' cellpadding='10'><tr><td width='166' height='40'>&nbsp;Tc Kimlik</td><td width='75%'>"&tc_kimlik&"</td></tr><tr><td width='166' height='40'>&nbsp;Ad Soyad</td><td width='75%'>"&cevir(isim)&"</td></tr><tr><td width='166' height='40'>E-POSTA</td><td>:</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Ev Telefonu</td><td width='75%'>"&ev_tel&"</td></tr><tr><td width='166' height='40'>&nbsp;Cep Telefonu</td><td width='75%'>"&cep_tel&"</td></tr><tr><td width='166' height='40'>&nbsp;Adres</td><td width='75%'>"&cevir(adres)&"</td></tr><tr><td width='166' height='40'>&nbsp;Marka</td><td width='75%'>"&cevir(marka)&"</td></tr><tr><td width='166' height='40'>&nbsp;Model</td><td width='75%'>"&model&"</td></tr><tr><td width='166' height='40'>&nbsp;Tip</td><td width='75%'>"&cevir(tip)&"</td></tr><tr><td width='166' height='40'>&nbsp;Plaka</td><td width='75%'>"&cevir(plaka)&"</td></tr><tr><td width='166' height='40'>&nbsp;Araç Bedeli</td><td width='75%'>"&bedel&"</td></tr><tr><td width='166' height='40'>&nbsp;Hasarsızlık Varmı</td><td width='75%'>"&x13&"</td></tr><tr><td width='166' height='40'>&nbsp;Sigorta şirketi Adı</td><td width='75%'>"&cevir(sigorta_adi)&"</td></tr><tr><td width='166' height='40'>&nbsp;Acente Kodu</td><td width='75%'>"&cevir(acente_kod)&"</td></tr><tr><td width='166' height='40'>&nbsp;Poliçe No</td><td width='75%'>"&cevir(police_no)&"</td></tr><tr><td width='166' height='40'>&nbsp;Asbis No / Belge No</td><td width='75%'>"&asbis&"</td></tr><tr><td width='166' height='40'>&nbsp;Alarm Varmı</td><td width='75%'>"&xalarm&"</td></tr><tr><td width='166' height='40'>&nbsp;Teklif Almak İstediğiniz Acente</td><td width='75%'>"&xteklif_sirketi&"</td></tr><tr><td width='166' height='40'>&nbsp;Sözleşme şartları</td><td width='75%'>"&cevir(xsozlesme)&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr></table>"

strMailTo = "gcankurtaran@urssigorta.com,volkan@urssigorta.com,dsonmez@urssigorta.com"
strSubject = "Kasko Formu"


case "trafik"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
tc_kimlik = request.Form("tc_kimlik")
isim = request.Form("isim")
email=Request.Form("email")
ev_tel=Request.Form("ev_tel")
cep_tel=Request.Form("cep_tel")
adres=Request.Form("adres")
marka=Request.Form("marka")
model=Request.Form("model")
tip=Request.Form("tip")
plaka=Request.Form("plaka")
bedel=Request.Form("bedel")
x13=Request.Form("x13")
sigorta_adi=Request.Form("sigorta_adi")
acente_kod=Request.Form("acente_kod")
police_no=Request.Form("police_no")
asbis=Request.Form("asbis")
xalarm=Request.Form("xalarm")
xteklif_sirketi=Request.Form("xteklif_sirketi")
xsozlesme=Request.Form("xsozlesme")


mesaj ="<h5>Ip Adres : "&ipadres&"</h5><h5>Formun Geldigi Sayfa : "&sayfa&"</h5><h5>Form Adı : "&formadi&"</h5><h5>Geldigi Domain : "&domain&"</h5><h5>Referans Sayfa : "&referans&"</h5><table width='100%' border='0' cellspacing='10' cellpadding='10'><tr><td width='166' height='40'>&nbsp;Tc Kimlik</td><td width='75%'>"&tc_kimlik&"</td></tr><tr><td width='166' height='40'>&nbsp;Ad Soyad</td><td width='75%'>"&cevir(isim)&"</td></tr><tr><td width='166' height='40'>E-POSTA</td><td>:</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Ev Telefonu</td><td width='75%'>"&ev_tel&"</td></tr><tr><td width='166' height='40'>&nbsp;Cep Telefonu</td><td width='75%'>"&cep_tel&"</td></tr><tr><td width='166' height='40'>&nbsp;Adres</td><td width='75%'>"&cevir(adres)&"</td></tr><tr><td width='166' height='40'>&nbsp;Marka</td><td width='75%'>"&cevir(marka)&"</td></tr><tr><td width='166' height='40'>&nbsp;Model</td><td width='75%'>"&model&"</td></tr><tr><td width='166' height='40'>&nbsp;Tip</td><td width='75%'>"&cevir(tip)&"</td></tr><tr><td width='166' height='40'>&nbsp;Plaka</td><td width='75%'>"&cevir(plaka)&"</td></tr><tr><td width='166' height='40'>&nbsp;Araç Bedeli</td><td width='75%'>"&bedel&"</td></tr><tr><td width='166' height='40'>&nbsp;Hasarsızlık Varmı</td><td width='75%'>"&x13&"</td></tr><tr><td width='166' height='40'>&nbsp;Sigorta şirketi Adı</td><td width='75%'>"&cevir(sigorta_adi)&"</td></tr><tr><td width='166' height='40'>&nbsp;Acente Kodu</td><td width='75%'>"&cevir(acente_kod)&"</td></tr><tr><td width='166' height='40'>&nbsp;Poliçe No</td><td width='75%'>"&cevir(police_no)&"</td></tr><tr><td width='166' height='40'>&nbsp;Asbis No / Belge No</td><td width='75%'>"&asbis&"</td></tr><tr><td width='166' height='40'>&nbsp;Alarm Varmı</td><td width='75%'>"&xalarm&"</td></tr><tr><td width='166' height='40'>&nbsp;Teklif Almak İstediğiniz Acente</td><td width='75%'>"&xteklif_sirketi&"</td></tr><tr><td width='166' height='40'>&nbsp;Sözleşme şartları</td><td width='75%'>"&cevir(xsozlesme)&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr></table>"


strMailTo = "gcankurtaran@urssigorta.com,volkan@urssigorta.com,dsonmez@urssigorta.com"
strSubject = "Trafik Formu"

case "saglik"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
tc_kimlik = request.Form("tc_kimlik")
isim = request.Form("isim")
email=Request.Form("email")
ev_tel=Request.Form("ev_tel")
cep_tel=Request.Form("cep_tel")
adres=Request.Form("adres")
bedel=Request.Form("dogum")
xteklif_sirketi=Request.Form("xteklif_sirketi")
xsozlesme=Request.Form("xsozlesme")

mesaj ="<h5>Ip Adres : "&ipadres&"</h5><h5>Formun Geldigi Sayfa : "&sayfa&"</h5><h5>Form Adı : "&formadi&"</h5><h5>Geldigi Domain : "&domain&"</h5><h5>Referans Sayfa : "&referans&"</h5><table width='100%' border='0' cellspacing='10' cellpadding='10'><tr><td width='166' height='40'>&nbsp;Tc Kimlik</td><td width='75%'>"&tc_kimlik&"</td></tr><tr><td width='166' height='40'>&nbsp;Ad Soyad</td><td width='75%'>"&cevir(isim)&"</td></tr><tr><td width='166' height='40'>E-POSTA</td><td>:</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Ev Telefonu</td><td width='75%'>"&ev_tel&"</td></tr><tr><td width='166' height='40'>&nbsp;Cep Telefonu</td><td width='75%'>"&cep_tel&"</td></tr><tr><td width='166' height='40'>&nbsp;Adres</td><td width='75%'>"&cevir(adres)&"</td></tr><tr><td width='166' height='40'>&nbsp;Doğum Tarihi Bedeli</td><td width='75%'>"&dogum&"</td></tr><tr><td width='166' height='40'>&nbsp;Teklif Almak İstediğiniz Acente</td><td width='75%'>"&xteklif_sirketi&"</td></tr><tr><td width='166' height='40'>&nbsp;Sözleşme şartları</td><td width='75%'>"&cevir(xsozlesme)&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr></table>"

strMailTo = "gcankurtaran@urssigorta.com,volkan@urssigorta.com,dsonmez@urssigorta.com"
strSubject = "Sağlık Basvuru Formu"


end select


end if


case "hazarsu.com"
if instr(request.Form("email"),"@") and instr(request.Form("email"),".") then

select case Request.Form("formtipi")

case "Form4"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")

ad = Request.Form("ad")
telefon = Request.Form("telefon")
adres = Request.Form("adres")
email = Request.Form("email")
yetkili = Request.Form("yetkili")
kaynak = Request.Form("kaynak")
tesis = Request.Form("tesis")
aciklama = Request.Form("aciklama")
amac = Request.Form("amac")
iletkenlik = Request.Form("iletkenlik")
sertlik = Request.Form("sertlik")
phx = Request.Form("phx")
var = Request.Form("var")
kapasite = Request.Form("kapasite")
cihaz = Request.Form("cihaz")
gunluk = Request.Form("gunluk")
saat = Request.Form("saat")
silis = Request.Form("silis")
tdsx = Request.Form("tdsx")
ph = Request.Form("ph")
ph1 = Request.Form("ph1")
tds = Request.Form("tds")
tds2 = Request.Form("tds2")
alkalin = Request.Form("alkalin")
alkalin1 = Request.Form("alkalin1")
karbon = Request.Form("karbon")
karbon1 = Request.Form("karbon1")
sert = Request.Form("sert")
sert1 = Request.Form("sert1")
kalsiyum = Request.Form("kalsiyum")
kalsiyum1 = Request.Form("kalsiyum1")
magnezyum = Request.Form("magnezyum")
magnezyum1 = Request.Form("magnezyum1")
sodyum = Request.Form("sodyum")
sodyum1 = Request.Form("sodyum1")
klorur = Request.Form("klorur")
klorur1 = Request.Form("klorur1")
sulfat = Request.Form("sulfat")
sulfat1 = Request.Form("sulfat1")
nitrat = Request.Form("nitrat")
nitrat1 = Request.Form("nitrat1")
bikarbonat = Request.Form("bikarbonat")
bikarbonat1 = Request.Form("bikarbonat1")
hidroksit = Request.Form("hidroksit")
hidroksit1 = Request.Form("hidroksit1")
demir = Request.Form("demir")
demir1 = Request.Form("demir1")
manganez = Request.Form("manganez")
manganez1 = Request.Form("manganez1")
silisyum = Request.Form("silisyum")
silisyum1 = Request.Form("silisyum1")
madde = Request.Form("madde")
madde1 = Request.Form("madde1")





strSubject = "İletişim Formu"
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;Firma Adı</td><td width='476'>"&ad&"</td></tr></tr><tr><td width='166' height='40'>&nbsp;Telefon/Fax</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;Adres</td><td width='476'>"&adres&"</td></tr><tr><td width='166' height='40'>&nbsp;E-Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Yetkili kişi ve Görevi</td><td width='476'>"&yetkili&"</td</tr><tr><td width='166' height='40'>&nbsp;Arıtılmasını İstediğiniz Suyun Kaynağı</td><td width='476'>"&kaynak&"</td></tr><tr><td width='166' height='40'>&nbsp;Kurulacağı Arıtma Tesisi</td><td width='476'>"&tesis&"</td></tr><tr><td width='166' height='40'>&nbsp;Açıklama</td><td width='476'>"&aciklama&"</td></tr><tr><td width='166' height='40'>&nbsp;Suyu Kullanım Amacınız</td><td width='476'>"&amac&"</td></tr><tr><td width='166' height='40'>İstediğiniz Suyun Kalitesi</td></tr><tr><td width='166' height='40'>&nbsp;iletkenlik</td><td width='476'>"&iletkenlik&"</td></tr><tr><td width='166' height='40'>&nbsp;sertlik</td><td width='476'>"&sertlik&"</td></tr><tr><td width='166' height='40'>&nbsp;Ph</td><td width='476'>"&phx&"</td></tr><tr><td width='166' height='40'>&nbsp;Mevcut Bir Su Arıtma Tesisiniz Varmı</td><td width='476'>"&var&"</td></tr><tr><td width='166' height='40'>&nbsp;Arıtma Tesisinizin Kapasitesi</td><td width='476'>"&kapasite&"</td></tr><tr><td width='166' height='40'>&nbsp;Bulunan Cihazlar</td><td width='476'>"&cihaz&"</td></tr><tr><td width='166' height='40'>İhtiyacınız Olan Su Miktarı</td></tr><tr><td width='166' height='40'>&nbsp;gunluk</td><td width='476'>"&gunluk&"</td></tr><tr><td width='166' height='40'>&nbsp;saat</td><td width='476'>"&saat&"</td></tr><tr><td width='166' height='40'>&nbsp;silis</td><td width='476'>"&silis&"</td></tr><tr><td width='166' height='40'>&nbsp;TDS</td><td width='476'>"&tdsx&"</td></tr></table><table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr><td>PARAMETRE</td><td>BİRİM</td><td>DEĞERİ</td></tr><tr><td>Ph</td><td>"&ph&"</td><td>"&ph1&"</td></tr><tr><td>TDS</td><td>"&tds&"</td><td>"&tds2&"</td></tr><tr><td>M-Alkalinite</td><td>"&alkalin&"</td><td>"&alkalin1&"</td></tr><tr><td>Karbondioksit</td><td>"&karbon&"</td><td>"&karbon1&"</td></tr><tr><td>Toplam Sertlik</td><td>"&sert&"</td><td>"&sert1&"</td></tr><tr><td>Kalsiyum</td><td>"&kalsiyum&"</td><td>"&kalsiyum1&"</td></tr><tr><td>Magnezyum</td><td>"&magnezyum&"</td><td>"&magnezyum1&"</td></tr><tr><td>Sodyum + Potasyum</td><td>"&sodyum&"</td><td>"&sodyum1&"</td></tr><tr><td>Klorür</td><td>"&klorur&"</td><td>"&klorur1&"</td></tr><tr><td>Sülfat</td><td>"&sulfat&"</td><td>"&sulfat1&"</td></tr><tr><td>Nitrat</td><td>"&nitrat&"</td><td>"&nitrat1&"</td></tr><tr><td>Bikarbonat</td><td>"&bikarbonat&"</td><td>"&bikarbonat1&"</td></tr><tr><td>Hidroksit</td><td>"&hidroksit&"</td><td>"&hidroksit1&"</td></tr><tr><td>Demir</td><td>"&demir&"</td><td>"&demir1&"</td></tr><tr><td>Manganez</td><td>"&manganez&"</td><td>"&manganez1&"</td></tr><tr><td>Silisyum</td><td>"&silisyum&"</td><td>"&silisyum1&"</td></tr><tr><td>Organik Madde</td><td>"&madde&"</td><td>"&madde1&"</td></tr></table>"

strMailTo = "info@hazar.gen.tr"
strSubject = "Iletisim Formu"



case "Form5"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")

ad = Request.Form("ad")
telefon = Request.Form("telefon")
mesaj = Request.Form("mesaj")
email = Request.Form("email")
yetkili = Request.Form("yetkili")
yer = Request.Form("yer")
miktar = Request.Form("miktar")
tesis = Request.Form("tesis")
aciklama = Request.Form("aciklama")
gun = Request.Form("gun")
saat = Request.Form("saat")
gun1 = Request.Form("gun1")
gun2 = Request.Form("gun2")
saat1 = Request.Form("saat1")
saat2 = Request.Form("saat2")
evselgun = Request.Form("evselgun")
evselsaat = Request.Form("evselsaat")
evselgun1 = Request.Form("evselgun1")
evselgun2 = Request.Form("evselgun2")
evselsaat1 = Request.Form("evselsaat1")
evselsaat2 = Request.Form("evselsaat2")
digergun = Request.Form("digergun")
digersaat = Request.Form("digersaat")
digergun1 = Request.Form("digergun1")
digergun2 = Request.Form("digergun2")
digersaat1 = Request.Form("digersaat1")
digersaat2 = Request.Form("digersaat2")
sumiktari = Request.Form("sumiktari")
sumiktari1 = Request.Form("sumiktari1")
uretim = Request.Form("uretim")
proses = Request.Form("proses")
desarj = Request.Form("desarj")
ph = Request.Form("ph")
ph1 = Request.Form("ph1")
akm = Request.Form("akm")
akm1 = Request.Form("akm1")
boi = Request.Form("boi")
boi1 = Request.Form("boi1")
koi = Request.Form("koi")
koi1 = Request.Form("koi1")
azot = Request.Form("azot")
azot1 = Request.Form("azot1")
fosfor = Request.Form("fosfor")
fosfor1 = Request.Form("fosfor1")
yag = Request.Form("yag")
yag1 = Request.Form("yag1")
metal = Request.Form("metal")
metal1 = Request.Form("metal1")
diger = Request.Form("diger")
diger1 = Request.Form("diger1")




strSubject = "İletişim Formu"
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;Firma Adı</td><td width='476'>"&ad&"</td></tr></tr><tr><td width='166' height='40'>&nbsp;Telefon/Fax</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;Adres</td><td width='476'>"&mesaj&"</td></tr><tr><td width='166' height='40'>&nbsp;E-Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Yetkili kişi ve Görevi</td><td width='476'>"&yetkili&"</td></tr><tr><td width='166' height='40'>&nbsp;Tesisin Kurulacağı Yer</td><td width='476'>"&yer&"</td></tr><tr><td width='166' height='40'>&nbsp;Üretimde Kullanılan Kimyasal Maddeler ve Miktarları</td><td width='476'>"&miktar&"</td></tr><tr><td width='166' height='40'>&nbsp;Kuracağınız Arıtma Tesisi</td><td width='476'>"&tesis&"</td></tr><tr><td width='166' height='40'>&nbsp;Açıklama</td><td width='476'>"&aciklama&"</td</tr></table><table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr><td height='40' colspan='2' align='center'>İşletmenizde Oluşan Atıksu Miktarı</td></tr><tr><td height='40' colspan='2' align='center'>Proses Atıksu Debisi</td></tr><tr><td>GUNLUK</td><td>MİNİMUM</td><td>MAXİMUM</td></tr><tr><td>"&gun&"</td><td>"&gun1&"</td><td>"&gun2&"</td></tr><tr><td>SAATLİK</td><td>MİNİMUM</td><td>MAXİMUM</td></tr><tr><td>"&saat&"</td><td>"&saat1&"</td><td>"&saat2&"</td></tr><tr><td height='40' colspan='2' align='center'>Evsel Atıksu Debisi</td></tr><tr><td>GUNLUK</td><td>MİNİMUM</td><td>MAXİMUM</td></tr><tr><td>"&evselgun&"</td><td>"&evselgun1&"</td><td>"&evselgun2&"</td></tr><tr><td>SAATLİK</td><td>MİNİMUM</td><td>MAXİMUM</td></tr><tr><td>"&evselsaat&"</td><td>"&evselsaat1&"</td><td>"&evselsaat2&"</td></tr><tr><td height='40' colspan='2' align='center'>Varsa Diğer Atıksu Debisi</td></tr><tr><td>GUNLUK</td><td>MİNİMUM</td><td>MAXİMUM</td></tr><tr><td>"&digergun&"</td><td>"&digergun1&"</td><td>"&digergun2&"</td></tr><tr><td>SAATLİK</td><td>MİNİMUM</td><td>MAXİMUM</td></tr><tr><td>"&digersaat&"</td><td>"&digersaat1&"</td><td>"&digersaat2&"</td></tr><tr><td height='40' colspan='2' align='center'>İhtiyacınız Olan Su Miktarı</td></tr><tr><td>MİNİMUM</td><td>MAXİMUM</td></tr><tr><td>"&sumiktari&"</td><td>"&sumiktari1&"</td></tr></table><table width='658' height='131' border='1' bordercolor='#333333' cellpadding='0' cellspacing='0'><tr><td width='166' height='40'>&nbsp;Atıksu Üretimi</td><td width='476'>"&uretim&"</td></tr></tr><tr><td width='166' height='40'>&nbsp;Prosesden Sicak Soğuk Atıksu Geliyormu</td><td width='476'>"&proses&"</td></tr><tr><td width='166' height='40'>&nbsp;İşletmenizde Oluşan Atık Suların Deşarj Edildiği Yer</td><td width='476'>"&desarj&"</td></tr></table><table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr><td>PARAMETRE</td><td>BİRİM</td><td>DEĞERİ</td></tr><tr><td>Ph</td><td>"&ph&"</td><td>"&ph1&"</td></tr><tr><td>AKM</td><td>"&akm&"</td><td>"&akm1&"</td></tr><tr><td>BOI</td><td>"&boi&"</td><td>"&boi1&"</td></tr><tr><td>KOI</td><td>"&koi&"</td><td>"&koi1&"</td></tr><tr><td>Toplam Azot</td><td>"&azot&"</td><td>"&azot1&"</td></tr><tr><td>Toplam Fosfor</td><td>"&fosfor&"</td><td>"&fosfor1&"</td></tr><tr><td>Yağ-Gres</td><td>"&yag&"</td><td>"&yag1&"</td></tr><tr><td>Ağır Metaller</td><td>"&metal&"</td><td>"&metal1&"</td></tr><tr><td>Diğer</td><td>"&diger&"</td><td>"&diger1&"</td></tr></table>"





strMailTo = "info@hazar.gen.tr"
strSubject = "Iletisim Formu"



case "Form3"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")

ad = Request.Form("ad")
telefon = Request.Form("telefon")
mesaj = Request.Form("mesaj")
email = Request.Form("email")
yetkili = Request.Form("yetkili")
demo = Request.Form("demo")
tesis = Request.Form("tesis")
kaynak = Request.Form("kaynak")
sistem = Request.Form("sistem")
beklenti = Request.Form("beklenti")

strSubject = "İletişim Formu"
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;Firma Adı</td><td width='476'>"&ad&"</td></tr></tr><tr><td width='166' height='40'>&nbsp;Telefon/Fax</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;Adres</td><td width='476'>"&mesaj&"</td></tr><tr><td width='166' height='40'>&nbsp;E-Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Yetkili kişi ve Görevi</td><td width='476'>"&yetkili&"</td></tr><tr><td width='166' height='40'>&nbsp;Demo Yapılacak Yer / Tarih</td><td width='476'>"&demo&"</td></tr><tr><td width='166' height='40'>&nbsp;Tesisin Kurulacağı Yer</td><td width='476'>"&tesis&"</td></tr><tr><td width='166' height='40'>&nbsp;Su Kaynağı</td><td width='476'>"&kaynak&"</td></tr><tr><td width='166' height='40'>&nbsp;İlgilendiğiniz Sistemle</td><td width='476'>"&sistem&"</td></tr><tr><td width='166' height='40'>&nbsp;Beklentileriniz</td><td width='476'>"&beklenti&"</td></tr></table>"





strMailTo = "info@hazar.gen.tr"
strSubject = "Iletisim Formu"


case "Form2"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")

ad = Request.Form("ad")
telefon = Request.Form("telefon")
mesaj = Request.Form("mesaj")
email = Request.Form("email")



strSubject = "İletişim Formu"
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;Ad Soyad</td><td width='476'>"&ad&"</td></tr></tr><tr><td width='166' height='40'>&nbsp;Telefon/Fax</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;Sorunuz</td><td width='476'>"&mesaj&"</td></tr><tr><td width='166' height='40'>&nbsp;E-Posta</td><td width='476'>"&email&"</td></tr></table>"





strMailTo = "info@hazar.gen.tr"
strSubject = "Iletisim Formu"


end select


end if




case "estetiksizburun.com"
if instr(request.Form("email"),"@") and instr(request.Form("email"),".") then

select case Request.Form("formtipi")

case "Form1"

formtipi = Request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")

ad = Request.Form("ad")
telefon = Request.Form("telefon")
mesaj = Request.Form("mesaj")
email = Request.Form("email")
il = Request.Form("il")
ilce = Request.Form("ilce")
paket = Request.Form("paket")
odeme = Request.Form("odeme")


strSubject = "İletişim Formu"
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;Ad Soyad</td><td width='476'>"&ad&"</td></tr></tr><tr><td width='166' height='40'>&nbsp;Telefon/Fax</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;Adresiniz</td><td width='476'>"&mesaj&"</td></tr><tr><td width='166' height='40'>&nbsp;E-Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;İl</td><td width='476'>"&il&"</td></tr><tr><td width='166' height='40'>&nbsp;İlçe</td><td width='476'>"&ilce&"</td></tr><tr><td width='166' height='40'>&nbsp;Paket Seçiniz</td><td width='476'>"&paket&"</td></tr><tr><td width='166' height='40'>&nbsp;Paket Şeklini Seciniz</td><td width='476'>"&odeme&"</td></tr></table>"





strMailTo = "temmuz1907@mynet.com"
strSubject = "Iletisim Formu"


end select


end if





case "usgrup.com.tr"

if instr(request.Form("email"),"@") and instr(request.Form("email"),".") then

select case Request.Form("formtipi")

case "contact"

formtipi = request.Form("formtipi")
ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
ad = request.Form("ad")
email = request.Form("email")
telefon = request.Form("telefon")
x4 = request.Form("x4")
mesaj = request.Form("mesaj")




strSubject = formadi
mesaj ="<table width='658' height='131' border='1' bordercolor='#333333' bordercolordark='#FFFFFF' cellpadding='0' cellspacing='0'><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width='166' height='40'>&nbsp;isim</td><td width='476'>"&ad&"</td></tr><tr><td width='166' height='40'>&nbsp;E Posta</td><td width='476'>"&email&"</td></tr><tr><td width='166' height='40'>&nbsp;Telefon</td><td width='476'>"&telefon&"</td></tr><tr><td width='166' height='40'>&nbsp;cv</td><td width='476'>"&x4&"</td></tr><tr><td width='166' height='40'>&nbsp;Sorunuz</td><td width='476'>"&mesaj&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"


strMailTo = "info@usgrup.com.tr"
strSubject = "usgrup.com.tr Sitesinden Mesaj Var"

end select


end if







case "gulsanholding.com.tr"

mesaj ="<html><body><table width=580 border=0 cellspacing=1 cellpadding=0><tr><td width=145><strong>HAKKINIZDA</strong></td><td width=8></td><td width=135></td><td width=7></td><td width=135></td><td width=7></td><td width=135></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr> <tr><td>Adi Soyadi</td><td></td><td colspan=5>"&request.form("x1")&"</td></tr><tr><td>Cinsiyeti</td><td></td><td>"&request.form("x2")&"<td></td><td></td></tr><tr><td>Dogum Tarihi / Yeri</td><td></td><td colspan=5>"&request.form("x3")&"</td></tr><tr><td>Medeni Durumu</td><td></td><td>"&request.form("x4")&"</td> <td></td><td></td></tr><tr><td>Uyrugu</td><td></td><td colspan=5>"&request.form("x5")&"</td></tr><tr><td>Askerlik Durumu</td><td></td><td>"&request.form("x6")&"</tr><tr><td>Telefon Numarasi</td><td></td><td>"&request.form("x7")&"</tr><tr><td>E-Mail</td><td></td><td colspan=5>"&request.form("x8")&"</td></tr><tr><td>Ikamet Adresi</td><td></td><td colspan=5>"&request.form("x9")&"</td></tr><tr><td>Sürücü Belgesi</td><td></td><td>"&request.form("x10")&"</td></tr><tr><td>Sürücü Belgesi</td><td></td><td>"&request.form("x11")&"</td></tr><tr><td><strong>HEDEFLENEN</strong></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>Bölüm</td><td></td><td>Pozisyon</td><td></td><td>Ücret</td></tr><tr><td></td><td></td><td>"&request.form("x12")&"</td><td></td><td>"&request.form("x13")&"</td><td></td><td>"&request.form("x14")&"</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td><strong>EGITIM DURUMU</strong></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>Okul Adi</td><td></td><td>Bölümü</td><td></td><td>Tarihler</td></tr><tr><td>Doktora</td><td></td><td>"&request.form("x15")&"</td><td></td><td>"&request.form("x16")&"</td><td></td><td>"&request.form("x17")&"</td></tr><tr><td>Yüksek Lisans</td><td></td><td>"&request.form("x18")&"</td><td></td><td>"&request.form("x19")&"</td><td></td><td>"&request.form("x20")&"</td></tr><tr><td>Lisans</td><td></td><td>"&request.form("x21")&"</td><td></td><td>"&request.form("x22")&"</td><td></td><td>"&request.form("x23")&"</td></tr><tr><td>Ön Lisans</td><td></td><td>"&request.form("x24")&"</td><td></td><td>"&request.form("x25")&"</td><td></td><td>"&request.form("x26")&"</td></tr><tr><td>Lise</td><td></td><td>"&request.form("x27")&"</td><td></td><td>"&request.form("x28")&"</td><td></td><td>"&request.form("x29")&"</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td><strong>IS DENEYIMI</strong></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Firma Adi</td><td></td><td>Çalistigi Pozisyon / Birim</td><td></td><td>Tarih</td><td></td><td>Aldigi Net Ücret</td></tr><tr><td>"&request.form("x30")&"</td><td></td><td>"&request.form("x31")&"</td><td></td><td>"&request.form("x32")&"</td><td></td><td>"&request.form("x33")&"</td></tr><tr><td>"&request.form("x34")&"</td><td></td><td>"&request.form("x35")&"</td><td></td><td>"&request.form("x36")&"</td><td></td><td>"&request.form("x37")&"</td></tr><tr><td>"&request.form("x38")&"</td><td></td><td>"&request.form("x39")&"</td><td></td><td>"&request.form("x40")&"</td><td></td><td>"&request.form("x41")&"</td></tr><tr><td>"&request.form("x42")&"</td><td></td><td>"&request.form("x43")&"</td><td></td><td>"&request.form("x44")&"</td><td></td><td>"&request.form("x45")&"</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td><strong>YABANCI DIL</strong></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Ingilizce</td><td></td><td>"&request.form("x46")&"</td></tr><tr><td>"&request.form("x47")&"</td><td></td><td>"&request.form("x48")&"</tr><tr><td>"&request.form("x49")&"</td><td></td><td>"&request.form("x50")&"</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td><strong>BILGISAYAR BILGISI</strong></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Autocad</td><td></td><td>"&request.form("x51")&"</td></tr><tr><td>Primavera</td><td></td><td>"&request.form("x52")&"</td><td></td><td>"&request.form("x53")&"</td></tr><tr><td>MS Project</td><td></td><td>"&request.form("x54")&"</td></tr><tr><td>MS Office</td><td></td><td>"&request.form("x55")&"</td></tr><tr><td>SAP</td><td></td><td>"&request.form("x56")&"</td></tr><tr><td>Logo Tiger</td><td></td><td>"&request.form("x57")&"</td></tr><tr><td>ETA</td><td></td><td>"&request.form("x58")&"</td></tr><tr><td>Netcad / Netpro</td><td></td><td>"&request.form("x59")&"</td></tr><tr><td>"&request.form("x60")&"</td><td></td><td>"&request.form("x61")&"</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan=7><strong>KATILDIGI EGITIM / SERTIFIKA PROGRAMLARI</strong></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>Egitimin Adi</td><td></td><td>Egitimi Veren Kurum</td><td></td><td>Egitim Tarihi</td></tr><tr><td></td><td></td><td>"&request.form("x62")&"</td><td></td><td>"&request.form("x63")&"</td><td></td><td>"&request.form("x64")&"</td></tr><tr><td></td><td></td><td>"&request.form("x65")&"</td><td></td><td>"&request.form("x66")&"</td><td></td><td>"&request.form("x67")&"</td></tr><tr><td></td><td></td><td>"&request.form("x68")&"</td><td></td><td>"&request.form("x69")&"</td><td></td><td>"&request.form("x70")&"</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td><strong>KISISEL ÖZELLIKLER</strong></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Hobileriniz</td><td></td><td colspan=5>"&request.form("x71")&"</td></tr><tr><td>Saglik Sorunlari</td><td></td><td colspan=5>"&request.form("x72")&"</td></tr><tr><td>Sigara Kullanimi</td><td></td><td colspan=5>"&request.form("x73")&"</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan=7><strong>HAKKINIZDA REFERANS ALINABILECEK KISILER</strong></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Adi Soyadi</td><td></td><td>Meslegi / Ünvani</td><td></td><td>Çalistigi Kurum</td><td></td><td>Telefonu</td></tr><tr><td>"&request.form("x74")&"</td><td></td><td>"&request.form("x75")&"</td><td></td><td>"&request.form("x76")&"</td><td></td><td>"&request.form("x77")&"</td></tr><tr><td>"&request.form("x78")&"</td><td></td><td>"&request.form("x79")&"</td><td></td><td></td><td></td><td>"&request.form("x80")&"</td><td>"&request.form("x81")&"</td></tr><tr><td>"&request.form("x82")&"</td><td></td><td>"&request.form("x83")&"</td><td></td><td>"&request.form("x84")&"</td><td></td><td>"&request.form("x85")&"</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table></body></html>"



strMailTo = "ik@gulsanholding.com.tr"
strSubject = "Insan Kaynaklari Basvuru Formu"



case "globalhealthunlimited.com"

ipadres = request.Form("ipadres")
sayfa = request.Form("sayfa")
formadi = request.Form("formadi")
domain = request.Form("domain")
referans = request.Form("referans")
formtipi = request.Form("formtipi")


title=request.form("title")
other=request.form("other")
rq1=request.Form("rq1")
rq2=request.form("rq2")
rq3=request.form("rq3")
sex=request.form("sex")
rq5=Request.form("rq5")
rq6=request.form("rq6")
rq7=request.form("rq7")
rq8=Request.form("rq8")
rq9=request.form("rq9")
rq10=request.form("email")
contact=request.form("contact")
rq11=request.form("rq11")
rq12=request.form("rq12")
rq13=request.form("rq13")
rq14=request.form("rq14")
rq15=request.form("rq15")
rq16=request.form("rq16")
rq17=request.form("rq17")
rq18=request.form("rq18")
rq19=request.form("rq19")
rq20=request.form("rq20")
rq21=request.form("rq21")
rq22=request.form("rq22")
rq23=request.form("rq23")
sendby=request.form("sendby")
agree=request.form("agree")


mesaj = "<table width=482 border=0 cellspacing=0 cellpadding=0><tr bgcolor='#0b4890'><td height='40' colspan='2' align='center' bgcolor='#0b4890' style='color:#fff;'>İletişim Formu</td></tr><tr><td width='166' height='40'>&nbsp;Ip Adresi</td><td width='476'>"&ipadres&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Tipi</td><td width='476'>"&formtipi&"</td></tr><tr><td width='166' height='40'>&nbsp;Referans Sayfa</td><td width='476'>"&referans&"</td></tr><tr><td width='166' height='40'>&nbsp;Form Adı</td><td width='476'>"&formadi&"</td></tr><tr><td width=182 height=36 valign=top><strong>Title</strong></td><td width=11 valign=top><strong>:</strong></td><td width=248 valign=top>"&title&"</td></tr><tr><td height=36 valign=top><strong>Other</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&other&"</td></tr><tr><td height=36 valign=top><strong>Family Name</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq1&"</td></tr><tr><td height=36 valign=top><strong>Given Name</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq2&"</td></tr><tr><td height=36 valign=top><strong>Date of Birth</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq3&"</td></tr><tr><td height=36 valign=top><strong>Sex</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&sex&"</td></tr><tr><td height=36 valign=top><strong>Suburb/Town</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq5&"</td></tr><tr><td height=36 valign=top><strong>Postcode</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq6&"</td></tr><tr><td height=36 valign=top><strong>Telephone</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq7&"</td></tr><tr><td height=36 valign=top><strong>Mobile<br>Durumu</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq8&"</td></tr><tr><td height=36 valign=top><strong>Fax</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq9&"</td></tr><tr><td height=36 valign=top><strong>e-mail</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq10&"</td></tr><tr><td height=36 valign=top><strong>contact</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&contact&"</td></tr><tr><td height=36 valign=top><strong>Suburb/Town</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq11&"</td></tr><tr><td width=182 height=36 valign=top><strong>Postcode</strong></td><td width=11 valign=top><strong>:</strong></td><td width=248 valign=top>"&rq12&"</td></tr><tr><td height=36 valign=top><strong>Current situation</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq13&"</td></tr><tr><td height=36 valign=top><strong>Please describe your current complaints</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq14&"</td></tr><tr><td height=36 valign=top><strong>Which medical examinations have been carried out already? Please also mention the dates of these examinations if possible</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq15&"</td></tr><tr><td height=36 valign=top><strong>When have you last consulted a doctor? Please give his/her name?</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq16&"</td></tr><tr><td height=36 valign=top><strong> Which diagnosis/treatment has been determined at present?</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq17&"</td></tr><tr><td height=36 valign=top><strong>Diseases</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq18&"</td></tr><tr><td height=36 valign=top><strong>Medication</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq19&"</td></tr><tr><td height=36 valign=top><strong>Family</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq20&"</td></tr><tr><td height=36 valign=top><strong>Other</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq21&"</td></tr><tr><td height=36 valign=top><strong>Additional information</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq22&"</td></tr><tr><td height=36 valign=top><strong>Please indicate which specific service you would like have from GHU</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&rq23&"</td></tr><tr><td height=36 valign=top><strong>sendby</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&sendby&"</td></tr><tr><td height=36 valign=top><strong>I declare that all the information I have supplied on this application is true and correct to the best of my knowledge.</strong></td><td valign=top><strong>:</strong></td><td valign=top>"&agree&"</td></tr><tr><td height='40' colspan='2'>* Tarafınıza iletilen bu maili yanıtla seçeneğini seçerek <strong>yanıtlamayınız.</strong></td></tr><tr bgcolor='#0b4890'><td height='40' colspan='2' align='right'><a href='http://www.entegresoft.com/web-tasarimi' target='_blank' style='color:#fff;font-size:12px;text-decoration:none;'>web tasarım</a> <a href='http://www.entegresoft.com/' target='_blank'style='color:#fff;font-size:12px;text-decoration:none;'>entegre<strong>soft</strong></a></td></tr></table>"

strMailTo = "info@entegresoft.com"
strSubject = "GHU Application Form"

response.Write(mesaj)
end select

%>


<%
if instr(xxemail,"@") and instr(xxemail,".") then

Set Mailer = CreateObject("CDO.Message")
Mailer.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/languagecode") = 1254
Mailer.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=2
Mailer.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver")=strHost
Mailer.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport")=strHostPort
Mailer.Configuration.Fields.item("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
Mailer.Configuration.Fields.item("http://schemas.microsoft.com/cdo/configuration/sendusername") = strUsername
Mailer.Configuration.Fields.item("http://schemas.microsoft.com/cdo/configuration/sendpassword") = strMailPass
Mailer.Configuration.Fields.item("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = true
Mailer.Configuration.Fields.Update	
Mailer.BodyPart.Charset = "windows-1254"
Mailer.From = strUsername
Mailer.To = strMailTo
Mailer.BCC = strMailBCC &",duzgun@entegresoft.com"
Mailer.Subject = strSubject
Mailer.HTMLBody = mesaj  		
On Error Resume Next
Mailer.Send

end if


If Len(mesaj2) > 10 Then 

Set Mailer1 = CreateObject("CDO.Message")
Mailer1.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/languagecode") = 1254
Mailer1.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=2
Mailer1.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver")=strHost
Mailer1.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport")=strHostPort
Mailer1.Configuration.Fields.item("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
Mailer1.Configuration.Fields.item("http://schemas.microsoft.com/cdo/configuration/sendusername") = strUsername
Mailer1.Configuration.Fields.item("http://schemas.microsoft.com/cdo/configuration/sendpassword") = strMailPass
Mailer1.Configuration.Fields.item("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = true
Mailer1.Configuration.Fields.Update	
Mailer1.BodyPart.Charset = "windows-1254"
Mailer1.From = strUsername
Mailer1.To = strMailTo2
Mailer1.BCC = strMailBCC &",duzgun@entegresoft.com"
Mailer1.Subject = strSubject2
Mailer1.HTMLBody = mesaj2		
On Error Resume Next
Mailer1.Send
Set Mailer1 = Nothing

end if


If (Err = 0) Then
	Set Mailer = Nothing
	response.Redirect Request.ServerVariables("HTTP_REFERER") & "?ref="&formtipi
else
	Set Mailer = Nothing
	response.Redirect Request.ServerVariables("HTTP_REFERER") & "?ref=not"
end If
%>