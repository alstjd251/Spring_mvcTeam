function menuscroll() {
  if (pageYOffset >= 20) {
    document.querySelector(".menu").style.position = "fixed";
    document.querySelector(".menu").style.top = 0;
    document.querySelector(".menu").style.backgroundColor = "white";
    document.querySelector(".menu").style.marginTop = 0;
  } else {
    document.querySelector(".menu").style.position = "static";
    document.querySelector(".menu").style.marginTop = 0 + "px";
  }
}
	window.addEventListener("scroll", menuscroll);


	$(document).ready(function(){
	  $('.tabs li').click(function(){
	  var tab_id = $(this).attr('data-tab'); //.attr() : 요소의 속성(attribute) 값을 가져오거나 속성 추가 (data-tab 속성 값 가져오겠다.)

	  $('.tabs li').removeClass('current');
	  $('.tab_content').removeClass('current'); //모든 tab_content를 none

	  $(this).addClass('current');
	  $("#"+tab_id).addClass('current'); //각각의 id tab1, tab2, tab3을 block
	})
	})