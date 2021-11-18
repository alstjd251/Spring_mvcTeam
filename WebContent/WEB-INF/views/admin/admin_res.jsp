<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Sul Sure</title>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="${root }css/adminCss.css" />
</head>
<body>
	<ol class="breadcrumb">
		<li><a href="${root }main">main</a></li>
		<li><a href="${root }admin/admin_mem">회원정보 관리</a></li>
		<li><a href="${root }admin/admin_partner">기업정보 관리</a></li>
		<li><a href="${root }admin/admin_res">예약정보 조회</a></li>
		<li><a href="${root }admin/admin_qna">회원문의 관리</a></li>
	</ol>

	<section>
		<div id="con">
			<h3>예약정보 조회</h3>
			<form>
				<div>
					<input type="text" id="keyword" value="">
					<button class="btn btn-default" type="button">검색</button>
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th>예약번호</th>
								<th>예약일자</th>
								<th>예약코스</th>
								<th>결제일자</th>
								<th>회원번호</th>
								<th>예약자명</th>
								<th>연락처</th>
								<th>인원</th>
								<th>가격</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="#" id="res_num">예약번호</a></td>
								<td><input type="text" id="res_startdate"></td>
								<td><input type="text" id="res_coursenum"></td>
								<td><input type="text" id="res_paydate"></td>
								<td><input type="text" id="res_mnum"></td>
								<td><input type="text" id="mem_name"></td>
								<td><input type="text" id="mem_phone"></td>
								<td><input type="text" id="res_personnel"></td>
								<td><input type="text" id="c_price"></td>
								<td><input type="button" class="btn btn-danger" value="취소"></td>
							</tr>
						</tbody>
					</table>
					<div class="text-center">
						<ul class="pagination">
							<!--하단에 숫자버튼 (다음페이지, 이전페이지)-->
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
						</ul>
					</div>
				</div>
			</form>
		</div>
		</div>
	</section>

</body>
</html>