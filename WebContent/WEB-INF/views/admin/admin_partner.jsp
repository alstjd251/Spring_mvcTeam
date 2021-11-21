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
		location.href="${root}admin/admin_partner?nowPage=${partnerPaging.nowPage}&cntPerPage="+sel+"&keyword=${partnerPaging.keyword}";
	}
</script>
<body>
	<div class = "admin_menu_bar">
		<form action = "${root }main"><input type ="submit" value = "main"/></form>
		<form action = "${root }admin/admin_mem"><input type ="submit" value = "회원정보 관리"/></form>
		<form action = "${root }admin/admin_partner"><input type ="submit" value = "기업정보 관리"/></form>
		<form action = "${root }admin/admin_partnerRequest"><input type ="submit" value = "기업신청 수락"/></form>
		<form action = "${root }admin/admin_res"><input type ="submit" value = "예약정보 조회"/></form>
		<form action = "${root }admin/admin_qna"><input type ="submit" value = "회원문의 관리"/></form>
	</div>
	
	<section>
		<div id="con">
			<h3>기업정보 관리</h3>
			<select id="cntPerPage" name="sel" onchange="selChange()">
				<option value="5"
					<c:if test="${partnerPaging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
				<option value="10"
					<c:if test="${partnerPaging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
				<option value="15"
					<c:if test="${partnerPaging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
				<option value="20"
					<c:if test="${partnerPaging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
			</select>
			<div>
				<div class = "search">
					<input type="text" name="keyword" placeholder="업체명으로 검색합니다." value="${partnerPaging.keyword }">
					<button class="btn btn-default" type="button">검색</button>
				</div>
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>사업자번호</th>
							<th>업체명</th>
							<th>대표자</th>
							<th>연락처</th>
							<th>메일</th>
							<th>사업장 명</th>
							<th>사업장 주소</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var='obj' items="${partnerList }">
							<c:if test="${obj.partners_state == 1 }">
								<tr>
									<td><a onclick="window.open('${root}admin/admin_partner_delete?partners_code=${obj.partners_code }','협력업체 정보 삭제','scrollbars=yes width=500 height=500 left=100 top=50')">${obj.partners_code }</a></td>
									<td>${obj.partners_brewery_name }</td>
									<td>${obj.partners_name }</td>
									<td>${obj.partners_tel }</td>
									<td>${obj.partners_mail }</td>
									<td>${obj.partners_brewery_name }</td>
									<td>${obj.partners_brewery_post } ${obj.partners_brewery_addr1 } ${obj.partners_brewery_addr2 }</td>
							</tr>
							</c:if>
						</c:forEach>
					</tbody>
				</table>
				<div class="text-center">
					<c:if test="${partnerPaging.startPage != 1 }">
						<a href="${root }admin/admin_partner?nowPage=${partnerPaging.startPage - 1 }&cntPerPage=${partnerPaging.cntPerPage}&keyword=${partnerPaging.keyword}">&lt;</a>
					</c:if>
					<c:forEach begin="${partnerPaging.startPage }" end="${partnerPaging.endPage }" var="p">
						<c:choose>
							<c:when test="${p == partnerPaging.nowPage }">
								<b>${p }</b>
							</c:when>
							<c:when test="${p != partnerPaging.nowPage }">
								<a href="${root }admin/admin_partner?nowPage=${p }&cntPerPage=${partnerPaging.cntPerPage}&keyword=${partnerPaging.keyword}">${p }</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${partnerPaging.endPage != partnerPaging.lastPage}">
						<a href="${root }admin/admin_partner?nowPage=${partnerPaging.endPage+1 }&cntPerPage=${partnerPaging.cntPerPage}&keyword=${partnerPaging.keyword}">&gt;</a>
					</c:if>
				</div>
			</div>
		</div>
	</section>
	<form id="moveForm" method="get">
		<input type="hidden" name="keyword" value="${partnerPaging.keyword }">
		<input type="hidden" name="nowPage" value="">
		<input type="hidden" name="cntPerPage" value="">
	</form>
	<script>
		let moveForm = $("#moveForm");

		$(".search button").on("click", function(e) {
			e.preventDefault();

			let keyword = $(".search input[name='keyword']").val();
			let nowPage = ${partnerPaging.nowPage};
			let cntPerPage = ${partnerPaging.cntPerPage};

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