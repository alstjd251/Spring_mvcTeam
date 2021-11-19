<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sul Sure</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link href="${root }css/board/postListCss.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="${root }css/include/wave.css" />
	<link href="${root }css/include/n_header_footer.css" rel="stylesheet" type="text/css" />
	<link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
    />
</head>
<body>
	<!-- 헤더 -->
	<header>
		<!-- 헤더 배너광고 -->
		<!-- 헤더 메뉴 -->
		<div class="menu">
			<div class="menu1">
				<c:import url="/WEB-INF/views/include/header.jsp"/>
			</div>
		</div>
	</header>
	<div class="cs-container" style="margin-bottom:50px;">
		<h1>Q & A</h1>
		<div class="cs-board01">
			<div id="cs-menu">
				<li><a href="${root }board/NoticeList">공지사항</a></li>
				<li><a href="${root }board/Qna">QnA</a></li>
				<li><a href="${root }board/ContactUs">Contact Us</a></li>
			</div>
		</div>
		<div class="panel-group" id="accordion" role="tablist"
			aria-multiselectable="true" style="width:60%; margin-left:20%;margin-bottom:150px">
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingOne">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapseOne" aria-expanded="true"
							aria-controls="collapseOne"> <b>Q.</b> 예약 당일에 양조장의 문제로
							취소되면 어떻게 되나요? </a>
					</h4>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in"
					role="tabpanel" aria-labelledby="headingOne">
					<div class="panel-body">
						<b>A.</b> 먼저 주변의 다른 양조장으로 안내를 도와드리고 있습니다.<br /> 코스 상황에 따라 다른 장소로 이동하지 못할
						경우에는 전액 환불을 해드리니<br /> 대표번호로 연락 부탁드립니다.
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingTwo">
					<h4 class="panel-title">
						<a class="collapsed" data-toggle="collapse"
							data-parent="#accordion" href="#collapseTwo"
							aria-expanded="false" aria-controls="collapseTwo">
							<b>Q.</b> 코스 전체가 아닌 일정 양조장만 가고 싶습니다. </a>
					</h4>
				</div>
				<div id="collapseTwo" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingTwo">
					<div class="panel-body">
						<b>A.</b> 죄송합니다. 현재까지는 안전상의 문제로 지정된 코스만 이용 가능합니다.<br /> 자율 선택형 코스는 추후에
						도입될 예정이니 많은 관심 부탁드립니다.
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingThree">
					<h4 class="panel-title">
						<a class="collapsed" data-toggle="collapse"
							data-parent="#accordion" href="#collapseThree"
							aria-expanded="false" aria-controls="collapseThree">
							<b>Q.</b> 시간이 마음에 들지 않습니다. 오전 시간에 출발할 수 있을까요? </a>
					</h4>
				</div>
				<div id="collapseThree" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingThree">
					<div class="panel-body"><b>A.</b> 코스 시간은 해당 코스의 관계자 분들과의 상의로 결정된
						시간으로 조정이 불가능합니다.
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingFour">
					<h4 class="panel-title">
						<a class="collapsed" data-toggle="collapse"
							data-parent="#accordion" href="#collapseFour"
							aria-expanded="false" aria-controls="collapseFour">
							<b>Q.</b> 출발 시간에 맞추지 못하면 어떻게 되나요? </a>
					</h4>
				</div>
				<div id="collapseFour" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingFour">
					<div class="panel-body">
						<b>A.</b> 원칙적으로 정시 출발을 하고 있으나, 천재지변 및 교통문제(기차,고속버스)로 인한 경우<br /> 최대
						10분까지 출발시간을 늦춰드립니다. 위와 같은 상황이 아닌 경우에는 정시 출발을 하며,<br /> 고객님의 과실로
						인해 환불을 해 드릴 수 없습니다.
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingFive">
					<h4 class="panel-title">
						<a class="collapsed" data-toggle="collapse"
							data-parent="#accordion" href="#collapseFive"
							aria-expanded="false" aria-controls="collapseFive">
							<b>Q.</b> 차량 내부에서 음주가 가능한가요? 
						</a>
					</h4>
				</div>
				<div id="collapseFive" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingFive">
					<div class="panel-body"><b>A.</b> 운전기사 및 다른 고객님들의 안전을 위해 차내 음주는 금지하고
						있습니다.
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingSix">
					<h4 class="panel-title">
						<a class="collapsed" data-toggle="collapse"
							data-parent="#accordion" href="#collapseSix"
							aria-expanded="false" aria-controls="collapseSix">
							<b>Q.</b> 양조장 체험은 불가능한가요? 
						</a>
					</h4>
				</div>
				<div id="collapseSix" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingSix">
					<div class="panel-body">
						<b>A.</b> 현재까지는 시음을 중심으로 운영하고 있습니다. 직접 술을 만드는 등의 체험은<br /> 추후에 도입될
						예정입니다.
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingSeven">
					<h4 class="panel-title">
						<a class="collapsed" data-toggle="collapse"
							data-parent="#accordion" href="#collapseSeven"
							aria-expanded="false" aria-controls="collapseSeven">
							<b>Q.</b> 관광지에서 집결지로 바로 이동할 예정입니다. 짐을 보관할 장소가 있을까요? 
						</a>
					</h4>
				</div>
				<div id="collapseSeven" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingSeven">
					<div class="panel-body">
						<b>A.</b> 주변 역의 물품보관함을 이용하시거나 20인치 이하의 캐리어인 경우<br /> 트렁크에 보관을 도와드리고
						있습니다.
					</div>
				</div>
			</div>
		</div>
		<div style="margin-bottom: 200px">
			기타 문의 사항은 기타 문의하기 버튼을 눌러 양식에 맞춰서 적어주시기 바랍니다.<br><br>
			<a href="${root }board/QnaAnother" id="qna_button">기타 문의하기</a>
		</div>
	</div>
	<footer>
		<c:import url="/WEB-INF/views/include/footer.jsp"/>
	</footer>
	<script type="text/javascript" src="${root}js/n_page.js"></script>
</body>
</html>