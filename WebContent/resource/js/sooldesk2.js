/* 여기서부터 가변높이 설정 */
function sectionResize() {
    var section = document.querySelector(".section");
    var fade1 = document.querySelector("#fade1");
    var introduce = document.querySelector("#introduce");
    var reservation = document.querySelector("#reservation");
    var board = document.querySelector("#board");
    var pimg1 = document.querySelector(".pimg1");
    var pimg2 = document.querySelector(".pimg2");
    var pimg3 = document.querySelector(".pimg3");
    var pimg4 = document.querySelector(".pimg4");
    var pimg5 = document.querySelector(".pimg5");
    var yang01 = document.querySelector("#yang01-course");
    var yang02 = document.querySelector("#yang02-course");

    pimg1.style.width = window.innerWidth + "px";
    pimg2.style.width = window.innerWidth + "px";
    pimg3.style.width = window.innerWidth + "px";
    pimg4.style.width = window.innerWidth + "px";
    pimg5.style.width = window.innerWidth + "px";
    yang01.style.height = window.innerHeight + "px";
    yang02.style.height = window.innerHeight + "px";
    section.style.height = window.innerHeight + "px";
    fade1.style.height = window.innerHeight + "px";
    introduce.style.height = window.innerHeight + "px";
    reservation.style.height = window.innerHeight + "px";
    board.style.height = window.innerHeight + "px";
}
window.onload = function () {
    sectionResize();
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
};
window.onresize = function () {
    sectionResize();
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
};
/* 메인페이지 페이드인아웃 설정 */
$("#fade1>li").hide();
$("#fade1>li:first-child").show();
setInterval(function () {
    $("#fade1>li:first-child").fadeOut().next().fadeIn().end(1000).appendTo("#fade1");
}, 4000);
/* 풀페이지 스크롤 스냅 */
/* var sectionWrap = $(".section");
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
} */
/* 광고 또는 배너 사이즈와 js */
$("#gg").css({ height: innerHeight - 400 + "px" });
/*메인페이지 ad 좌우슬라이딩*/
setInterval(function () {
    //함수 반복
    $("#gg>li>a").delay(2500); //2.5초 정지
    $("#gg>li>a").animate({ marginLeft: "-200%" });
    $("#gg>li>a").delay(2500);
    $("#gg>li>a").animate({ marginLeft: "-400%" });
    $("#gg>li>a").delay(2500);
    $("#gg>li>a").animate({ marginLeft: "-600%" });
    $("#gg>li>a").delay(2500);
    $("#gg>li>a").animate({ marginLeft: "-800%" });
    $("#gg>li>a").delay(2500);
    $("#gg>li>a").animate({ marginLeft: "0" }, "fast");
});