<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Sul Sure</title>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body style="margin-top:10px;">
<form:form action="${root }member/pwModify" modelAttribute="memberBean" id="pwModifyForm">
	<form:hidden path="mem_num" value="${mem_num }" id="mem_num"/>
	<div class="form-group">
   		<label for="inputPassword1" class="col-sm-2 control-label">현재 비밀번호</label>
		<div class="col-sm-10">
			<input type="password" class="form-control" id="inputPassword1" placeholder="현재 비밀번호" onkeyup="pwCheck()">
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-10">
			<p id="pw1error"></p>
		</div>
	</div>
	
	<div class="form-group">
	   	<label for="inputPassword2" class="col-sm-2 control-label">새 비밀번호</label>
	   	<div class="col-sm-10">
	    	<form:password path="mem_pw" class="form-control" id="inputPassword2" placeholder="새 비밀번호" onkeyup="pwCheck()"/>
	   	</div>
	 </div>
	 
	 <div class="form-group">
		<div class="col-sm-10">
			<p id="pw2error"></p>
		</div>
	</div>
	
	 <div class="form-group">
	   	<label for="inputPassword3" class="col-sm-2 control-label">새 비밀번호 확인</label>
	   	<div class="col-sm-10">
	    	<input type="password" class="form-control" id="inputPassword3" placeholder="새 비밀번호 확인" onkeyup="pwCheck()">
	   	</div>
	 </div>
	 
	 <div class="form-group">
		<div class="col-sm-10">
			<p id="pw3error"></p>
		</div>
	</div>
	
	 <div class="form-group">
		 <div class="col-sm-offset-2 col-sm-10" style="align-content:center; display:flex; flex-direction:column;">
		 	<button type="button" class="btn btn-default" style="background-color: cornflowerblue;" onclick="pwChange()">변경하기</button><br>
		 	<button type="button" class="btn btn-default" onclick="self.close()">취소</button>
		 </div>
	 </div>
</form:form>
<script type="text/javascript">
	var fail = "true";
	function pwChange(){
		var pw1 = $("#inputPassword1").val();
		var pw2 = $("#inputPassword2").val();
		var pw3 = $("#inputPassword3").val();
		var mem_num = $("#mem_num").val();
		
		if(fail == "false"){
			var param1 = {'mem_pw': pw1, 'mem_num': mem_num}
			$.ajax({
				url : '${root}member/pwcheck.do',
				type : 'POST',
				data : param1,
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				dataType : 'text',
				success : function(result){
					if(result == "true"){
						$("#pwModifyForm").submit();
					}else{
						Swal.fire({
							icon : "warning",
							title : "비밀번호가 옳바르지 않습니다.",
						    text  : "다시 시도해주세요.",
						}).then(function(){
							$('#inputPassword1').val('')
							$("#pw1error").text("비밀번호가 일치하지 않습니다.").css("color","red");
						});
					}
				}
			})
		}else{
			$("#inputPassword1, #inputPassword2, #inputPassword3").val("");
			$("#pw1error, #pw2error, #pw3error").text("다시 입력해주세요.").css("color","red");
		}
	}
	
	function pwCheck(){
		var pw1 = $("#inputPassword1").val();
		var pw2 = $("#inputPassword2").val();
		var pw3 = $("#inputPassword3").val();
		
		if(pw2 == pw3){
			$("#pw2error").text("");
			$("#pw3error").text("비밀번호가 일치 합니다.").css("color","green");
			fail = "false";
		}else{
			$("#pw2error").text("");
			$("#pw3error").text("비밀번호가 일치하지 않습니다.").css("color","red");
			fail = "true";
		}
		
		if(pw1 == ""){
			$("#pw1error").text("비밀번호를 입력 해주세요.").css("color","red");
			fail = "true";
		}else{
			$("#pw1error").text("");
		}
		
		if(pw2 == ""){
			$("#pw2error").text("비밀번호를 입력 해주세요.").css("color","red");
			fail = "true";
		}else if(pw2.length < 8){
			$("#pw2error").text("비밀번호는 최소 8자리로 입력해야 합니다.").css("color","red");
			fail = "true";
		}else{
			$("#pw2error").text("");
		}
		
		if(pw3 == ""){
			$("#pw3error").text("비밀번호를 입력 해주세요.").css("color","red");
			fail = "true";
		}else if(pw3.length < 8){
			$("#pw3error").text("비밀번호는 최소 8자리로 입력해야 합니다.").css("color","red");
			fail = "true";
		}
	}
	
</script>
</body>
</html>