<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="${root }css/reservationCss.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
<script src="${root }js/zip.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="/resource/js/bootstrap.js"></script>
<title>Sul Sure</title>
</head>
<body>
	<!-- 헤더 -->
	<header>
		<!-- 헤더 배너광고 -->
		<div class="gg">
			<div class="adad">광고 배너입니다.</div>
		</div>
		<!-- 헤더 메뉴 -->
		<div class="menu" onscroll="menuscroll()">
			<div class="menu1">
				<div class="logo">
					<a href="${root }main"><img
						src="${root }img/menu_bar/logoimg.jpg" /></a>
				</div>
				<div class="menu_bar">
					<li><a href="#기관소개">기관소개</a></li>
					<li><a href="#양조장">양조장</a></li>
					<li><a href="${root }reservation/main">예약</a></li>
					<li><a href="${root }board/NoticeList">공지사항 및 문의</a></li>
				</div>
				<div class="login">
					<c:choose>
						<c:when test="${loginBean.memLogin == false }">
							<a style="position: absolute; right: 5em;" href="#"
								id="popup_open_btn"><img
								src="${root }img/menu_bar/loginimg.png" /></a>
							<a href="#" id="mypage_open_btn" style="display: none;"><img
								src="${root }img/menu_bar/mypage.jpg" /></a>
						</c:when>
						<c:otherwise>
							<a href="#" id="popup_open_btn" style="display: none;"><img
								src="${root }img/menu_bar/loginimg.png" /></a>
							<a href="${root }member/mypage"> <span><img
									id="mypage_open_btn" src="${root }img/menu_bar/mypage.jpg" />
									<span id="my_name">${loginBean.mem_name }님</span></span>
							</a>
							<a href="member/logout_proc" id="logout_button">로그아웃</a>
						</c:otherwise>
					</c:choose>
	</header>
	<section>
		<div id="reservation" class="sect">
			<form:form action="reserve" modelAttribute="reservationBean">
			<!--유효성검사 해야함-->
				<h1>예약</h1>
				<h3>
					여행 내내 운전하느라 술을 즐기지 못한 <span style="color: rgb(248, 15, 15);">애주가</span>를
					위한 완벽한 코스
				</h3>
				<div id="res_con1">
					<select path="loc_name" id="res_maincategory"
						style="background: url(${root}img/reservation/icon/bg_select.png) no-repeat right 13px center;">
						<option>지역을 선택하세요.</option>
					</select>
					<form:select path="res_coursenum" id="res_subcategory"
						style="background: url(${root}img/reservation/icon/bg_select.png) no-repeat right 13px center;">
						<c:forEach var="obj" items="${getCourseIdx }">
							<form:option value="${obj.course_num }">${obj.course_names }</form:option>
						</c:forEach>
					</form:select>
					<input type="date" id="res_date">
					<div id="res_perdiv1">
						<div id="res_perdiv2">
							<b style="font-size: 18px; margin-top: 10px;">인원</b>
							<p id="minus" onclick="minus()">-</p>
							<p id="res_personnel">1</p>
							<p id="plus" onclick="plus()">+</p>
							<img src="${root }img/reservation/icon/won.png" id="res_priceimg" />
							<input type="text" path="c_price" id="res_price" >
							<input type="button" id="res_ch" value="선택">
						</div>
					</div>
				</div>
				<div id="res_course">코스 간략한 소개</div>
				<div id="res_con2">
					<div id="res_info">
						<table class="table" id="table1">
							<tr>
								<!-- 예약코스(선택한 코스), 예약일자(선택한 일자), 예약자 정보(이름,연락처,이메일) 불러와야함! -->
								<th>예약코스</th>
								<td><form:input type="text" path="c_coursename" /></td>
							</tr>
							<tr>
								<th>예약일자</th>
								<td><form:input type="date" path="res_startdate" /></td>
							</tr>
						</table>
						<h4>예약자 정보</h4>
						<table class="table" id="table2">
							<tr>
								<th>이름</th>
								<td><input type="text" path="mem_name" id="mem_name"></td>
								<th>연락처</th>
								<td><input type="tel" path="mem_phone" id="mem_phone"></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td colspan="3"><input type="email" path="mem_mail" id="mem_mail"></td>
							</tr>
							<tr>
								<td colspan="4"><b>요청사항은 02-123-4567로 연락주세요.</b></td>
							</tr>
						</table>
					</div>
					<div id="res_right">
						<div id="res_gg">광고배너</div>
						<div id="res_perinfo">
							<h4>인원정보</h4>
							<table class="table" id="table3">
								<tr>
									<th>인원</th>
									<td><form:input type="number" path="res_personnel"
											id="res_personnel" /></td>
								</tr>
								<tr>
									<td colspan="2"><img
										src="${root }img/reservation/icon/won.png" id="res_priceimg" /><input
										type="text" path="c_price" id="res_price"></td>
								</tr>
							</table>
							<form:button id="res_button">예약</form:button>
						</div>
					</div>
				</div>
			</form:form>
		</div>
	</section>
	<footer>
		<div class="FOOTER_TOTAL">
			<div class="F_i F_i1">
				<img src="${root }img/footer/M_LOGE.jpg" />
				<p>
					<strong>대표자</strong>박치언
				</p>
				<p>
					<strong>사업자등록번호</strong> 052-34-56789
				</p>
				<p>통신판매업신고 제2015-울산울주-0164호</p>
			</div>
			<div class="F_i F_i2">
				<img src="${root }img/footer/location.png" width="180px">
				<p>
					<strong>울산광역시 울주군 상북면 향산동길 48</strong>
				</p>
			</div>
			<div class="F_i F_i3">
				<img src="${root }img/footer/call.png" width="180px" />
				<p>전화 052-879-1234</p>
				<p>팩스&nbsp;&nbsp;1577-6746</p>
				<p>soldesk@gmail.com</p>
			</div>
			<div class="F_i F_i4">
				<img src="${root }img/footer/open.png" width="180px" />
				<p>
					<strong>매주</strong>
				</p>
				<p id="line">
					<strong>오전</strong> 9:00 ~ <strong>오후</strong> 18:00
				</p>
				<p>
					<strong>매주 월요일 휴무</strong>
				</p>
			</div>
		</div>
	</footer>
	<script type="text/javascript" src="${root }js/sooldesk2.js"></script>
	<script type="text/javascript" src="${root }js/modal.js"></script>
	<script type="text/javascript" src="${root }js/reservation.js"></script>
	<script
		src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>