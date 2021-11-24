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
	<link rel="stylesheet" href="${root }css/adminCss.css" />
</head>
<body>
	<form:form method="post" action="admin_mem_delete_proc" modelAttribute="memberBean">
		<table class="table table-bordered">
			<tr>
				<th>회원번호</th>
				<td><form:input path="mem_num" id="mem_num" readonly="true" style="border:none;"/></td>
			</tr>
			<tr>
				<th>회원등급</th>
				<td><form:input path="mem_grade" id="mem_grade" readonly="true" style="border:none;"/></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><form:input path="mem_id" id="mem_id" readonly="true" style="border:none;"/></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><form:input path="mem_name" id="mem_name" readonly="true" style="border:none;"/></td>
			</tr>
			<tr>
				<th>주민번호</th>
				<td><form:input path="mem_joomin" id="mem_joomin" readonly="true" style="border:none;"/></td>
			</tr>
			<tr>
				<th>성별</th>
				<td>
					<div>
						<c:if test="${memberBean.mem_gender % 2 != 0}">
							남자
						</c:if>
						<c:if test="${memberBean.mem_gender % 2 == 0}">
							여자
						</c:if>
					</div>
				</td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><form:input path="mem_phone" id="mem_phone" readonly="true" style="border:none;"/></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><form:input path="mem_mail" id="mem_mail" readonly="true" style="border:none;"/></td>
			</tr>
			<tr>
				<th>가입일</th>
				<td><form:input path="mem_date" id="mem_date" readonly="true" style="border:none;"/></td>
			</tr>
			<tr>
				<th>사업장 주소</th>
				<td>
					<form:input path="mem_post" id="mem_post" readonly="true"/><br>
					<form:input path="mem_addr1" id="mem_addr1" readonly="true"/><br>
					<form:input path="mem_addr2" id="mem_addr2" readonly="true"/>
				</td>
			</tr>
		</table>
		<c:if test="${memberBean.mem_grade != 0 }">
			<form:button style="margin-left:45%;">삭제</form:button>
		</c:if>
	</form:form>
</body>
</html>