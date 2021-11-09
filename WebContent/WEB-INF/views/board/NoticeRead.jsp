<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value='${pageContext.request.contextPath }/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>우리반 화이팅</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
	<form:form action="notice_proc" method="post"
		modelAttribute="noticeBean">
		<table>
			<tr>
				<td><form:label path="n_noticetitle">글제목 : </form:label></td>
				<td><form:input path="n_noticetitle" /></td>
			</tr>

			<tr>
				<td><form:label path="n_noticecontent">글내용 : </form:label></td>
				<td><form:input path="n_noticecontent" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
