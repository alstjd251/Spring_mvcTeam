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
	<form:form method="post" action="admin_mem_delete_proc" modelAttribute="memberBean">
		<table class="table table-bordered">
			<tr>
				<th>회원번호</th>
				<td><form:input path="mem_num" id="mem_num" readonly="true"/></td>
			</tr>
			<tr>
				<th>회원등급</th>
				<td><form:input path="mem_grade" id="mem_grade" readonly="true"/></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><form:input path="mem_id" id="mem_id" readonly="true"/></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><form:input path="mem_name" id="mem_name" readonly="true"/></td>
			</tr>
			<tr>
				<th>주민번호</th>
				<td><form:input path="mem_joomin" id="mem_joomin" readonly="true"/></td>
			</tr>
			<tr>
				<th>성별</th>
				<td>
					<div>
						<c:if test="${obj.mem_gender % 2 != 0}">
							남자
						</c:if>
						<c:if test="${obj.mem_gender % 2 == 0}">
							여자
						</c:if>
					</div>
				</td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><form:input path="mem_phone" id="mem_phone" readonly="true"/></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><form:input path="mem_mail" id="mem_mail" readonly="true"/></td>
			</tr>
			<tr>
				<th>가입일</th>
				<td><form:input path="mem_date" id="mem_date" readonly="true"/></td>
			</tr>
			<tr>
				<th>사업장 주소</th>
				<td>
					<form:input path="mem_post" id="mem_post" readonly="true"/>
					<form:input path="mem_addr1" id="mem_addr1" readonly="true"/>
					<form:input path="mem_addr2" id="mem_addr2" readonly="true"/>
				</td>
			</tr>
		</table>
		<form:button>삭제</form:button>
	</form:form>
</body>
</html>