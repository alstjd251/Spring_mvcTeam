function menuscroll() {
  if (pageYOffset >= 200) {
    document.querySelector(".menu").style.position = "fixed";
    document.querySelector(".menu").style.top = 0;
    document.querySelector(".menu").style.backgroundColor = "white";
    document.querySelector(".menu").style.marginTop = 0;
  } else {
    document.querySelector(".menu").style.position = "static";
    document.querySelector(".menu").style.marginTop = 200 + "px";
  }
}
window.addEventListener("scroll", menuscroll);