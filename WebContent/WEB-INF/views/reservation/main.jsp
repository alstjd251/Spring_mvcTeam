<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form action="reserve" modelAttribute="reservationBean">
	<table>
		<tr>
		<td>예약일 : </td>
		<td><form:input type="date" path="res_startdate"/></td>
		</tr>
		
		<tr>
		<td>인원수 : </td>
		<td><form:input type="number" max="10" min="1" path="res_personnel"/></td>
		</tr>
		
		<tr>
		<td>
		<form:select path="res_coursenum">
			<c:forEach var="obj" items="${getCourseIdx }">
				<form:option value="${obj.course_num }" >${obj.course_names }</form:option>
			</c:forEach>
		</form:select>
		</tr>
		
		<tr>
		<td colspan="2"><form:button>예약완료</form:button></td>
		</tr>
	</table>
</form:form>
</body>
</html>