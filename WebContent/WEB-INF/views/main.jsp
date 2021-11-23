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
<link rel="stylesheet" href="${root }css/main/mainCss.css" />
<link rel="stylesheet" href="${root }css/include/wave.css" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
<script src="${root }js/zip.js"></script>
<link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
    />
<title>Sul Sure</title>
</head>
<body>
	<!-- 헤더 -->
	<header>
		<c:import url="/WEB-INF/views/include/header.jsp"/>
	</header>
	<!-- 섹션 -->
	<div class="section" dir="ltr">
		<!-- 메인페이지 페이드인아웃 -->
		<div id="fade1" class="sect">
			<div id="fade2">
				<li><img src="${root }img/mainpage/img1.jpg" class="img1" /></li>
				<li><img src="${root }img/mainpage/img2.jpg" class="img2" /></li>
				<li><img src="${root }img/mainpage/img3.jpg" class="img3" /></li>
				<li><img src="${root }img/mainpage/img4.jpg" class="img4" /></li>
				<li><img src="${root }img/mainpage/img5.jpg" class="img5" /></li>
			</div>
			<img class="fadeImg" src="${root }img/mainpage/주백약지장.png" />
			<img class="fadeImg2" src="${root }img/mainpage/주백2.svg" />
		</div>
		<div id="introduce" class="sect">
			<div class="introduce_total">
				<div class="in_item">
					<img id="intro" src="${root }img/mainIntroduce/introduce.png">
					<img id="drink" src="${root }img/mainIntroduce/drink.png">
				</div>
				<div class="in_item2">
					<div class="i_t1">
						<div class="i_t1_front">
							<div class="i_t1_front1">
								<div class="i_t1_flex" >
									<div id="pattern"><img src="${root}img/mainIntroduce/intro_pattern.png" width="350" height="350"></div>
									<div style="font-weight: bolder; font-size: 22px;">술을 탐내는 마음은 본질적으로 바른 마음이다. - 임어당(林語堂)</div>
								</div>
							</div>
						</div>
						<div class="t1_property">
							<div id="img1">
								<img src="${root }img/mainIntroduce/bus.png" id="bus" width="100px"
									height="80px">
								<p>전문 가이드, 차량포함으로<br>
								<b>안전</b>하고 <b>편안</b>하게<br>
								즐기는 여행!
								</p>
								<p><b style="color:red;">전통주</b>와 여행지의 특색을<br>
								동시에 즐길 수 있습니다.</p>
							</div>
							<div id="img2">
								<img src="${root }img/mainIntroduce/house.png" id="house" width="120px"
									height="100px">
									<p>
								우리의 <b>전통</b>과 <b>문화</b>를<br>
								 느낄 수 있습니다. 
								</p>
								<p>전통주를 맛 보고 <br>
								체험할 수 있는<br>
								아주 <b style="color:red;">특별한</b> 경험.</p>
							</div>
							<div id="img3">
								<img src="${root }img/mainIntroduce/map.png" id="map" width="100px"
									height="100px">
								<p>전국 어디든<br>
								내가 떠나고 싶은 곳으로!
								</p>
								<p>각 <b>지역</b>의 숨겨진<br>
								<b style="color:red;">매력 포인트</b>를 찾아보세요.</p>
							</div>
						</div>
					</div>
					<div class="i_t2"></div>
				</div>
			</div>
		</div>
		<!--코스 소개-->
		<div id="yang01" class="sect"
			style="background-image:url(${root}img/mainpage/bg.jpg)">
			<!--서울,경기-->
			<div id="mainBrewery01">
				<div class="breweryText01">
					<h1>서울</h1>
					<img src="${root }img/mainpage/line.png" width="300px" height="30px">
					<h4 id="c_name">
						술, 래잡기
						<p id="course_intro">
							600년의 역사를 그대로 안고 있는 아름다운 고궁들과 더불어<br> 술 하나하나에 담긴 이야기와 맛을 즐길
							수 있는,<br> 서울이 선사하는 생애 가장 풍부한 순간을 느껴보세요.<br>
						</p>
						<button class="course_bt1" onclick="course_bt1()">코스 소개</button>
				</div>
				<div class="breweryImg01">
					<img src="${root }img/course/서울코스.jpg" width="380px" height="250px">
				</div>
			</div>
			<div id="mainBrewery02">
				<div class="breweryImg02">
					<img src="${root }img/course/경기코스.jpg" width="380px" height="250px">
				</div>
				<div class="breweryText02">
					<h1>경기도</h1>
					<img src="${root }img/mainpage/line2.png" width="300px" height="30px">
					<h4 id="c_name">평.화.산</h4>
					<p id="course_intro">
						해안과 육지를 넘나드는 경험이 가능한 경기도<br> 복잡한 도시에서 벗어나 자연과 함께 전통주를 맛 보며<br>
						푸른 바다와 향긋한 술 향기에 오감을 맡길 수 있습니다.
					</p>
					<button class="course_bt2" onclick="course_bt2()">코스 소개</button>
				</div>
			</div>
		</div>
		<!--양조장 코스 02 (충청, 전라)-->
		<div id="yang02" class="sect"
			style="background-image:url(${root}img/mainpage/bg.jpg)">
			<div id="mainBrewery03">
				<div class="breweryText03">
					<h1>충청도</h1>
					<img src="${root }img/mainpage/line.png" width="300px" height="30px">
					<h4 id="c_name">취 했 슈?</h4>
					<p id="course_intro">
						술이 익어가는 오래된 항아리, 손으로 비벼 만드는 누룩,<br> 인생의 향기를 담은 아름다운 술이 익어가고
						있습니다. <br>오랫동안 지켜온 전통이 술의 맛과 향에 녹아 있는 충청도로 떠나볼까요?
					</p>
					<button class="course_bt3" onclick="course_bt3()">코스 소개</button>
				</div>
				<div class="breweryImg03">
					<img src="${root }img/course/충북코스_단양.jpg" width="380px" height="250px">
				</div>
			</div>
			<div id="mainBrewery04">
				<div class="breweryImg04">
					<img src="${root }img/course/전라도코스_담양.jpg" width="380px" height="250px">
				</div>
				<div class="breweryText04">
					<h1>전라도</h1>
					<img src="${root }img/mainpage/line2.png" width="300px" height="30px">
					<h4 id="c_name">안주가 필요없단께~</h4>
					<p id="course_intro">
						우리의 전통이 면면히 이어 흘러가며, 각 지역의 문화가 잘 살아있는 전라도<br> 전통주와 기개 높은 대나무
						숲과 함께<br> 오감(五感)으로 느끼는 신선이 된다는 전통주 한 잔 어떠세요?
					</p>
					<button class="course_bt4" onclick="course_bt4()">코스 소개</button>
				</div>
			</div>
		</div>
		<div id="yang03" class="sect"
			style="background-image:url(${root}img/mainpage/bg.jpg)">
			<!-- 경북, 경남 -->
			<div id="mainBrewery05">
				<div class="breweryText05">
					<h1>경상북도</h1>
					<img src="${root }img/mainpage/line.png" width="300px" height="30px">
					<h4 id="c_name">마이무!</h4>
					<p id="course_intro">
						의(義)와 예(禮)의 고장에서 만나는 우리 술<br> 500년의 전통을 이어온 안동 소주와 한국의 브랜디
						금과명주를<br> 동시에 느낄 수 있는 경상도로 오세요.
					</p>
					<button class="course_bt5" onclick="course_bt5()">코스 소개</button>
				</div>
				<div class="breweryImg05">
					<img src="${root }img/course/경상도코스_경북_안동.jpg" width="380px" height="250px">
				</div>
			</div>
			<div id="mainBrewery06">
				<div class="breweryImg06">
					<img src="${root }img/course/경남코스.jpg" width="380px" height="250px">
				</div>
				<div class="breweryText06">
					<h1>경상남도</h1>
					<img src="${root }img/mainpage/line2.png" width="300px" height="30px">
					<h4 id="c_name">자 드가자!</h4>
					<p id="course_intro">
						시간과 정성으로 빚은 아름다운 우리 술<br> 전통주의 새로운 가치를 만들어 가는 경상도!<br> 두
						눈 가득 진짜 경상남도를 담으세요.
					</p>
					<button class="course_bt6" onclick="course_bt6()">코스 소개</button>
				</div>
			</div>
		</div>
		<div id="footgg" class="sect">
			<div id="gg">
				<div id="ggone">
					<a href="http://ursa.co.kr/" target="_blank"><img
						src="${root }img/ad/우루샷.jpg" class="pimg"></a>
				</div>
				<div id="ggtwo">
					<li><a href="#"><img src="${root }img/ad/1330.jpg"
							class="pimg1" /></a></li>
					<li><a href="#"><img src="${root }img/ad/야놀자.png"
							class="pimg2" /></a></li>
					<li><a href="#"><img src="${root }img/ad/하미앙.png"
							class="pimg3" /></a></li>
					<li><a href="#"><img src="${root }img/ad/여긴어때.png"
							class="pimg4" /></a></li>
					<li><a href="#"><img src="${root }img/ad/숙박대전.jpg"
							class="pimg5" /></a></li>
				</div>
			</div>
			<footer>
				<c:import url="/WEB-INF/views/include/footer.jsp" />
		</div>
		</footer>
	</div>
	</div>
	
	<script type="text/javascript" src="${root }js/sooldesk.js"></script>
	<script
		src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript">
	function course_bt1() {
		location.href="${root}course/CourseTab?courseNam=Seoul";
	}
	function course_bt2() {
		location.href="${root}course/CourseTab?courseNam=Gyunggi";
	}
	function course_bt3() {
		location.href="${root}course/CourseTab?courseNam=Choongcheong";
	}
	function course_bt4() {
		location.href="${root}course/CourseTab?courseNam=Jeonla";
	}
	function course_bt5() {
		location.href="${root}course/CourseTab?courseNam=Gyungbook";
	}
	function course_bt6() {
		location.href="${root}course/CourseTab?courseNam=Gyungnam";
	}
	</script>

</body>
</html>