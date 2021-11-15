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
/* 예약페이지 광고 배너 */
setInterval(function () {
  $("#res_gggg>li>a").delay(4000); //4초 정지
  $("#res_gggg>li>a").animate({ marginLeft: "-100%"});
  $("#res_gggg>li>a").delay(4000);
  $("#res_gggg>li>a").animate({ marginLeft: "-200%"});
  $("#res_gggg>li>a").delay(4000);
  $("#res_gggg>li>a").animate({ marginLeft: "-300%"});
  $("#res_gggg>li>a").delay(4000);
  $("#res_gggg>li>a").animate({ marginLeft: "0"}, "fast");
});
$(window).on("load", function () {
  $(".pimg1 , .pimg2 , .pimg3 , .pimg4").css({
    width: $("section").width() * 0.25 + "px",
  });
});
$(window).on("resize", function () {
  $(".pimg1 , .pimg2 , .pimg3 , .pimg4").css({
    width: $("section").width() * 0.25 + "px",
  });
});