
/*리스트 클릭할때마다 각각에 맞는 content*/
$(document).ready(function() {
	$('.tabs li').click(function() {
		var tab_id = $(this).attr('data-tab'); //.attr() : 요소의 속성(attribute) 값을 가져오거나 속성 추가 (data-tab 속성 값 가져오겠다.)

		$('.tabs li').removeClass('current');
		$('.tab_content').removeClass('current'); //모든 tab_content를 none

		$(this).addClass('current');
		$("#" + tab_id).addClass('current'); //각각의 id tab1, tab2, tab3을 block
	})
})

/*비밀번호 변경 버튼 클릭했을 때*/
function setDisable() {
	var el = document.getElementById("mem_pw2").disabled = false;
	el.disabled = "true";
}
