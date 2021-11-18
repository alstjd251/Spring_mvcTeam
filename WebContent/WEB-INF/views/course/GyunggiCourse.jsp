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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e3b77ddbf353b2397ed468cf5eb770f0"></script>
<link rel="stylesheet" href="${root }css/course/course3.css" />
<title>Insert title here</title>
</head>
<body>
	<div id="breweryBox">
		<div class="brewery-container01">
			<div class="brewery-card01" style="position: absolute;">
				<h3>~ in Gyunggi ~</h3>
				<p style="font-size: 40px; font-weight: bold;">
					도시에서 즐기는 술 한잔<br> 빌딩 숲 사이에서 느낄 수 있는 여유
				</p>
				<p>
					남산과 한강이 보이는 드라이브를 즐기며 증류주의 맛을 체험하는 도심형 코스!<br> 조선시대 사대부가 즐겨마셨던
					삼해주, 매실로 빚어낸 서울식 GIN을 맛보는 여행.
				</P>
				<div class="breweryButton">
					<a href="">예약하기</a>
				</div>
			</div>
		</div>
		<div class="brewery-container02">
			<div style="margin-top: 340px;">
				<div class="brewery-title">Gyunggi course</div>
				<div class="brewery-cir">
					<!-- 누끼 -->
					<img src="C:/Users/user/Desktop/기업프로젝트/코스/제품이미지/서울/누끼/삼해소주-누끼.png"
						class="breweryBody01_img01"> <img
						src="C:/Users/user/Desktop/기업프로젝트/코스/제품이미지/서울/누끼/서울의밤-누끼.png"
						class="breweryBody01_img02"> <img
						src="C:/Users/user/Desktop/기업프로젝트/코스/제품이미지/서울/누끼/서울의밤-누끼.png"
						class="breweryBody01_img03">
				</div>
				<table>
					<thead>
						<!-- 순서도, 시간 -->
						<tr>
							<td>고속버스 터미널</td>
							<td class="dotted"></td>
							<td>배혜정도가</td>
							<td class="dotted"></td>
							<td>호랑이배꼽</td>
							<td class="dotted"></td>
							<td>그랑꼬또와인</td>
							<td class="dotted"></td>
							<td>고속버스 터미널</td>
						</tr>
						<tr>
							<!--시간-->
							<td>12:30</td>
							<td></td>
							<td>13:30</td>
							<td></td>
							<td>14:40</td>
							<td></td>
							<td>16:00</td>
							<td></td>
							<td>17:30</td>
						</tr>
					</thead>
				</table>
				<div class="brewery-memo">
					<div>
						3개 코스
						<p></p>
						원
					</div>
					<p>*도로 교통상황에 따라 도착시간이 달라질 수 있습니다.</p>
				</div>
				<div class="brewery-title02">Brewery Information</div>
				<div class="brewery-card03">
					<div class="card03-box">
						<div>
							<img src="${root }img/courseIntroduce/경기도_배혜정도가.png" class="breweryBody01_img04" />
						</div>
						<div class="course_p">
							<p>
								■주소 : 서울시 종로구 창덕궁길 142 <br> ( 서울시 종로구 원서동 4-9 )
							</p>
							<p>■전화번호 : 010 - 5216 - 8093</p>
							<p>■Instagram: cooleagan</p>
						</div>
						<div class="cose_map" id="gyung_cose1"></div>
					</div>
				</div>

				<div class="brewery-title02">Brewery Information</div>
				<div class="brewery-card03">
					<div class="card03-box">
						<div>
							<img src="./gyunggiIMG/경기도-호랑이배꼽.png" class="breweryBody01_img05" />
						</div>
						<div class="course_p">
							<p>■주소: 서울시 은평구 증산로7길 28-13</p>
							<p>■전화번호 : 02-2280-8080</p>
							<p>■Instagram: thehan.kr</p>
						</div>
						<div class="cose_map" id="gyung_cose2"></div>
					</div>
				</div>
				<div class="brewery-title02">Brewery Information</div>
				<div class="brewery-card03">
					<div class="card03-box">
						<div>
							<img src="./gyunggiIMG/경기도-그랑꼬또.png" class="breweryBody01_img05" />
						</div>
						<div class="course_p">
							<p>■주소: 서울시 은평구 증산로7길 28-13</p>
							<p>■전화번호 : 02-2280-8080</p>
							<p>■Instagram: thehan.kr</p>
						</div>
						<div class="cose_map" id="gyung_cose3"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${root }js/course/gyunggi.js"></script>
</body>
</html>