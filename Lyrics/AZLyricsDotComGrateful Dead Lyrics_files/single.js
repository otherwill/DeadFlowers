var cf_az_resize_delay,cf_last_size=!1;cfFireComscorePixel();cfMakeFlexAd();cfMakeTfpAd("cf_text_top",39382074);cfMakeTfpAd("cf_text_bottom",39382075);cfUpdateAds();cfKeepUpdatingAds();function cfFireComscorePixel(){var a=a||[];a.push({c1:"2",c2:"6772046"});var a=document.createElement("script"),b=document.getElementsByTagName("script")[0];a.async=!0;a.src=("https:"==document.location.protocol?"https://sb":"http://b")+".scorecardresearch.com/beacon.js";b.parentNode.insertBefore(a,b)}
function cfResizePageFooter(){var a=document.querySelectorAll("nav.navbar-footer")[0].offsetHeight,b=document.querySelectorAll("div.lboard-wrap")[0].offsetHeight,d=document.querySelectorAll("nav.navbar-footer")[0].offsetHeight,e=document.querySelectorAll("div.footer-wrap")[0].offsetHeight;document.getElementById("fake-footer").style.height=a+b+d+e+"px"}
function cfMakeFlexAd(){cf_adunit_id="39381789";cf_flex=!0;var a=document.createElement("div"),b=document.querySelectorAll("nav.navbar-footer")[0];a.style.width="0px";a.style.visibility="hidden";a.style.position="absolute";a.setAttribute("id","fake-footer");b.appendChild(a);cfResizePageFooter();window.cf_page_header="nav.navbar-fixed-top, nav.navbar-static-top";window.cf_page_footer="#fake-footer";window.cf_page_element="div.main-page";document.addEventListener("DOMContentLoaded",function(){document.addEventListener("resize",
function(){cfResizePageFooter()})});document.write('<script src="//srv.clickfuse.com/showads/js/cf.min.js">\x3c/script>')}function cfMakeTfpAd(a,b){document.getElementById(a)&&document.write("<script>"+("cf.showAsyncAd({artist: cf_page_artist,song: cf_page_song,genre: cf_page_genre,adunit_id: "+b+',div_id: "'+a+'"});')+"\x3c/script>")}function cfDelayedUpdate(){clearTimeout(cf_az_resize_delay);cf_az_resize_delay=setTimeout(cfUpdateAds,100)}
function cfUpdateAds(){if(768>window.innerWidth||navigator.userAgent.match(/(Android|iPhone|iPad|iPod)/i)){var a="mobile";a!==cf_last_size&&(cf_last_size=a,cfMakeAsyncAd("cf_banner_top_nofc",39384098,320,50),cfMakeAsyncAd("cf_banner_top",39384098,320,50),cfMakeAsyncAd("cf_banner_bottom",39384099,320,50),cfMakeAsyncAd("cf_medrec",!1),cfMakeAsyncAd("cf_rect_bottom",39381148,300,250))}else a="desktop",a!==cf_last_size&&(cf_last_size=a,cfMakeAsyncAd("cf_banner_top_nofc",39380476,728,90),cfMakeAsyncAd("cf_banner_top",
39380948,728,90),cfMakeAsyncAd("cf_banner_bottom",39382321,728,90),cfMakeAsyncAd("cf_medrec",39382336,300,250),cfMakeAsyncAd("cf_rect_bottom",!1))}function cfKeepUpdatingAds(){document.write('<script>cf.add_event(window, "resize", cfDelayedUpdate);\x3c/script>')}
function cfMakeAsyncAd(a,b,d,e){if(a=document.getElementById(a))if(a.innerHTML="",b){a.parentNode.style.height=50===e?"50px":"auto";var c=document.createElement("iframe");c.width=d;c.height=e;c.scrolling="no";c.frameBorder=0;a.appendChild(c);d=c.contentDocument||c.contentWindow.document;d.write('<body style="margin:0px;"><script>cf_page_artist = "'+cf_page_artist+'";\ncf_page_song = "'+cf_page_song+'";\ncf_page_genre = "'+cf_page_genre+'";\ncf_adunit_id = '+b+';\n\x3c/script>\n<script src="//srv.clickfuse.com/showads/js/cf.min.js">\x3c/script></body>');
d.close()}};