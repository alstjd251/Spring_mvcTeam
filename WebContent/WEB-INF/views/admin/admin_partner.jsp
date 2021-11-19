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
	<div class = "admin_menu_bar">
		<form action = "${root }main"><input type ="submit" value = "main"/></form>
		<form action = "${root }admin/admin_mem"><input type ="submit" value = "회원정보 관리"/></form>
		<form action = "${root }admin/admin_partner"><input type ="submit" value = "기업정보 관리"/></form>
		<form action = "${root }admin/admin_res"><input type ="submit" value = "예약정보 조회"/></form>
		<form action = "${root }admin/admin_qna"><input type ="submit" value = "회원문의 관리"/></form>
	</div>
	
	<section>
		<div id="con">
			<h3>기업정보 관리</h3>
			<form>
				<div>
					<input type="text" id="keyword" value="">
					<button class="btn btn-default" type="button">검색</button>
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th>회원번호</th>
								<th>사업자번호</th>
								<th>업체명</th>
								<th>대표자</th>
								<th>연락처</th>
								<th>메일</th>
								<th>사업장 주소</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="#" id="mem_num">회원번호</a></td>
								<td><input type="text" id="partners_code"></td>
								<td><input type="text" id="brew_name"></td>
								<td><input type="text" id="partners_name"></td>
								<td><input type="text" id="partners_tel"></td>
								<td><input type="text" id="partners_mail"></td>
								<td><input type="text" id="brew_pcode"></td>
								<td><input type="button" class="btn btn-danger" value="삭제"></td>
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