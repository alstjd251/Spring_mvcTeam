<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sul Sure</title>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>
<body>
<script type="text/javascript">
Swal.fire({
	icon : "success",
	title : "예약 완료",
	text : "예약 현황은 마이페이지에서 확인 가능합니다.",
}).then(function() {
	location.href="${root}main";
});
</script>
	<%-- <h2>예약 완료</h2>

	<form:form modelAttribute="reservationBean">
		<table class="table table-bordered">
			<tr>
				<th>코스</th>
				<td><form:input path="course_names" id="course_names" readonly="true"/></td>
			</tr>
			<tr>
				<th>예약일자</th>
				<td><form:input path="res_startdate" id="res_startdate" readonly="true"/></td>
			</tr>
			<tr>
				<th>금액</th>
				<td><form:input path="course_price" id="course_price" readonly="true"/></td>
			</tr>
			<tr>
				<th>예약자명</th>
				<td><input type="text" id="mem_name" readonly="readonly" value="${loginBean.mem_name }"></td>
			</tr>
			<tr>
				<th>예약자 연락처</th>
				<td><input type="tel" id="mem_phone" readonly="readonly" value="${loginBean.mem_phone }"></td>
			</tr>
			<tr>
				<th>인원</th>
				<td><form:input path="res_personnel" id="res_personnel" readonly="true"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<p>예약 취소는 마이페이지에서 할 수 있습니다.</p>
					<h1><a href="${root}main">홈으로 가기</a></h1>
				</td>
			</tr>
		</table>
	</form:form> --%>
</body>
</html>