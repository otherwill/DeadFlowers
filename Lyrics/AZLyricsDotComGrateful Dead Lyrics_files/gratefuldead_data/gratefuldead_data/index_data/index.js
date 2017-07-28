
"use strict";
window.onload = function() {
  var img1 = document.getElementById("img1");
  var logo = document.getElementById("logo");
  var box = document.getElementById("box");
  var safety_pays = document.getElementById("safety_pays");
  var f2t1 = document.getElementById("f2t1");
  var f2t2 = document.getElementById("f2t2");
  var legal = document.getElementById("legal");
  
  	TweenLite.to(logo, 1, {delay:0, opacity:1, ease: Power4.easeOut});
	TweenLite.to(img1, 1, {delay:0, opacity:1, ease: Power4.easeOut});
	TweenLite.to(box, 1, {delay:1, opacity:1, left:210, ease: Power4.easeOut});
	TweenLite.to(safety_pays, 1, {delay:1.7, opacity:1, left:231, ease: Power4.easeOut, onComplete:frameTwo});
		
}					


function frameTwo(){
	TweenLite.to(box, 1.5, {delay:1.2, opacity:1, left:0, ease: Power4.easeOut});
	TweenLite.to(safety_pays, 1, {delay:1.2, opacity:0, ease: Power4.easeOut});
	TweenLite.to(f2t1, .8, {delay:2, opacity:1, top:13, ease: Power4.easeOut});
	TweenLite.to(f2t2, .8, {delay:2.5, opacity:1, top:34, ease: Power4.easeOut, onComplete:frameThree});
	}

function frameThree(){	
	TweenLite.to(txtZipCode, .2, {delay:0, opacity:1, display:"block", ease: Power4.easeOut});
	TweenLite.to(cta, .2, {delay: .4, opacity:1, ease: Power4.easeOut});
	TweenLite.to(legal, 1, {delay:1, opacity:1, ease: Power4.easeOut});
}


/*
function showIt(){

	setTimeout(function(){document.getElementById("txtZipCode").style.display = "block"}, 0);
	showIt1();
	}
function showIt1(){
	setTimeout(function(){document.getElementById("cta").style.visibility = "visible";}, 100);
	}
	*/
function getID(idName)
{
return document.getElementById(idName);
}
function clickAction(urloc)
{
   
    //Enabler.exit("clickTag", urloc);
    window.open(urloc,'_blank');

}

function clickTag_Action(btn_clicked)
{
var actionURL = window.clickTag;
if(btn_clicked)
{
var ziptxt = getID("txtZipCode").value;
    if(ziptxt.length == 5)
        actionURL += "&zipcode="+ziptxt+"&product=auto";
    }
clickAction(actionURL);
}