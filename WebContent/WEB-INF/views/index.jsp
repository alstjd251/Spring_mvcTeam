<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
<script type="text/javascript">
Swal.fire({
	title : "PROJECT NAME 'SUL SURE'",
    text  : "by soldesk 2팀",
    closeOnClickOutside : false,
}).then(function(){
	location.href="${root}main";
});
</script>
</body>
</html>