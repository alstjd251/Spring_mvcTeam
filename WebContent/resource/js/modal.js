function modal(id) {
  var zIndex = 9999;
  var modal = document.getElementById(id);
  var m = modal.style.display;

  // 모달 div 뒤에 희끄무레한 레이어
  var bg = document.createElement("div");
  bg.setStyle({
    display: "block",
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
/* 회원 가입 페이지에서 닫기 누를 시 로그인 페이지로 이동 */
document.querySelector(".be_close_btn2").addEventListener("click", function () {
  document.querySelector(".new_login").style.display = "none";
  document.querySelector(".be_login").style.display = "block";
});
/* 기업 가입 html */
/* document.querySelector("#new_com_login").addEventListener("click", function () {
  document.querySelector(".new_com_login").style.display = "block";
  document.querySelector(".be_login").style.display = "none";
}); */
