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
		location.href="${root}admin/admin_mem?nowPage=${memberPaging.nowPage}&cntPerPage="+sel+"&keyword=${memberPaging.keyword}";
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
			<h3>회원정보 관리</h3>
			<select id="cntPerPage" name="sel" onchange="selChange()">
				<option value="5"
					<c:if test="${memberPaging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
				<option value="10"
					<c:if test="${memberPaging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
				<option value="15"
					<c:if test="${memberPaging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
				<option value="20"
					<c:if test="${memberPaging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
			</select>
			<div>
				<div class = "search">
					<input type="text" name="keyword" placeholder="회원이름으로 검색합니다." value="${memberPaging.keyword }">
					<button class="btn btn-default" type="button">검색</button>
				</div>
				<table id="t_set" class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th><div>회원번호</div></th>
							<th><div>회원등급</div></th>
							<th><div>아이디</div></th>
							<th><div>이름</div></th>
							<th><div>주민번호</div></th>
							<th><div>성별</div></th>
							<th><div>연락처</div></th>
							<th><div>이메일</div></th>
							<th><div>가입일</div></th>
							<th><div>주소</div></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var='obj' items="${memberList }">
							<tr>
								<td><a href="#">${obj.mem_num}</a></td>
								<td><div>${obj.mem_grade }</div></td>
								<td><div>${obj.mem_id }</div></td>
								<td><div>${obj.mem_name }</div></td>
								<td><div>${obj.mem_joomin }</div></td>
								<td><div>${obj.mem_gender }</div></td>
								<td><div>${obj.mem_phone }</div></td>
								<td><div>${obj.mem_mail }</div></td>
								<td><div>${obj.mem_date }</div></td>
								<td><div>${obj.mem_post } ${obj.mem_addr1 } ${obj.mem_addr2 }</div></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="text-center">
					<c:if test="${memberPaging.startPage != 1 }">
						<a href="${root }admin/admin_mem?nowPage=${memberPaging.startPage - 1 }&cntPerPage=${memberPaging.cntPerPage}&keyword=${memberPaging.keyword}">&lt;</a>
					</c:if>
					<c:forEach begin="${memberPaging.startPage }" end="${memberPaging.endPage }" var="p">
						<c:choose>
							<c:when test="${p == memberPaging.nowPage }">
								<b>${p }</b>
							</c:when>
							<c:when test="${p != memberPaging.nowPage }">
								<a href="${root }admin/admin_mem?nowPage=${p }&cntPerPage=${memberPaging.cntPerPage}&keyword=${memberPaging.keyword}">${p }</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${memberPaging.endPage != memberPaging.lastPage}">
						<a href="${root }admin/admin_mem?nowPage=${memberPaging.endPage+1 }&cntPerPage=${memberPaging.cntPerPage}&keyword=${memberPaging.keyword}">&gt;</a>
					</c:if>
				</div>
			</div>
		</div>
	</section>
	<form id="moveForm" method="get">
		<input type="hidden" name="keyword" value="${memberPaging.keyword }">
		<input type="hidden" name="nowPage" value="">
		<input type="hidden" name="cntPerPage" value="">
	</form>
	<script>
		let moveForm = $("#moveForm");

		$(".search button").on("click", function(e) {
			e.preventDefault();

			let keyword = $(".search input[name='keyword']").val();
			let nowPage = ${memberPaging.nowPage};
			let cntPerPage = ${memberPaging.cntPerPage};

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