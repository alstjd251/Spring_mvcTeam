<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<html>
<head>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<meta charset="UTF-8">
<title>Sul Sure</title>
</head>
<body>
<script>
Swal.fire({
	icon : "success",
	title : "로그아웃",
    text  : "성공적으로 로그아웃 되었습니다.",
}).then(function(){
	location.href="${root}main";
});
</script>
</body>
</html>
