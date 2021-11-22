<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sul Sure</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
function sendMail(){
	var answer_mail = $("#answer_mail").val();
	var mem_mail = $("#mem_mail").val();
	var q_qnanum = $("#q_qnanum").val();
	
	var param = {'answer': answer_mail, 'mem_mail': mem_mail, 'q_num' : q_qnanum}
	
	$.ajax({
		url : '${root}admin/sendmail.do',
		type : 'POST',
		data : param,
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		dataType : 'text',
		success : function(result){
			if(result == "success"){
				Swal.fire({
					icon : "success",
					title : "메일 발송 완료.",
				    text  : "답변 메일을 성공적으로 보냈습니다.",
				}).then(function(){
					$("#answer_proc").submit();
				})
			}
		}
	})
}
</script>
</head>
<body>
	<form:form id="answer_proc" method="post" action="admin_qna_answer_proc" modelAttribute="qnaBean">
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
				<td><form:textarea path="q_qnacontent" id="q_qnacontent" readonly="true" rows = "10" cols = "50" style = "resize: none;"></form:textarea></td>
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
		<input type="button" id="qnaSend" onclick="sendMail()" value="답변 완료"/>
	</form:form>
</body>
</html>