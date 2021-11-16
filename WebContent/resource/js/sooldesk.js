/* 여기서부터 가변높이 설정 */
$(window).on("load", function () {
  /* 반응형 가로 세로 길이 설정 */
  $(
    ".pimg1 , .pimg2 , .pimg3 , .pimg4 , .pimg5, #ggtwo, #ggtwo>li>a, #ggtwo>li"
  ).css({
    width: innerWidth * 0.8 + "px",
  });
  $("#ggone , .pimg").css({ width: innerWidth * 0.2 + "px" });
  $(
    ".section , #fade1 , #introduce, #reservation, #board"
  ).css({
    height: innerHeight + "px",
  });
  $("#gg").css({ height: innerHeight - 400 + "px" });
  /* 풀페이지 설정 */
  var sectionWrap = $(".section");
  var sect = $(".sect");
  var sectionLen = sect.length;
  var idx = 0;
  var state = false;
  sect.css({ height: window.innerHeight });
  sect.on("mousewheel DOMMouseScroll", mouseWheel);
  function mouseWheel() {
    if (state == true) return;
    var delta = window.event.deltaY;
    var deltaF = window.event.detail;
    delta > 0 || deltaF > 0 ? idx++ : idx--;
    indexChk(idx);
  }
  function indexChk($idx) {
    console.log($idx, sectionLen);
    if ($idx < 0) {
      idx = 0;
      return;
    } else if ($idx == sectionLen) {
      idx = sectionLen - 1;
      return;
    }
    state = true;
    showSection($idx);
  }
  function showSection($idx) {
    var posY = -(window.innerHeight * $idx);
    TweenMax.to(sectionWrap, 0.6, {
      top: posY,
      ease: Power4.easeInOut,
      onComplete: function () {
        state = false;
      },
    });
  }
  $("#drink").css({
    left: $("#intro").width() - $("#drink").width() / 2 + "px",
    top: innerHeight * 0.9 - $("#drink").height() + 25 + "px",
  });
});
$(window).on("resize", function () {
  /* 반응형 가로 세로 길이 */
  $(
    ".pimg1 , .pimg2 , .pimg3 , .pimg4 , .pimg5, #ggtwo, #ggtwo>li>a, #ggtwo>li"
  ).css({
    width: innerWidth * 0.8 + "px",
  });
  $("#ggone, .pimg").css({ width: innerWidth * 0.2 + "px" });
  $(
    "#yang01-course , #yang02-course, .section , #fade1 , #introduce, #reservation, #board"
  ).css({
    height: innerHeight + "px",
  });
  $("#gg").css({ height: innerHeight - 400 + "px" });
  /* 풀페이지 설정 */
  var sectionWrap = $(".section");
  var sect = $(".sect");
  var sectionLen = sect.length;
  var idx = 0;
  var state = false;
  sect.css({ height: window.innerHeight });
  sect.on("mousewheel DOMMouseScroll", mouseWheel);
  function mouseWheel() {
    if (state == true) return;
    var delta = window.event.deltaY;
    var deltaF = window.event.detail;
    delta > 0 || deltaF > 0 ? idx++ : idx--;
    indexChk(idx);
  }
  function indexChk($idx) {
    console.log($idx, sectionLen);
    if ($idx < 0) {
      idx = 0;
      return;
    } else if ($idx == sectionLen) {
      idx = sectionLen - 1;
      return;
    }
    state = true;
    showSection($idx);
  }
  function showSection($idx) {
    var posY = -(window.innerHeight * $idx);
    TweenMax.to(sectionWrap, 0.6, {
      top: posY,
      ease: Power4.easeInOut,
      onComplete: function () {
        state = false;
      },
    });
  }
  $("#drink").css({
    left: $("#intro").width() - $("#drink").width() / 2 + "px",
    top: innerHeight * 0.9 - $("#drink").height() + 25 + "px",
  });
});
/* 메인페이지 페이드인아웃 설정 */
$("#fade2>li").hide();
$("#fade2>li:first-child").show();
setInterval(function () {
  $("#fade2>li:first-child")
    .fadeOut()
    .next()
    .fadeIn()
    .end(1000)
    .appendTo("#fade2");
}, 4000);

/* 광고 또는 배너 사이즈와 js */
$("#gg").css({ height: innerHeight - 400 + "px" });
/*메인페이지 ad 좌우슬라이딩*/
setInterval(function () {
  //함수 반복
  $("#gg>#ggtwo>li>a").delay(2500); //2.5초 정지
  $("#gg>#ggtwo>li>a").animate({ marginLeft: "-200%" });
  $("#gg>#ggtwo>li>a").delay(2500);
  $("#gg>#ggtwo>li>a").animate({ marginLeft: "-400%" });
  $("#gg>#ggtwo>li>a").delay(2500);
  $("#gg>#ggtwo>li>a").animate({ marginLeft: "-600%" });
  $("#gg>#ggtwo>li>a").delay(2500);
  $("#gg>#ggtwo>li>a").animate({ marginLeft: "-800%" });
  $("#gg>#ggtwo>li>a").delay(2500);
  $("#gg>#ggtwo>li>a").animate({ marginLeft: "0" }, "fast");
});
