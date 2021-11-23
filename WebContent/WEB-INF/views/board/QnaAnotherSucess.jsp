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
<title>Sul sure</title>
</head>
<body>
<script type="text/javascript">
	Swal.fire({
		icon : "success",
		title: "성공적으로 완료되었습니다.",
		text: "빠른 시일 내에 고객님의 메일로 문의해주신 사항에 대한 답변을 드리도록 하겠습니다.",
	}).then(function() {
		location.href="${root}board/Qna";
	})
</script>
</body>
</html>