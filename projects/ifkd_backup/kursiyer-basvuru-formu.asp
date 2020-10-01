
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9" />
  <meta name="Description" content="Folklor, Halk oyunları kursu.Folklor Kursları, Aydın Zeybek kursu,efe, Halay kursu, Trabzon Horon Kursu, Artvin, Elazığ yöresi.İstanbul Folklor Kursu, Halk Oyunları Kursu."/> 
<meta name="Keywords" content="folklor, halk oyunları, dans, muzik, ifkd, zeybek, halay"/> 
<meta name="google-site-verification" content="KTLNI8KU8A2v8IYCT6JlXN7bYd4uvficFjTrWha6SuA" />

  <title>İstanbul Folklor Kurumu | Kursiyer Başvuru Formu</title>

<!--#include file="_script.asp"-->
	 <script type="text/javascript" src="js/jquery.validate.js"></script>
<script>
$(document).ready(function(){
$("#Form1").validate();

});
</script>

<script src="js/jquery.maskedinput.js"></script>
<script type="text/javascript">
$("document").ready(function(e) {
    	jQuery(function($){
   $("#dogum").mask("99/99/9999",{placeholder:"dd/mm/yyyy"});
   $("#phone").mask("(999) 999-9999");
   $("#tin").mask("99-9999999");
   $("#ssn").mask("999-99-9999");
});
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
<h1 class="margin-left-50">Kursiyer Başvuru Formu</h1>
</div>



</div>
<div class="clear"></div>

</div>

<div id="icerik-alt" class="margin-top-25">
<h3 class="size19 margin-top-15 mavi2">NOT:<strong><strong> 2017 - 2018</strong></strong> KURSİYER KAYITLARIMIZ BAŞLAMIŞTIR .</h3>

<div class="w250 fleft padding-top-15">




<form id="Form1" method="post" action="http://www.entegresoft.biz/_emailform/_gonder.asp">
<input type="hidden" name="formadi"  value="İletişim Formu">
<input type="hidden" name="formtipi"  value="kursiyer">
<input type="hidden" name="referans" value="<%=Request.ServerVariables("HTTP_REFERER")%>" />
<input type="hidden" name="sayfa" value="<%=request.ServerVariables("URL")%>" />
<input type="hidden" name="ipadres" value="<%=Request.ServerVariables("REMOTE_ADDR")%>" />
<input type="hidden" id="domain" name="domain" value="<%=replace(replace(replace(replace(request.ServerVariables("SERVER_NAME"),"www.",""),"http://",""),"https://",""),"/","")%>" />
<input name="dil" id="dil" type="hidden" value="tr" />



               	  	    <input type="text" value="Ad Soyad" name="isim" id="isim" class="required input border-radius-3"  placeholder="Ad Soyad" onBlur="if(this.value=='') this.value=''" onFocus="if(this.value =='Ad Soyad' ) this.value=''" />
                         <div class="clear"></div>
                        <input type="text" value="" name="email" id="email" class="required email input border-radius-3" placeholder="E-Mail" onBlur="if(this.value=='') this.value=''" onFocus="if(this.value =='E-Mail' ) this.value=''"/>
                        <div class="clear"></div>
                        
                         <input type="text" value="Dogum Tarihi" name="dogum" id="dogum" class="required input border-radius-3"  placeholder="Dogum Tarihi" onBlur="if(this.value=='') this.value=''" onFocus="if(this.value =='Dogum Tarihi' ) this.value=''" />
                          <div class="clear"></div>
                          
                          <input type="text" value="Meslek" name="Meslek" id="Meslek" class="required input border-radius-3"  placeholder="Meslek" onBlur="if(this.value=='') this.value=''" onFocus="if(this.value =='Meslek' ) this.value=''" />
                         <div class="clear"></div>
                         
                           <input type="text" value="Öğrenim Durumu" name="ogrenim" id="ogrenim" class="required input border-radius-3"  placeholder="Öğrenim Durumu" onBlur="if(this.value=='') this.value=''" onFocus="if(this.value =='Öğrenim Durumu' ) this.value=''" />
                         <div class="clear"></div>
                          
                         <input type="text" value="Sabit Telefon" name="telefon" id="telefon" class=" border-radius-3"  placeholder="Sabit Telefon" onBlur="if(this.value=='') this.value=''" onFocus="if(this.value =='Sabit Telefon' ) this.value=''" />
                          <div class="clear"></div>
                          
 <input type="text" value="GSM" name="gsm" id="gsm" class="required digits input border-radius-3"  placeholder="GSM" onBlur="if(this.value=='') this.value=''" onFocus="if(this.value =='GSM' ) this.value=''" />
                        <div class="clear"></div>
                      
                	  	<input type="submit" name="Gonder" id="Gonder" value="Gönder"  class="border-radius-3 fright" />
                        
 <div class="clear0"></div> 
                       
<%if request.QueryString("ref")= "kursiyer" then%>
<div class="w240"><h3 class="size15 kirmizi "><br />Kaydınız alınmıştır. Sizinle en kısa s&uuml;rede iletişime ge&ccedil;ilecektir</h3></div>

<meta http-equiv="refresh" content="5;URL=<%=Request.ServerVariables("HTTP_REFERER")%>" />

<%end if%>
</form>



</div>


<div class="w300 fleft margin-top-100 margin-left-50"><img src="img/logo.png" width="275" height="100" /></div>

<ul>






<div class="clear margin-bottom-15"></div>





<div class="clear margin-bottom-15"></div>

</ul>



</div>


</div>
 <!--footer-->
<!--#include file="_footer.asp"-->
 <!--footer bitti-->

</div>
  </body>
</html>
