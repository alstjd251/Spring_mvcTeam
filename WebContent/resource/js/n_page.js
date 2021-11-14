/* 메뉴 상단 고정 js */
function menuscroll() {
  if (pageYOffset >= 50) {
    document.querySelector(".menu").style.position = "fixed";
    document.querySelector(".menu").style.top = 0;
    document.querySelector(".menu").style.backgroundColor = "white";
  } else {
    document.querySelector(".menu").style.position = "static";
    document.querySelector(".menu").style.backgroundColor = "";
  }
}
window.addEventListener("scroll", menuscroll);