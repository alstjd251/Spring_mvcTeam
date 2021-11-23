<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="${root }css/board/page.css" />
<link rel="stylesheet" href="${root }css/include/n_header_footer.css" />
<link rel="stylesheet" href="${root }css/include/wave.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<title>Sul Sure</title>
<script type="text/javascript">
	var pwCheck = "fail";
	var idCheck = "fail";
	
	function idchecking() {
		var mem_id = $("#inputid").val()
		
		if(mem_id.length == 0){
			Swal.fire({
				icon: 'warning',
				title : "입력 오류",
			    text  : "아이디를 입력해주세요.",
			}).then(function(){
				idCheck = "fail";
			});
			return
		}
		if(mem_id.length < 4){
			Swal.fire({
				icon: 'warning',
				title : "입력 오류",
			    text  : "아이디는 최소 4글자 이상 입력해야 합니다.",
			}).then(function(){
				idCheck = "fail";
				document.getElementById("idGroup").className = "form-group has-error has-feedback"
			});
			return
		}
		
		$.ajax({
			url : '${root}member/idcheck/' + mem_id,
			type : 'get',
			dataType : 'text',
			success : function(result){
				if(result.trim() == 'true'){
					Swal.fire({
						icon: 'success',
						title : "사용 가능",
					    text  : "사용 가능한 아이디 입니다.",
					}).then(function(){
						$("#idExist").val('true')
						idCheck = "success";
						document.getElementById("idGroup").className = "form-group has-success has-feedback"
					});
				}else{
					Swal.fire({
						icon: 'warning',
						title : "사용 불가능",
					    text  : "사용할 수 없는 아이디 입니다.",
					}).then(function(){
						$("#idExist").val('false')
						document.getElementById("idGroup").className = "form-group has-error has-feedback"
						$("#inputid").val("");
					});
				}
			}
		})
	}
	
	function resetUserIdExist(){
		$("#idExist").val('false')
	}
	
	function pwcheck(){
		var pw1 = $("#inputpw").val();
		var pw2 = $("#inputpw2").val();
		if(pw1 != pw2){
			$("#pw_not_same").text("비밀번호가 일치하지 않습니다.").css("color","red");
			$("#pwGroup1, #pwGroup2").attr("class","form-group has-error has-feedback");
			pwCheck = "fail";
		}else if(pw1 == ""){
			$("#pw_not_same").text("비밀번호를 입력 해주세요.").css("color","red");
			$("#pwGroup1, #pwGroup2").attr("class","form-group has-error has-feedback");
			pwCheck = "fail";
		}
		else{
			$("#pw_not_same").text("비밀번호가 일치합니다.").css("color","green");
			$("#pwGroup1, #pwGroup2").attr("class","form-group has-success has-feedback");
			pwCheck = "success";
		}
	}
	var submitCheck = 'fail';
	function namecheck(){
		var name = $("#inputname").val();
		if(name == ""){
			$("#name_input").text("이름을 입력 해주세요.").css("color","red");
			$("#nameGroup").attr("class","form-group has-error has-feedback");
			submitCheck = 'fail';
		}else if(!isNaN(name)){
			$("#name_input").text("숫자는 입력할 수 없습니다.").css("color","red");
			$("#nameGroup").attr("class","form-group has-error has-feedback");
			submitCheck = 'fail';
		}
		else if(name.length < 2){
			$("#name_input").text("이름은 2글자 이상 입력 해주세요.").css("color","red");
			$("#nameGroup").attr("class","form-group has-error has-feedback");
			submitCheck = 'fail';
		}
		else{
			$("#name_input").text("")
			$("#nameGroup").attr("class","form-group has-success has-feedback");
			submitCheck = 'success';
		}
		
	}
	
	function joomincheck(){
		var joomin = $("#inputjoomin").val();
		var joominPattern = RegExp(/^[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/);
		if(joomin == ""){
			$("#joomin_input").text("생년월일을 입력 해주세요.").css("color","red");
			$("#joominGroup").attr("class","form-group has-error has-feedback");
			submitCheck = 'fail';
			
		}else{
			if(joominPattern.test(joomin)){
				$("#joomin_input").text("")
				$("#joominGroup").attr("class","form-group has-success has-feedback");
				submitCheck = 'success';
			}
			else{
				$("#joomin_input").text("생년월일을 확인 해주세요.").css("color","red");
				$("#joominGroup").attr("class","form-group has-error has-feedback");
				submitCheck = 'fail';
			}
		}
	}
	
	function gendercheck(){
		var gedner = $("#inputgender").val();
		var genderPattern = RegExp(/^[1-4]$/);
		if(gedner == ""){
			$("#gender_input").text("주민등록번호 뒷자리를 입력 해주세요.").css("color","red");
			$("#joominGroup").attr("class","form-group has-error has-feedback");
			submitCheck = 'fail';
			
		}else{
			if(genderPattern.test(gedner)){
				$("#gender_input").text("")
				$("#joominGroup").attr("class","form-group has-success has-feedback");
				submitCheck = 'success';
			}
			else{
				$("#gender_input").text("주민등록번호 뒷자리를 확인 해주세요.").css("color","red");
				$("#joominGroup").attr("class","form-group has-error has-feedback");
				submitCheck = 'fail';
			}
		}
	}
		
	function mailcheck(){
		var mail = $("#inputmail").val();
		if(mail == ""){
			$("#mail_input").text("이메일을 입력해주세요.").css("color","red");
			$("#mailGroup").attr("class","form-group has-error has-feedback");
			submitCheck = 'fail';
			
		}else{
			$("#mail_input").text("")
			$("#mailGroup").attr("class","form-group has-success has-feedback");
			submitCheck = 'success';
			
		}
	}
			
	function phonecheck(){
		var phone = $("#inputphone").val();
		var phonePattern1 = RegExp(/^010[0-9]{8}$/);
		var phonePattern2 = RegExp(/^01[179][0-9]{7,8}$/);
		if(phone == ""){
			$("#phone_input").text("연락처를 입력해주세요.").css("color","red");
			$("#phoneGroup").attr("class","form-group has-error has-feedback");
			submitCheck = 'fail';
			
		}else{
			if(phonePattern1.test(phone)){
				$("#phone_input").text("")
				$("#phoneGroup").attr("class","form-group has-success has-feedback");
				submitCheck = 'success';
			}
			else if(phonePattern2.test(phone)){
				$("#phone_input").text("")
				$("#phoneGroup").attr("class","form-group has-success has-feedback");
				submitCheck = 'success';
			}
			else{
				$("#phone_input").text("연락처를 확인해주세요.").css("color","red");
				$("#phoneGroup").attr("class","form-group has-error has-feedback");
				submitCheck = 'fail';
			}
		}
	}
	
	function addr1check(){
		var addr1 = $("#sample6_address").val();
		if(addr1 == ""){
			$("#addr1_input").text("주소를 입력해주세요.").css("color","red");
			$("#addr1Group").attr("class","form-group has-error has-feedback");
			submitCheck = 'fail';
			
		}else{
			$("#addr1_input").text("")
			$("#addr1Group").attr("class","form-group has-success has-feedback");
			submitCheck = 'success';
			
		}
	}
	
	function addr2check(){
		var addr2 = $("#sample6_detailAddress").val();
		if(addr2 == ""){
			$("#addr2_input").text("상세주소를 입력해주세요.").css("color","red");
			$("#addr2Group").attr("class","form-group has-error has-feedback");
			submitCheck = 'fail';
			
		}else{
			$("#addr2_input").text("")
			$("#addr2Group").attr("class","form-group has-success has-feedback");
			submitCheck = 'success';
			
		}
	}
	
	function regBut(){
		if(idCheck == "success" && pwCheck == "success" && submitCheck == 'success'){
			$("#regForm").submit();
		}
		if(pwCheck == "fail"){
			Swal.fire({
				icon: 'warning',
				title : "비밀번호가 일치 하지 않습니다.",
			    text  : "다시 입력해주세요.",
			}).then(function(){
				$("#").val('false')
				document.getElementById("idGroup").className = "form-group has-error has-feedback"
				$("#inputpw, #inputpw2").val("");
			});
		}
		if(idCheck == "fail"){
			Swal.fire({
				icon: 'warning',
				title : "아이디 중복 확인이 되지 않았습니다.",
			    text  : "중복 확인을 해주세요.",
			}).then(function(){
				$("#").val('false')
				document.getElementById("idGroup").className = "form-group has-error has-feedback"
				$("#inputid").focus();
			});
		}
		if(submitCheck == "fail"){
			Swal.fire({
				icon: 'warning',
				title : "입력 값 오류.",
			    text  : "입력 값을 확인해주세요.",
			})
		}
		
	}
	

</script>


</head>
<body>
	<!-- 헤더 -->
	<header>
		<!-- 헤더 배너광고 -->
		<!-- 헤더 메뉴 -->
		<div class="menu">
			<div class="menu1">
				<c:import url="/WEB-INF/views/include/header.jsp" />
			</div>
		</div>
	</header>
	<!-- 회원가입 폼 부분 -->
	<section>
		<div class="page-header" align="center">
	 		<h1>회원가입</h1>
		</div>
		<div style="margin-bottom: 240px; display: flex; flex-direction: column; align-items: center; justify-content: center;">
			<form:form id="regForm" class="form-horizontal" action="${root }member/join_proc" modelAttribute="memberBean">
				<form:hidden path="idExist"/>
					<!-- 아이디 -->
					<div id="idGroup" class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_id" for="inputid" class="col-sm-2 control-label">아이디*</form:label>
						<div class="col-sm-10" style="display:flex;">
							<form:input pattern="^[0-9]+$" style="width:235px;" path="mem_id" class="form-control" id="inputid" onkeypress="resetUserIdExist()" placeholder="아이디" />
							<input type="button" style="margin-left:10px;" id="idcheck" onclick="idchecking()" value="중복확인"/>
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<form:errors path="mem_id" style="color:red;"/>
						</div>
					</div>
					<!-- 비밀번호 -->
					<div id="pwGroup1" class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_pw" for="inputpw" class="col-sm-2 control-label" onkeyup="d">비밀번호*</form:label>
						<div class="col-sm-10">
							<form:password style="width:235px;" path="mem_pw" class="form-control" id="inputpw" placeholder="비밀번호" onblur="pwcheck()"/>
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<form:errors path="mem_pw" style="color:red;"/>
						</div>
					</div>
					<div id="pwGroup2" class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" for="inputpw2" class="col-sm-2 control-label">비밀번호확인*</label>
						<div class="col-sm-10">
							<input type="password" style="width:235px;" class="form-control" id="inputpw2" placeholder="비밀번호 확인" onkeyup="pwcheck()"/>
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<p id="pw_not_same"></p>
						</div>
					</div>
					<!-- 이름 -->
					<div id="nameGroup" class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_name" for="inputname" class="col-sm-2 control-label">이름*</form:label>
						<div class="col-sm-10">
							<form:input style="width:235px;" path="mem_name" class="form-control" id="inputname" placeholder="이름" onblur="namecheck()"/>
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<form:errors path="mem_name" style="color:red;"/>
							<p id="name_input"></p>
						</div>
					</div>
					<!-- 주민번호 -->
					<div id="joominGroup" class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_joomin" for="inputjoomin" class="col-sm-2 control-label">주민등록번호*</form:label>
						<div class="col-sm-10" style="display:flex; align-items: center;">
							<form:input style="width:125px; padding-right:12px;" path="mem_joomin" class="form-control" id="inputjoomin" maxlength="6" placeholder="생년월일 6자리" onblur="joomincheck()"/>
							<label style="margin:0 10px"> - </label>
							<form:input style="width:35px; padding-right:12px;" path="mem_gender" class="form-control" id="inputgender" maxlength="1" onblur="gendercheck()"/>
							<label style="margin-left: 5px;">*****</label>
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<form:errors path="mem_joomin" style="color:red;"/>
							<p id="joomin_input"></p>
							<form:errors path="mem_gender" style="color:red;"/>
							<p id="gender_input"></p>
						</div>
					</div>
					<!-- 이메일 -->
					<div id="mailGroup" class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_mail" for="inputmail" class="col-sm-2 control-label">이메일*</form:label>
						<div class="col-sm-10">
							<form:input style="width:235px;" path="mem_mail" class="form-control" id="inputmail" placeholder="이메일 입력" onblur="mailcheck()"/>
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<form:errors path="mem_mail" style="color:red;"/>
							<p id="mail_input"></p>
						</div>
					</div>
					<!-- 연락처 -->
					<div id="phoneGroup" class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_phone" for="inputphone" class="col-sm-2 control-label">연락처*</form:label>
						<div class="col-sm-10">
							<form:input style="width:235px;" path="mem_phone" class="form-control" id="inputphone" maxlength="11" placeholder="- 제외한 숫자만 입력" onblur="phonecheck()"/>
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<form:errors path="mem_phone" style="color:red;"/>
							<p id="phone_input"></p>
						</div>
					</div>
					<!-- 주소 -->
					<div class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_post" for="sample6_postcode" class="col-sm-2 control-label">우편번호*</form:label>
						<div class="col-sm-10" style="display:flex;">
							<form:input style="width:120px;" path="mem_post" class="form-control" id="sample6_postcode" readonly="true"/>
							<input type="button" style="margin-left:10px;" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"/>
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<form:errors path="mem_post" style="color:red;"/>
						</div>
					</div>
					<div id="addr1Group" class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_addr1" for="sample6_address" class="col-sm-2 control-label">주소*</form:label>
						<div class="col-sm-10">
							<form:input style="width:235px;" path="mem_addr1" class="form-control" id="sample6_address" placeholder="주소" onblur="addr1check()"/>
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<p id="addr1_input"></p>
						</div>
					</div>
					<div id="addr2Group" class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_addr2" for="sample6_detailAddress" class="col-sm-2 control-label">상세주소*</form:label>
						<div class="col-sm-10">
							<form:input style="width:235px;" path="mem_addr2" class="form-control" id="sample6_detailAddress" placeholder="상세주소" onblur="addr2check()"/>
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<p id="addr2_input"></p>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-1 col-sm-10">
							<input type="button" style="margin-left:125px;" class="btn btn-default btn-lg" onclick="regBut()" value="회원가입"/>
						</div>
					</div>
			</form:form>
		</div>
	</section>
	<!-- 푸터 -->
	<footer>
		<c:import url="/WEB-INF/views/include/footer.jsp" />
	</footer>
	<script type="text/javascript" src="${root}js/n_page.js"></script>
	<script type="text/javascript" src="${root}js/zip.js"></script>
	<script type="text/javascript">
	</script>
</body>
</html>