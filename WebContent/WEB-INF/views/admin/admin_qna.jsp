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
		location.href="${root}admin/admin_qna?nowPage=${qnaPaging.nowPage}&cntPerPage="+sel+"&keyword=${qnaPaging.keyword}";
	}
</script>
<body>
	<div class = "admin_menu_bar">
		<form action = "${root }main"><input type ="submit" value = "main"/></form>
		<form action = "${root }admin/admin_mem"><input type ="submit" value = "회원정보 관리"/></form>
		<form action = "${root }admin/admin_partner"><input type ="submit" value = "기업정보 관리"/></form>
		<form action = "${root }admin/admin_partnerRequest"><input type ="submit" value = "기업신청 현황"/></form>
		<form action = "${root }admin/admin_res"><input type ="submit" value = "예약정보 조회"/></form>
		<form action = "${root }admin/admin_qna"><input type ="submit" value = "회원문의 관리"/></form>
	</div>
	
	<section>
		<div id="con">
			<h3><b>회원문의 관리</b></h3>
			<select id="cntPerPage" name="sel" onchange="selChange()">
				<option value="5"
					<c:if test="${qnaPaging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
				<option value="10"
					<c:if test="${qnaPaging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
				<option value="15"
					<c:if test="${qnaPaging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
				<option value="20"
					<c:if test="${qnaPaging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
			</select>
			<div class = "search">
					<input type="text" name="keyword" placeholder="질문 제목으로 검색합니다." value="${qnaPaging.keyword }">
					<button class="btn btn-default" type="button">검색</button>
				</div>
			<div>
				<table id="t_set3" class="table">
					<thead>
						<tr>
							<th></th>
							<th>문의번호</th>
							<th>회원번호</th>
							<th>제목</th>
							<th>이름</th>
							<th>메일</th>
							<th>작성일자</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var='obj' items="${qnaList }">
							<tr onclick="window.open('${root}admin/admin_qna_answer?q_qnanum=${obj.q_qnanum }&q_mnum=${obj.q_mnum }','예약 내역 삭제','scrollbars=yes width=500 height=500 left=100 top=50')">
								<td>${qnaTotal - obj.RN + 1}</td>
								<td>${obj.q_qnanum }</td>
								<td>${obj.q_mnum }</td>
								<td>${obj.q_qnatitle }</td>
								<td>${obj.mem_name }</td>
								<td>${obj.mem_mail }</td>
								<td>${obj.q_qnadate }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="text-center">
					<c:if test="${qnaPaging.startPage != 1 }">
						<a href="${root }admin/admin_qna?nowPage=${qnaPaging.startPage - 1 }&cntPerPage=${qnaPaging.cntPerPage}&keyword=${qnaPaging.keyword}">&lt;</a>
					</c:if>
					<c:forEach begin="${qnaPaging.startPage }" end="${qnaPaging.endPage }" var="p">
						<c:choose>
							<c:when test="${p == qnaPaging.nowPage }">
								<b>${p }</b>
							</c:when>
							<c:when test="${p != qnaPaging.nowPage }">
								<a href="${root }admin/admin_qna?nowPage=${p }&cntPerPage=${qnaPaging.cntPerPage}&keyword=${qnaPaging.keyword}">${p }</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${qnaPaging.endPage != qnaPaging.lastPage}">
						<a href="${root }admin/admin_qna?nowPage=${qnaPaging.endPage+1 }&cntPerPage=${qnaPaging.cntPerPage}&keyword=${qnaPaging.keyword}">&gt;</a>
					</c:if>
				</div>
			</div>
		</div>
	</section>
	<form id="moveForm" method="get">
		<input type="hidden" name="keyword" value="${qnaPaging.keyword }">
		<input type="hidden" name="nowPage" value="">
		<input type="hidden" name="cntPerPage" value="">
	</form>
	<script>
		let moveForm = $("#moveForm");

		$(".search button").on("click", function(e) {
			e.preventDefault();

			let keyword = $(".search input[name='keyword']").val();
			let nowPage = ${qnaPaging.nowPage};
			let cntPerPage = ${qnaPaging.cntPerPage};

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