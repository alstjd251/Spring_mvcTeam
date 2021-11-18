<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="${root }css/include/wave.css" />
<link rel="stylesheet" href="${root }css/include/n_header_footer.css" />
<link rel="stylesheet" href="${root }css/companyintroduce.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
<script src="${root }js/zip.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<title>Sul sure</title>
</head>
<body>
	<header>
		<!-- 헤더 메뉴 -->
		<div class="menu">
			<div class="menu1">
				<c:import url="/WEB-INF/views/include/header.jsp" />
			</div>
		</div>
	</header>
	<section>
		<div class="introTitle">
			<img src="${root }img/companyintroduce/Logo_SulSure.png">

			<div class="sulsure-Q">
				<h3>SulSure?</h3>
				<p>술 + 수레 / 술? SURE!</p>
				<p>
					SulSure는 술을 나르는 수레, 술을 권했을 때 승낙하는 두가지 의미를 가지고있습니다.<br>
					SulSure와 함께 한국 술 한 잔.. 어떠신가요?
				</p>
			</div>
		</div>

		<div class="intro-container02">
			<div class="colorBox01">
				<img src="${root }img/companyintroduce/colorbox01.png">
			</div>
			<div class="introText">
				<div class="introText-sub">
					<h1>하나.</h1>
					<p>편리한 교통</p>
					<div>기차역, 버스터미널에서 내려 바로 앞에서 이용 가능한 위치</div>
				</div>
				<div class="introText-sub">
					<h1>둘.</h1>
					<p>운전 No!</p>
					<div>
						운전걱정은 접어두세요. <br> SulSure의 기사님들이 안전을 책임지겠습니다.
					</div>
				</div>
				<div class="introText-sub">
					<h1>셋.</h1>
					<p>지역 관광지와의 접근성</p>
					<div>
						코스 전후로 다른 관광지까지 이동하는 시간 최소 10분.<br> 하루 일정을 다양하게 즐겨보세요.
					</div>
				</div>
			</div>
		</div>
		<div class="intro-container03">
			<div class="colorBox02">
				<div class="introMap">
					<img src="${root }img/companyintroduce/introduce_map.png">
				</div>
				<div>
					<div class="introMap-text">
						<div class="introMap-text01">
							전국의 6개 코스,<br> SulSure와 함께하는 양조장의 수 "17"개!<br> 계속해서
							늘어나는 코스를 정복해보세요.
						</div>
						<div class="introMap-text02">*이미지 : 내 곁에 찾아가는 양조장 46선</div>
					</div>
				</div>
			</div>
		</div>

		<div class="intro-container04">
			<div>SulSure에서 맛볼 수 있는 술</div>
			<div>양조장의 시그니처 외에도 다양한 술을 즐겨보세요</div>
			<div class="introBottle">
				<img src="${root }img/companyintroduce/line.png">
				<img src="${root }img/companyintroduce/intro.png">
			</div>
		</div>

		<div class="intro-container05">
			<p class="intro-color">대한민국 구석구석</p>
			<div class="intro-bold">한국관광공사 x SulSure</div>
			<p class="intro-color">가 함께하는 국내 주류 투어</p>
			<button class="intro_bt" onclick="course()">코스확인</button>
			<button class="intro_bt" onclick="reservation()">예약하기</button>
		</div>

	</section>
	<footer>
		<c:import url="/WEB-INF/views/include/footer.jsp" />
	</footer>
	<script type="text/javascript" src="${root}js/n_page.js"></script>
	<script>
	function course() {
		location.href="${root}course/CourseTab"
	}
	function reservation() {
		location.href="${root}reservation/main"
	}
	</script>
</body>
</html>