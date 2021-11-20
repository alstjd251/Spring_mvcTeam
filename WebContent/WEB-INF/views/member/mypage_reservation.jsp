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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="${root }css/mypageCss.css" />
<link rel="stylesheet" href="${root }css/include/wave.css" />
</head>
<body>
<form:form action="${root }reservation/cancelRes" modelAttribute="resBean">
	<table class="table table-bordered">
		<tr>
			<th>예약번호</th>
			<td><form:input path="res_num" id="res_num" readonly="true"/></td>
		</tr>
		<tr>
			<th>코스</th>
			<td><form:input path="course_names" id="course_names" readonly="true"/></td>
		</tr>
		<tr>
			<th>예약일자</th>
			<td><form:input path="res_startdate" id="res_startdate" readonly="true"/></td>
		</tr>
		<tr>
			<th>결제일자</th>
			<td><form:input path="res_paydate" id="res_paydate" readonly="true"/></td>
		</tr>
		<tr>
			<th>금액</th>
			<td><form:input path="course_price" id="course_price" readonly="true"/></td>
		</tr>
		<tr>
			<th>예약자명</th>
			<td><form:input path="loginName" id="mem_name" readonly="true"/></td>
		</tr>
		<tr>
			<th>예약자 연락처</th>
			<td><form:input path="loginPhone" id="mem_phone" readonly="true"/></td>
		</tr>
		<tr>
			<th>인원</th>
			<td><form:input path="res_personnel" id="res_personnel" readonly="true"/></td>
		</tr>
	</table>
	<form:button class="btn btn-default">예약취소</form:button>
	<input class="btn btn-default" type="button" id="" value="닫기" onclick="self.close();">
</form:form>
</body>
</html>