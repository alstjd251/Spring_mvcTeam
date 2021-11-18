function minus(){
  var n=document.getElementById("res_personnel");
  var tmp = parseInt(n.innerText);

  tmp--;
  if(tmp < 1){
      tmp = 1;
  }
  n.innerText = tmp;
}

function plus(){
  var n=document.getElementById("res_personnel");
  var tmp = parseInt(n.innerText);

  tmp++;
  if(tmp>10){
      tmp=10;
      alert("최대 인원은 10명입니다.");
  }
  n.innerText = tmp;
}
setInterval(function () {
	$("#res_gggg>li>a").delay(3000);
	$("#res_gggg>li>a").animate({ marginLeft: "-100%"});
	$("#res_gggg>li>a").delay(3000);
	$("#res_gggg>li>a").animate({ marginLeft: "-200%"});
	$("#res_gggg>li>a").delay(3000);
	$("#res_gggg>li>a").animate({ marginLeft: "-300%"});
	$("#res_gggg>li>a").delay(3000);
	$("#res_gggg>li>a").animate({ marginLeft: "0"}, "fast");
});
$(window).on("load", function() {

$(".pimg1,.pimg2,.pimg3,.pimg4").css({width: $("#reservation").width() * 0.20 + "px",})
});

$(window).on("resize", function() {

$(".pimg1,.pimg2,.pimg3,.pimg4").css({width: $("#reservation").width() * 0.20 + "px",})
});

var resdate = document.getElementById("res_date").value;
      resdate = new Date().toISOString().substring(0, 10);
      document.getElementById("res_date").setAttribute("min", resdate);