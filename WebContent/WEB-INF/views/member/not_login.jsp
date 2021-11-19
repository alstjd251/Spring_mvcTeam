<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<meta charset="UTF-8">
<title>Sul Sure</title>
</head>
<body>
<script type="text/javascript">
Swal.fire({
	icon : "warning",
	title : "접근 오류",
    text  : "로그인이 필요한 서비스 입니다.",
}).then(function(){
	location.href="${root}member/login";
});
</script>
</body>
</html>