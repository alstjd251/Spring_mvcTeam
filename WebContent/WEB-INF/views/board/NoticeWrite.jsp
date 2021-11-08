<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="notice_proc" method="post" modelAttribute="noticeBean">
		<table>
			<thead>
			<caption>글 쓰기</caption>
			</thead>
			<tbody>
				<tr>
					<th>제목 :</th>
					<td><form:input type="text" placeholder="제목을 입력해 주세요." path="n_noticetitle"/></td>
				</tr>
				<tr>
					<th>내용 :</th>
					<td><textarea cols="80" rows="30" placeholder="내용을 입력하세요."></textarea></td>
				</tr>
			</tbody>
		</table>
		<input type="submit" value="저장하기">
	</form:form>
</body>
</html>