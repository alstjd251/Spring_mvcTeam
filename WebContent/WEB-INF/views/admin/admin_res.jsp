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
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="${root}board/admin_mem?nowPage=${resPaging.nowPage}&cntPerPage="+sel+"&keyword=${resPaging.keyword}";
	}
</script>
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
			<h3>예약정보 관리</h3>
			<select id="cntPerPage" name="sel" onchange="selChange()">
				<option value="5"
					<c:if test="${resPaging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
				<option value="10"
					<c:if test="${resPaging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
				<option value="15"
					<c:if test="${resPaging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
				<option value="20"
					<c:if test="${resPaging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
			</select>
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
						</tr>
					</thead>
					<tbody>
						<c:forEach var='obj' items="${resList }">
							<tr>
								<td><a href="#">${obj.res_num }</a></td>
								<td>${obj.res_startdate }</td>
								<td>${obj.res_coursenum }</td>
								<td>${obj.res_paydate }</td>
								<td>${obj.res_mnum }</td>
								<td>mem_name</td>
								<td>mem_phone</td>
								<td>${obj.res_personnel }</td>
								<td>c_price</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="text-center">
					<c:if test="${resPaging.startPage != 1 }">
						<a href="${root }board/admin_res?nowPage=${resPaging.startPage - 1 }&cntPerPage=${resPaging.cntPerPage}&keyword=${resPaging.keyword}">&lt;</a>
					</c:if>
					<c:forEach begin="${resPaging.startPage }" end="${resPaging.endPage }" var="p">
						<c:choose>
							<c:when test="${p == resPaging.nowPage }">
								<b>${p }</b>
							</c:when>
							<c:when test="${p != resPaging.nowPage }">
								<a href="${root }board/admin_res?nowPage=${p }&cntPerPage=${resPaging.cntPerPage}&keyword=${resPaging.keyword}">${p }</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${resPaging.endPage != resPaging.lastPage}">
						<a href="${root }board/admin_res?nowPage=${resPaging.endPage+1 }&cntPerPage=${resPaging.cntPerPage}&keyword=${resPaging.keyword}">&gt;</a>
					</c:if>
				</div>
			</div>
		</div>
	</section>
	<form id="moveForm" method="get">
		<input type="hidden" name="keyword" value="${resPaging.keyword }">
		<input type="hidden" name="nowPage" value="">
		<input type="hidden" name="cntPerPage" value="">
	</form>
	<script>
		let moveForm = $("#moveForm");

		$(".search button").on("click", function(e) {
			e.preventDefault();

			let keyword = $(".search input[name='keyword']").val();
			let nowPage = ${resPaging.nowPage};
			let cntPerPage = ${resPaging.cntPerPage};

			if (!keyword) {
				alert("키워드를 입력하세요.");
				return false;
			}

			moveForm.find("input[name='keyword']").val(keyword);
			moveForm.find("input[name='nowPage']").val(nowPage);
			moveForm.find("input[name='cntPerPage']").val(cntPerPage);
			moveForm.submit();
		});
	</script>
</body>
</html>