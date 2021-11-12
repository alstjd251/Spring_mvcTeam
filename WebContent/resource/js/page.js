/* 메뉴 상단 고정 js */
function menuscroll() {
  if (pageYOffset >= 200) {
    document.querySelector(".menu").style.position = "fixed";
    document.querySelector(".menu").style.top = 0;
    document.querySelector(".menu").style.backgroundColor = "white";
  } else {
    document.querySelector(".menu").style.position = "static";
    document.querySelector(".menu").style.backgroundColor = "";
  }
}
window.addEventListener("scroll", menuscroll);

/* 상세페이지 광고 배너 */
/* $("#gggg>li>a").hide();
$("#gggg>li>a:first-child").show(); */
setInterval(function () {
  //함수 반복
  /*  $("#gggg>li>a:first-child")
    .animate({ marginLeft: "-100%" })
    .next()
    .end(1000)
    .appendTo("#gggg"); */
  $("#gggg>li>a").delay(4000); //4초 정지
  $("#gggg>li>a").animate({ marginLeft: "-100%" });
  $("#gggg>li>a").delay(4000);
  $("#gggg>li>a").animate({ marginLeft: "-200%" });
  $("#gggg>li>a").delay(4000);
  $("#gggg>li>a").animate({ marginLeft: "-300%" });
  $("#gggg>li>a").delay(4000);
  $("#gggg>li>a").animate({ marginLeft: "-400%" });
  $("#gggg>li>a").delay(4000);
  $("#gggg>li>a").animate({ marginLeft: "0" }, "fast");
});
/* 광고 배너 가로 길이 */
$(window).on("load", function () {
  $(".pimg1 , .pimg2 , .pimg3 , .pimg4 , .pimg5 , header").css({
    width: innerWidth - 16.7 + "px",
  });
});
$(window).on("resize", function () {
  $(".pimg1 , .pimg2 , .pimg3 , .pimg4 , .pimg5 , header").css({
    width: innerWidth - 16.7 + "px",
  });
});
