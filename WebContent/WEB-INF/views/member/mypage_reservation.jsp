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
<form:form>
	<table class="table table-bordered">
		<tr>
		<th>예약번호</th>
		<td><input type="text" path="res_num" id="res_num"></td>
		</tr>
		<tr>
			<th>코스</th>
			<td><input type="text" path="c_coursename" id="c_coursename"></td>
		</tr>
		<tr>
			<th>예약일자</th>
			<td><input type="text" path="res_startdate" id="res_startdate"></td>
		</tr>
		<tr>
			<th>결제일자</th>
			<td><input type="text" path="res_paydate" id="res_paydate"></td>
		</tr>
		<tr>
			<th>금액</th>
			<td><input type="text" path="c_price" id="c_price"></td>
		</tr>
		<tr>
			<th>예약자명</th>
			<td><input type="text" path="mem_name" id="mem_name"></td>
		</tr>
		<tr>
			<th>예약자 연락처</th>
			<td><input type="text" path="mem_phone" id="mem_phone"></td>
		</tr>
		<tr>
			<th>인원</th>
			<td><input type="text" path="res_personnel" id="res_personnel"></td>
		</tr>
	</table>
	<input class="btn btn-default" type="button" id="" value="예약취소">
	<input class="btn btn-default" type="button" id="" value="닫기" onclick="self.close();">
</form:form>
</body>
</html>