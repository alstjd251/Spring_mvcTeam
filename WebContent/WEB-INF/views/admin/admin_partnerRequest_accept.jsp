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
	<form:form method="post" action="admin_partnerRequest_accept_proc" modelAttribute="partnerBean">
		<table class="table table-bordered">
			<tr>
				<th>사업자번호</th>
				<td><form:input path="partners_code" id="partners_code" readonly="true"/></td>
			</tr>
			<tr>
				<th>업체명</th>
				<td><form:input path="partners_brewery_name" id="partners_brewery_name" readonly="true"/></td>
			</tr>
			<tr>
				<th>대표자</th>
				<td><form:input path="partners_name" id="partners_name" readonly="true"/></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><form:input path="partners_tel" id="partners_tel" readonly="true"/></td>
			</tr>
			<tr>
				<th>메일</th>
				<td><form:input path="partners_mail" id="partners_mail" readonly="true"/></td>
			</tr>
			<tr>
				<th>사업장 명</th>
				<td><form:input path="partners_brewery_name" id="partners_brewery_name" readonly="true"/></td>
			</tr>
			<tr>
				<th>사업장 주소</th>
				<td>
					<form:input path="partners_brewery_post" id="partners_brewery_post" readonly="true"/>
					<form:input path="partners_brewery_addr1" id="partners_brewery_addr1" readonly="true"/>
					<form:input path="partners_brewery_addr2" id="partners_brewery_addr2" readonly="true"/>
				</td>
			</tr>
			<tr>
				<th>신청 상태</th>
				<td>
					<c:if test="${partnerBean.partners_state == 0}">
						수락 대기중
					</c:if>
				</td>
			</tr>
		</table>
		<form:button>수락</form:button>
	</form:form>
</body>
</html>