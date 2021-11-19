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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="${root }css/mypageCss.css" />
<link rel="stylesheet" href="${root }css/include/wave.css" />
<script src="${root }js/zip.js"></script>
<script src="${root }js/mypage.js"></script>
<script src="${root }js/n_page.js"></script>
<link href="${root }css/include/n_header_footer.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<!-- 헤더 -->
	<header>
		<!-- 헤더 메뉴 -->
		<div class="menu">
			<div class="menu1">

				<c:import url="/WEB-INF/views/include/header.jsp" />

			</div>
		</div>
	</header>
	<section>
		<div id="mypage">
			<div id="mypage_con1">
				<div id="name_text">
					<h4>${loginBean.mem_name }님의MyPage</h4>
				</div>
				<ul class="tabs">
					<li class="tab_link current" data-tab="modify">회원정보 수정</li>
					<li class="tab_link" data-tab="res_info">예약정보 조회</li>
					<li class="tab_link" data-tab="partners">기업회원 신청</li>
					<li class="tab_link" data-tab="delete">탈퇴</li>
				</ul>
			</div>
			<div id="mypage_con2">
				<div id="modify" class="tab_content current">
					<!--유효성검사 해야함-->
					<h3>회원정보 수정</h3>
					<form:form method="post" modelAttribute="memberBean">
						<table class="table table-bordered">
							<tr>
								<th>아이디</th>
								<td><form:input path="mem_id" id="mem_id" readonly="true"/></td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td><form:password path="mem_pw" id="mem_pw" value=""/> <input
									type="button" class="btn btn-danger" id="pw_bt"
									value="비밀번호 변경하기" onclick="setDisable()"></td>
							</tr>
							<tr>
								<th>비밀번호 확인</th>
								<td><input type="text" id="mem_pw2" disabled></td>
							</tr>
							<tr>
								<th>이름</th>
								<td><form:input path="mem_name" id="mem_name" readonly="true"/></td>
							</tr>
							<tr>
								<td>주민번호</td>
								<td><form:input maxlength="6" placeholder="생년월일 6자리" path="mem_joomin" id="mem_joomin" readonly="true"/>
									- <form:input path="mem_gender" id="mem_gender" maxlength="1" size="1" readonly="true"/> ******</td>
							</tr>

							<tr>
								<td>이메일</td>
								<td><form:input type="email" path="mem_mail" id="mem_mail"/>
								</td>
							</tr>
							<tr>
								<td>연락처</td>
								<td><form:input type="tel" placeholder="연락처 - 제외" path="mem_phone" id="mem_phone"/></td>
							</tr>
							<tr>
								<td>주소</td>
								<td><form:input id="sample6_postcode" placeholder="우편번호" path="mem_post"/> 
								<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br /> 
								<form:input id="sample6_address" placeholder="주소" path="mem_addr1"/><br />
								<form:input id="sample6_detailAddress" placeholder="상세주소" path="mem_addr2"/></td>
							</tr>
						</table>
						<input class="btn btn-default" type="button" value="수정">
					</form:form>
				</div>
				<div id="res_info" class="tab_content">
					<h3>예약정보 조회</h3>
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>예약번호</th>
									<th>코스</th>
									<th>금액</th>
									<th>예약일자</th>
									<th>예약자명</th>
									<th>연락처</th>
									<th>인원</th>
									<th>결제일자</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="obj" items="${reservationBean }">
								<tr>
									<%-- <td><a id="res_num" onclick="window.open('${root}member/mypage_reservation?res_num=${obj.reservationBean.res_num }','예약조회','scrollbars=yes width=500 height=500 left=100 top=50')">${obj.reservationBean.res_num }</a></td>
									<td><input path="c_coursename" id="c_coursename" readonly="readonly" value="${obj.reservationBean.c_coursename }"/></td>
									<td><input path="c_price" id="c_price" readonly="readonly" value="${obj.reservationBean.course_price }"/></td>
									<td><input path="res_startdate" id="res_startdate" readonly="readonly" value="${obj.reservationBean.res_startdate }"/></td>
									<td><input path="mem_name" id="mem_name" readonly="readonly" value="${obj.reservationBean.loginName }"/></td>
									<td><input path="mem_phone" id="mem_phone" readonly="readonly" value="${obj.reservationBean.loginPhone }"/></td>
									<td><input path="res_personnel" id="res_personnel" readonly="readonly" value="${obj.reservationBean.res_personnel }"/></td>
									<td><input path="res_paydate" id="res_paydate" readonly="readonly" value="${obj.reservationBean.res_paydate }"/></td> --%>
									<td><a id="res_num" onclick="window.open('${root}member/mypage_reservation?res_num=${obj.res_num }','예약조회','scrollbars=yes width=500 height=500 left=100 top=50')">${obj.res_num }</a></td>
									<td>${obj.c_coursename }</td>
									<td>${obj.course_price }</td>
									<td>${obj.res_startdate }</td>
									<td>${obj.loginName }</td>
									<td>${obj.loginPhone }</td>
									<td>${obj.res_personnel }</td>
									<td>${obj.res_paydate }</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
				</div>
				<div id="partners" class="tab_content">
					<!--유효성검사 해야함-->
					<h3>기업회원 신청</h3>
					<form>
						<table class="table table-bordered">
							<tr>
								<th>업체명</th>
								<td><input type="text" path="brew_name" id="brew_name"></td>
							</tr>
							<tr>
								<th>사업자등록번호</th>
								<td><input type="text" path="partners_code"
									id="partners_code"></td>
							</tr>
							<tr>
								<th>대표자성명</th>
								<td><input type="text" path="partners_name"
									id="partners_name"></td>
							</tr>
							<tr>
								<th>회사대표번호</th>
								<td><input type="text" path="partners_tel"
									id="partners_tel"></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td><input type="text" path="partners_mail"
									id="partners_mail"></td>
							</tr>
							<tr>
								<th>사업장주소</th>
								<td><input type="text" id="sample6_postcode"
									placeholder="우편번호" path="mem_post"> <input
									type="button" onclick="sample6_execDaumPostcode()"
									value="우편번호 찾기"><br /> <input type="text"
									id="sample6_address" placeholder="주소" path="mem_addr1"><br />
									<input type="text" id="sample6_detailAddress"
									placeholder="상세주소" path="mem_addr2"></td>
							</tr>
						</table>
						<input class="btn btn-default" type="button" id="" value="신청">
					</form>
				</div>
				<div id="delete" class="tab_content">
					<h2>정말 탈퇴하시겠습니까?</h2>
					<form>
						비밀번호 <input type="text" path="mem_pw" id="mem_pw"> <input
							class="btn btn-default" type="button" id="delete_button"
							value="탈퇴">
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- 푸터 -->
	<footer>
		<c:import url="/WEB-INF/views/include/footer.jsp" />
	</footer>
</body>
</html>