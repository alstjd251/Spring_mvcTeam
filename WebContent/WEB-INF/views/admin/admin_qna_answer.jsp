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
</head>
<body>
	<form:form method="post" action="admin_qna_answer_proc" modelAttribute="qnaBean">
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
				<td></td>
			</tr>
		</table>
		<form:button>답변 완료</form:button>
	</form:form>
</body>
</html>