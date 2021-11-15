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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="${root }css/reservationCss.css" />
<script src="${root }js/zip.js"></script>
<link href="${root }css/include/header_footer.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- 헤더 -->
	<header>
		<!-- 헤더 배너광고 -->
		<c:import url="/WEB-INF/views/include/ad.jsp" />
		<!-- 헤더 메뉴 -->
		<div class="menu" onscroll="menuscroll()">
			<div class="menu1">
				<c:import url="/WEB-INF/views/include/header.jsp" />
			</div>
		</div>
	</header>
	<section>
		<div id="reservation">
			<form:form action="reserve" modelAttribute="reservationBean">
				<!--유효성검사 해야함-->
				<h1>예약</h1>
				<h3>
					여행 내내 운전하느라 술을 즐기지 못한 <span style="color: rgb(248, 15, 15);">애주가</span>를
					위한 완벽한 코스
				</h3>
				<div id="res_con1">
					
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
							<input type="text" path="c_price" id="res_price"> <input
								type="button" id="res_ch" value="선택">
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
								<td><input type="text" path="c_coursename"></td>
							</tr>
							<tr>
								<th>예약일자</th>
								<td><input type="date" path="res_startdate"></td>
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
								<td colspan="3"><input type="email" path="mem_mail"
									id="mem_mail"></td>
							</tr>
							<tr>
								<td colspan="4"><b>요청사항은 02-123-4567로 연락주세요.</b></td>
							</tr>
						</table>
					</div>
					<div id="res_right">
						<div id="res_gg">
						<div id="res_gggg">
			<li><a href="#"><img src="${root }img/ad/gg2.png" class="pimg1"></a></li>
            <li><a href="#"><img src="${root }img/ad/gg3.jpg" class="pimg2"></a></li>
            <li><a href="#"><img src="${root }img/ad/gg4.jpg" class="pimg3"></a></li>
            <li><a href="#"><img src="${root }img/ad/gg5.png" class="pimg4"></a></li>
		</div></div>
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
	<!-- 푸터 -->
	<footer>
		<c:import url="/WEB-INF/views/include/footer.jsp" />
	</footer>
	<script type="text/javascript" src="${root }js/reservation.js"></script>
</body>
</html>