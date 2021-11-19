<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e3b77ddbf353b2397ed468cf5eb770f0"></script>
<link rel="stylesheet" href="${root }css/course/ChoongcheongCourse.css" />
</head>
<body>
	<div id="cc_breweryBox">
		<div class="cc_brewery-container01">
			<div class="cc_brewery-card01" style="position: absolute;">
				<h3>~ in Choongcheong ~</h3>
				<p style="font-size: 40px; font-weight: bold;">
					살어리 살어리 랏다 청산애 살어리랏다<br> 포도랑 와인이랑 먹고 청산애 살어리랏다
				</p>
				<p>
					첩첩산중에서 재배된 신선한 과일로 만든 와인!<br> 향긋한 포도와인과 자두와인을
					산자락에서 음미해보세요.
				</P>
				<div class="cc_breweryButton">
					<a href="">예약하기</a>
				</div>
			</div>
		</div>
		<div class="cc_brewery-container02">
			<div style="margin-top: 340px;">
				<div class="cc_brewery-title">Choongcheong course</div>
				<div class="cc_brewery-cir">
					<!-- 누끼 -->
					<div class="cc_cir_div">
						<div class="cc_cir_div2">
							<img src="${root }img/courseIntroduce/충북_여포와인_꿈.png"
								class="cc_breweryBody01_img01" width="350px" height="280px">
						</div>
						<div class="cc_cir_div2">
							<img src="${root }img/courseIntroduce/충북_도란원_샤토미소.png"
								class="cc_breweryBody01_img02" width="350px" height="280px">
						</div>
						<div class="cc_cir_div2">
							<img src="${root }img/courseIntroduce/충북_시나브로와이너리_시나브로.png"
								class="cc_breweryBody01_img03" width="150px" height="280px">
						</div>
					</div>
				</div>
				<table>
					<thead>
						<!-- 순서도, 시간 -->
						<tr>
							<td>정부청사역</td>
							<td class="cc_dotted"></td>
							<td>여포와인</td>
							<td class="cc_dotted"></td>
							<td>도란원</td>
							<td class="cc_dotted"></td>
							<td>시나브로 와이너리</td>
							<td class="cc_dotted"></td>
							<td>정부청사역</td>
						</tr>
						<tr>
							<!--시간-->
							<td>13:00</td>
							<td></td>
							<td>14:30</td>
							<td></td>
							<td>15:30</td>
							<td></td>
							<td>16:30</td>
							<td></td>
							<td>17:40</td>
						</tr>
					</thead>
				</table>
				<div class="cc_brewery-memo">
					<div>
						3개 코스
						<p>40,000원</p>
					</div>
					<p>*도로 교통상황에 따라 도착시간이 달라질 수 있습니다.</p>
				</div>
				<div class="cc_brewery-title02">Brewery Information</div>
				<div class="cc_brewery-card03">
					<div class="card03-box">
						<div>
							<img src="${root }img/courseIntroduce/경기도_배혜정도가.png"
								class="cc_breweryBody01_img04" />
						</div>
						<div class="cc_course_p">
							<p>
								■주소 : 충청북도 영동군 양강면 유점지촌길 75 <br>
							</p>
							<p>■전화번호 : 043 - 744 - 7702</p>
						</div>
						<div class="cc_cose_map" id="gyung_cose1"></div>
					</div>
				</div>

				<div class="cc_brewery-title02">Brewery Information</div>
				<div class="cc_brewery-card03">
					<div class="card03-box">
						<div>
							<img src="./gyunggiIMG/경기도-호랑이배꼽.png" class="cc_breweryBody01_img05" />
						</div>
						<div class="cc_course_p">
							<p>■주소: 경기 평택시 포승읍 충열길 37</p>
							<p>■전화번호 : 031 - 683 - 0981</p>
						</div>
						<div class="cc_cose_map" id="gyung_cose2"></div>
					</div>
				</div>
				<div class="cc_brewery-title02">Brewery Information</div>
				<div class="cc_brewery-card03">
					<div class="cc_card03-box">
						<div>
							<img src="./gyunggiIMG/경기도-그랑꼬또.png" class="cc_breweryBody01_img05" />
						</div>
						<div class="cc_course_p">
							<p>■주소: 경기 안산시 단원구 뻐꾹산길 107</p>
							<p>■전화번호 : 0507 - 1342 - 9873</p>
							<p>■Instagram: </p>
						</div>
						<div class="cc_cose_map" id="gyung_cose3"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${root }js/course/gyunggi.js"></script>
</body>
</html>