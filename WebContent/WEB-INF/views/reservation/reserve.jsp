<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<h2>예약 완료</h2>

	<form>
		<table class="table table-bordered">
			<tr>
				<th>코스</th>
				<td><input type="text" id="res_coursenum"></td>
			</tr>
			<tr>
				<th>예약일자</th>
				<td><input type="text" id="res_startdate"></td>
			</tr>
			<tr>
				<th>금액</th>
				<td><input type="text" id="c_price"></td>
			</tr>
			<tr>
				<th>예약자명</th>
				<td><input type="text" id="mem_name" readonly="readonly"
					value="${loginBean.mem_name }"></td>
			</tr>
			<tr>
				<th>예약자 연락처</th>
				<td><input type="tel" id="mem_phone" readonly="readonly"
					value="${loginBean.mem_phone }"></td>
			</tr>
			<tr>
				<th>인원</th>
				<td><input type="text" id="res_personnel"></td>
			</tr>
			<tr>
				<td colspan="2"><input class="btn btn-default" type="button"
					id="" value="예약취소">
					<h1>
						<a href="${root}main">홈으로 가기</a>
					</h1></td>
			</tr>
		</table>
	</form>
</body>
</html>