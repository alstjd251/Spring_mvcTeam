<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<form:form action="login_proc" modelAttribute="tempLoginMemberBean">
	ID : <form:input path="mem_id"/><br>
	PW : <form:password path="mem_pw"/>
	<form:button>로그인</form:button>
</form:form>
</body>
</html>