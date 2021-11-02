<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="member_proc" method="post" modelAttribute="s_member">
			id :
			<form:input type="text" path="mem_id" />
			<br>


			pw :
			<form:input type="password" path="mem_pw" />
			<br>


			name :
			<form:input type="text" path="mem_name" />
			<br>


			주민등록번호 :

			<form:input type="text" path="mem_joomin" />
			<form:input type="text" path="mem_gender" />
			<br>



			phone :
			<form:input type="tel" path="mem_phone" />
			<br>


			email :
			<form:input type="email" path="mem_mail" />
			<br>

			우편번호 :
			<form:input type="text" path="mem_post" />

			<form:input type="text" path="mem_addr1" />
			<form:input type="text" path="mem_addr2" />
			<br>
			<form:button>회원가입</form:button>
	</form:form>
</body>
</html>