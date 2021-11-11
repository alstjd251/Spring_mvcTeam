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
var id = '${memberBean.mem_id}';
if(id == ""){
	Swal.fire({
		title : "아이디 찾기 결과",
	    text  : "가입된 회원정보가 없습니다.",
	    closeOnClickOutside : false
	}).then(function(){
		location.href="${root}main";
	});
}else{
Swal.fire({
	title : "아이디 찾기 결과",
    text  : "회원님의 아이디는 '${memberBean.mem_id}' 입니다.",
    closeOnClickOutside : false
}).then(function(){
	location.href="${root}main";
});
}
</script>
</body>
</html>