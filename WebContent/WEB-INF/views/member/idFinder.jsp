<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<head>
<title>idFinder</title>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
<script type="text/javascript">
Swal.fire({
	title : "아이디 찾기 결과",
    text  : "${memberBean.mem_id}",
    closeOnClickOutside : false
}).then(function(){
	location.href="${root}main";
});

//Swal.fire("${memberBean.mem_id}");

</script>
</body>
</html>