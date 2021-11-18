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
<link rel="stylesheet" href="${root }css/course/GyunggiCourse.css" />
<title>Insert title here</title>
</head>
<body>
	<div id="breweryBox">
		<div class="brewery-container01">
			<div class="gg_brewery-card01" style="position: absolute;">
				<h3>~ in Gyunggi ~</h3>
				<p style="font-size: 40px; font-weight: bold;">
					서해안 바닷바람을 안주 삼아<br> 가까운 듯 머나먼 곳으로 가고 싶으신가요?
				</p>
				<p>
					서해에 인접한 경기남부 대표 도시들을 돌아보세요.<br> 선물용으로도 탁월한 패키지의
					막걸리들을 시작으로 달콤쌉쌀한 와인까지!
				</P>
				<div class="breweryButton">
					<a href="">예약하기</a>
				</div>
			</div>
		</div>
		<div class="brewery-container02">
			<div style="margin-top: 340px;">
				<div class="brewery-title">Gyunggi course</div>
				<div class="gg_brewery-cir">
					<!-- 누끼 -->
					<div class="gg_cir_div">
						<div class="gg_cir_div2">
							<img src="${root }img/courseIntroduce/경기_배혜정도가_호랑이막걸리.png"
								class="gg_breweryBody01_img01" width="150px" height="280px">
						</div>
						<div class="gg_cir_div2">
							<img src="${root }img/courseIntroduce/경기_호랑이배꼽.png"
								class="gg_breweryBody01_img02" width="150px" height="280px">
						</div>
						<div class="gg_cir_div2">
							<img src="${root }img/courseIntroduce/경기_그랑꼬또.png"
								class="gg_breweryBody01_img03" width="300px" height="280px">
						</div>
					</div>
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
							<img src="${root }img/courseIntroduce/경기도_배혜정도가.png"
								class="breweryBody01_img04" />
						</div>
						<div class="course_p">
							<p>
								■주소 : 서울특별시 강남구 논현로 6 <br>
							</p>
							<p>■전화번호 : 02 - 3462 - 7328</p>
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
							<p>■주소: 경기 평택시 포승읍 충열길 37</p>
							<p>■전화번호 : 031 - 683 - 0981</p>
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
							<p>■주소: 경기 안산시 단원구 뻐꾹산길 107</p>
							<p>■전화번호 : 0507 - 1342 - 9873</p>
							<p>■Instagram: </p>
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