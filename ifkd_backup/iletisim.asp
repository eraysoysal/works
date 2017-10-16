
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9" />
  <meta name="Description" content="Folklor, Halk oyunları kursu.Folklor Kursları, Aydın Zeybek kursu,efe, Halay kursu, Trabzon Horon Kursu, Artvin, Elazığ yöresi.İstanbul Folklor Kursu, Halk Oyunları Kursu."/> 
<meta name="Keywords" content="folklor, halk oyunları, dans, muzik, ifkd, zeybek, halay"/> 
<meta name="google-site-verification" content="KTLNI8KU8A2v8IYCT6JlXN7bYd4uvficFjTrWha6SuA" />

  <title>İstanbul Folklor Kurumu | İletişim</title>

<!--#include file="_script.asp"-->
	 <script type="text/javascript" src="js/jquery.validate.js"></script>
<script>
$(document).ready(function(){
$("#Form2").validate();
});
</script>	

  
 
		

</head>

<body>
<div id="container" class="w100-100">

<div id="slide" class="randbg">
<!--header-->
<!--#include file="_header2.asp"-->
<!--header bitti-->

<!--slide-->

<!--slide bitti-->

 </div> 
 

<div id="icerik" class="w980 center margin-top-30">

<div id="icerik-ust">
<div class="w980">
<div class="baslik1">
<h1 class="margin-left-50">İletişim</h1>
</div>



</div>
<div class="clear"></div>

</div>

<div id="icerik-alt" class="margin-top-25">
<div class="w980">
<div class="w600 fleft">
<h2 class=" margin-top-20 margin-bottom-15 bold">
İstanbul Folklor Kurumu Gençlik ve Spor Kulübü Derneği

</h2>

<p>
<strong><strong>Merkez Ofis :</strong></strong> Ebuziya Cad. Aksoy Pasajı No:7 Da:122 Bakırköy İstanbul<br />
<br />

<strong><strong>Çalışma Salonu : </strong></strong>Bakırköy - İstanbul<br />
<br />

<strong><strong>Kütük No :</strong></strong> 34-319320<br />

<strong><strong>Tel</strong></strong> # 0 541 418 30 04  -  <strong><strong>E-mail :</strong></strong> bilgi@ifkd.org</p>
</div>

<div class="w250 fright padding-top-15">




<form id="Form2" method="post" action="http://www.entegresoft.biz/_emailform/_gonder.asp">
<input type="hidden" name="formadi"  value="İletişim Formu">
<input type="hidden" name="formtipi"  value="iletisim">
<input type="hidden" name="referans" value="<%=Request.ServerVariables("HTTP_REFERER")%>" />
<input type="hidden" name="sayfa" value="<%=request.ServerVariables("URL")%>" />
<input type="hidden" name="ipadres" value="<%=Request.ServerVariables("REMOTE_ADDR")%>" />
<input type="hidden" id="domain" name="domain" value="<%=replace(replace(replace(replace(request.ServerVariables("SERVER_NAME"),"www.",""),"http://",""),"https://",""),"/","")%>" />
<input name="dil" id="dil" type="hidden" value="tr" />





               	  	    <input type="text" value="Ad Soyad" name="ad" id="ad" class="required input border-radius-3"  placeholder="Ad Soyad" onBlur="if(this.value=='') this.value=''" onFocus="if(this.value =='Ad Soyad' ) this.value=''" />
                         <div class="clear"></div>
                        <input type="text" value="" name="email" id="email" class="required email input border-radius-3" placeholder="E-Mail" onBlur="if(this.value=='') this.value=''" onFocus="if(this.value =='E-Mail' ) this.value=''"/>
                        <div class="clear"></div>
                         <input type="text" value="Telefon" name="telefon" id="telefon" class="required digits input border-radius-3"  placeholder="Telefon" onBlur="if(this.value=='') this.value=''" onFocus="if(this.value =='Telefon' ) this.value=''" />
                          <div class="clear"></div>

                        <div class="clear"></div>
                        <textarea name="mesaj" id="mesaj" cols="50" rows="3" class="required input border-radius-3"  placeholder="Sorunuz" onBlur="if(this.value=='') this.value=''" onFocus="if(this.value =='Sorunuz' ) this.value=''">Sorunuz</textarea>
                         <div class="clear"></div>
                	  	<input type="submit" name="Gonder" id="Gonder" value="Gönder"  class="border-radius-3 fright" />


 <div class="clear0"></div> 

<%if request.QueryString("ref")= "iletisim" then%>
<div class="w250"><h3 class="size14 kirmizi "><br />Mesajınız iletilmiştir.Sizinle en kısa s&uuml;rede iletişime ge&ccedil;ilecektir</h3></div>

<meta http-equiv="refresh" content="5;URL=<%=Request.ServerVariables("HTTP_REFERER")%>" />

<%end if%>
</form>



</div>



<div class="clear"></div>
</div>





<div id="map_canvas" style="width: 980px; height: 400px;border:solid 2px #ccddf5; margin-top:15px;"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1502.3555707945898!2d28.8787817!3d40.9942633!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNDDCsDU5JzM4LjgiTiAyOMKwNTInNDQuMiJF!5e1!3m2!1str!2s!4v1417438382656" width="980" height="400" frameborder="0" style="border:0"></iframe></div>        








<div class="clear margin-bottom-15"></div>








</div>


</div>
 <!--footer-->
<!--#include file="_footer.asp"-->
 <!--footer bitti-->

</div>
  </body>
</html>
