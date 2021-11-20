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
<table class="table table-bordered">
		<tr>
			<th>사업자번호</th>
			<td><input type="text" path="partners_code" id="partners_code"></td>
		</tr>
		<tr>
			<th>업체명</th>
			<td><input type="text" path="brew_name" id="brew_name"></td>
		</tr>
		<tr>
			<th>대표자</th>
			<td><input type="text" path="partners_name" id="partners_name"></td>
		</tr>
		<tr>
			<th>연락처</th>
			<td><input type="text" path="partners_tel" id="partners_tel"></td>
		</tr>
		<tr>
			<th>메일</th>
			<td><input type="text" path="partners_mail" id="partners_mail"></td>
		</tr>
		<tr>
			<th>사업장 주소</th>
			<td><input type="text" path="brew_pcode" id="brew_pcode"></td>
		</tr>
	</table>
</body>
</html>