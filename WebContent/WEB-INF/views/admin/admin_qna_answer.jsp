<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sul Sure</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script>
function sendMail(){
	var answer_mail = $("#answer").val();
	var mem_mail = $("#mail").val();
	
	var param = {'answer': answer_mail, 'mem_mail': mem_mail, 'q_num' : q_qnanum}
	$.ajax({
		url : '${root}admin/sendmail.do',
		type : 'POST',
		data : param,
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		dataType : 'text',
		success : function(result){
			var id = result;
			if(id == "success"){
				Swal.fire({
					icon : "success",
					title : "메일 전송 완료",
				    text  : "고객님의 메일로 비밀번호를 전송하였습니다.",
				});
			}
		}
	})
}
</script>
</head>
<body>
	<form:form method="post" action="#" modelAttribute="qnaBean">
		<table class="table table-bordered">
			<tr>
				<th>문의번호</th>
				<td><form:input path="q_qnanum" id="q_qnanum" readonly="true"/></td>
			</tr>
			<tr>
				<th>회원번호</th>
				<td><form:input path="q_mnum" id="q_mnum" readonly="true"/></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><form:input path="q_qnatitle" id="q_qnatitle" readonly="true"/></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><form:input path="q_qnacontent" id="q_qnacontent" readonly="true"/></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><form:input path="mem_name" id="mem_name" readonly="true"/></td>
			</tr>
			<tr>
				<th>메일</th>
				<td><form:input path="mem_mail" id="mem_mail" readonly="true"/></td>
			</tr>
			<tr>
				<th>작성일자</th>
				<td><form:input path="q_qnadate" id="q_qnadate" readonly="true"/></td>
			</tr>
			<tr>
				<th>답변내용</th>
				<td><textarea id = "answer_mail" rows = "10" cols = "50" style = "resize: none;"></textarea></td>
			</tr>
		</table>
		<form:button>답변 완료</form:button>
	</form:form>
</body>
</html>