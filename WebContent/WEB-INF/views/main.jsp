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
	<form:form action="member_proc" method="post" modelAttribute="memberBean">
			<table>
			<tr>
			<td><form:label path="mem_id">아이디 : </form:label></td>
			<td><form:input path="mem_id" /></td>
			</tr>
			
			<tr>
			<td><form:label path="mem_pw">비밀번호 : </form:label></td>
			<td><form:password path="mem_pw" /></td>
			</tr>
			
			<tr>
			<td><form:label path="mem_name">이름 : </form:label></td>
			<td><form:input path="mem_name" /></td>
			</tr>
			

			<tr>
			<td><form:label path="mem_joomin">주민등록번호 : </form:label></td>
			<td><form:input path="mem_joomin" />
			<form:input path="mem_gender" /></td>
			</tr>
			


			<tr>
			<td><form:label path="mem_phone">연락처 : </form:label></td>
			<td><form:input path="mem_phone" /></td>
			</tr>
			

			<tr>
			<td><form:label path="mem_mail">메일 : </form:label></td>
			<td><form:input type="email" path="mem_mail" /></td>
			</tr>
			
			<tr>
			<td><form:label path="mem_post">우편번호 : </form:label></td>
			<td><form:input path="mem_post" /></td>
			</tr>
			<tr>
			<td><form:label path="mem_addr1">주소1 : </form:label>
			<form:input path="mem_addr1" /></td>
			<td><form:label path="mem_addr2">주소2 : </form:label>
			<form:input path="mem_addr2" /></td>
			</tr>
			
			<tr>
			<td colspan="2"><form:button>회원가입</form:button></td>
			</tr>
			</table>	
	</form:form>
	<br>
	<img src="img/라면.jpg">
</body>
</html>