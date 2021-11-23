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
	<form:form method="post" action="admin_reservation_delete_proc" modelAttribute="reservationBean">
		<table class="table table-bordered">
			<tr>
				<th>예약번호</th>
				<td><form:input path="res_num" id="res_num" readonly="true"/></td>
			</tr>
			<tr>
				<th>예약일자</th>
				<td><form:input path="res_startdate" id="res_startdate" readonly="true"/></td>
			</tr>
			<tr>
				<th>예약코스</th>
				<td><form:input path="res_coursenum" id="res_coursenum" readonly="true"/></td>
			</tr>
			<tr>
				<th>결제일자</th>
				<td><form:input path="res_paydate" id="res_paydate" readonly="true"/></td>
			</tr>
			<tr>
				<th>회원번호</th>
				<td><form:input path="res_mnum" id="res_mnum" readonly="true"/></td>
			</tr>
			<tr>
				<th>예약자명</th>
				<td><form:input path="loginName" id="mem_name" readonly="true"/></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><form:input path="loginPhone" id="mem_phone" readonly="true"/></td>
			</tr>
			<tr>
				<th>인원</th>
				<td><form:input path="res_personnel" id="res_personnel" readonly="true"/></td>
			</tr>
			<tr>
				<th>가격</th>
				<td><form:input path="course_price" id="res_price" readonly="true"/></td>
			</tr>
		</table>
		<form:button style="margin-left:45%;">삭제</form:button>
	</form:form>
</body>
</html>