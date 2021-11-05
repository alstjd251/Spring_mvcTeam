function modal(id) {
  var zIndex = 9999;
  var modal = document.getElementById(id);
  var m = modal.style.display;

  // 모달 div 뒤에 희끄무레한 레이어
  var bg = document.createElement("div");
  bg.setStyle({
    position: "fixed",
    zIndex: zIndex,
    left: "0px",
    top: "0px",
    width: "100%",
    height: "100%",
    overflow: "auto",
    // 레이어 색갈은 여기서 바꾸면 됨
    backgroundColor: "rgba(0,0,0,0.4)",
  });
  document.body.append(bg);

  // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
  modal.querySelector(".be_close_btn").addEventListener("click", function () {
    document.getElementById("login-name").value = "";
    document.getElementById("login-pass").value = "";
    bg.remove();
    modal.style.display = "none";
  });
  modal.setStyle({
    position: "fixed",
    display: "block",
    boxShadow:
      "0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)",

    // 시꺼먼 레이어 보다 한칸 위에 보이기
    zIndex: zIndex + 1,

    // div center 정렬
    top: "50%",
    left: "50%",
    transform: "translate(-50%, -50%)",
    msTransform: "translate(-50%, -50%)",
    webkitTransform: "translate(-50%, -50%)",
  });
}
// Element 에 style 한번에 오브젝트로 설정하는 함수 추가
Element.prototype.setStyle = function (styles) {
  for (var k in styles) this.style[k] = styles[k];
  return this;
};
document
  .getElementById("popup_open_btn")
  .addEventListener("click", function () {
    // 모달창 띄우기
    modal("be_login_modal");
  });
/* 아이디 비밀번호 찾기 html*/
document.querySelector("#id_pw_search").addEventListener("click", function () {
  document.querySelector("#be_idpwsearch").style.display = "block";
  document.querySelector(".be_login").style.display = "none";
});
/*아이디 비밀번호 찾기 페이지에서 닫기 누를 시 로그인 페이지로 이동*/
document.querySelector(".be_close_btn1").addEventListener("click", function () {
  document.querySelector("#be_idpwsearch").style.display = "none";
  document.querySelector(".be_login").style.display = "block";
});
/*회원 가입 html*/
document.querySelector("#new_login").addEventListener("click", function () {
  document.querySelector(".new_login").style.display = "block";
  document.querySelector(".be_login").style.display = "none";
});
/* 기업 가입 html */
document.querySelector("#new_com_login").addEventListener("click", function () {
  document.querySelector(".new_com_login").style.display = "block";
  document.querySelector(".be_login").style.display = "none";
});
/* 여기서부터 가변높이 설정 */
function sectionResize() {
  var section = document.querySelector(".section");
  var fade1 = document.querySelector("#fade1");
  var introduce = document.querySelector("#introduce");
  var reservation = document.querySelector("#reservation");
  var board = document.querySelector("#board");
  var pimg = document.querySelector(".pimg");
  pimg.style.width = window.innerWidth + "px";
  section.style.height = window.innerHeight + "px";
  fade1.style.height = window.innerHeight + "px";
  introduce.style.height = window.innerHeight + "px";
  reservation.style.height = window.innerHeight + "px";
  board.style.height = window.innerHeight + "px";
}
window.onload = function () {
  sectionResize();
  window.addEventListener("resize", sectionResize);
};
/* 메인페이지 페이드인아웃 설정 */
$("#fade1>li").hide();
$("#fade1>li:first-child").show();
setInterval(function () {
  $("#fade1>li:first-child")
    .fadeOut()
    .next()
    .fadeIn()
    .end(1000)
    .appendTo("#fade1");
}, 4000);
/* 풀페이지 스크롤 스냅 */
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
/* 광고 또는 배너 사이즈와 js */
$("#ad").css({ height: innerHeight - 400 + "px" });
/*메인페이지 ad 좌우슬라이딩*/
setInterval(function () {
  //함수 반복
  $("#ad>li>a").delay(2500); //2.5초 정지
  $("#ad>li>a").animate({ marginLeft: "-200%" });
  $("#ad>li>a").delay(2500);
  $("#ad>li>a").animate({ marginLeft: "-400%" });
  $("#ad>li>a").delay(2500);
  $("#ad>li>a").animate({ marginLeft: "-600%" });
  $("#ad>li>a").delay(2500);
  $("#ad>li>a").animate({ marginLeft: "-800%" });
  $("#ad>li>a").delay(2500);
  $("#ad>li>a").animate({ marginLeft: "0" }, "fast");
});
