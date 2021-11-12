<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value='${pageContext.request.contextPath }/' />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="${root }css/page.css" />
<link href="${root }css/postCss.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>Sul Sure</title>
</head>

<body>
	<!-- 헤더 -->
	<header>
		<!-- 헤더 배너광고 -->
		<div class="ad">
			<div class="adad">광고 배너입니다</div>
		</div>
		<!-- 헤더 메뉴 -->
		<div class="menu" onscroll="menuscroll()">
			<div class="menu1">
				<div class="logo">
					<a href="#"><img src="${root }img/menu_bar/logoimg.jpg" /></a>
				</div>
				<div class="menu_bar">
					<li><a href="#기관소개">기관소개</a></li>
					<li><a href="#양조장">양조장</a></li>
					<li><a href="#예약">예약</a></li>
					<li><a href="#공지사항 및 문의">공지사항 및 문의</a></li>
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
							<a href="${root }member/logout_proc" id="logout_button">로그아웃</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</header>
	<!--*** 게시글 섹션 ***-->
	<section id="post">
		<form:form action="${root }board/NoticeDelete" modelAttribute="noticeBean"
			method="post">
			<form:hidden path="n_noticenum" />
			<div>
				<div id="postContainer01">
					<div class="postTop">
						<div class="postTop-board01">
							<h2>공지사항</h2>
						</div>
						<div>
							<a href="${root }board/NoticeList">목록</a>
							<a href="${root }board/NoticeModify">수정</a>
						</div>
					</div>
					<div id="postMiddle">
						<div class="postMiddle-board01">
							<div class="postTitle">
								<div>
									<form:label path="n_noticetitle">글제목 : ${noticeBean.n_noticetitle}</form:label>
								</div>
								<div class="postMiddle-board02">
									<img src="${root }img/boardIcon/eye_new.png"><span></span>
									<!--조회수DB-->
									<img src="${root }img/boardIcon/sub_date_new.png"><span></span>
									<!-- 등록일DB -->
								</div>
							</div>
							<!--제목DB-->
						</div>

					</div>
					<div id="postBottom">
						<div class="postBottom-board">
							<div class="poatBottom">
								<!--게시글 내용-->
								<form:textarea path="n_noticecontent" />
							</div>
						</div>
					</div>

					<div class="postButton">
						<div>
							<form:button>삭제</form:button>
						</div>
					</div>
				</div>
				<div id="postContainer02"></div>
			</div>
		</form:form>
	</section>
	<!-- 푸터 -->
	<footer>
		<div class="FOOTER_TOTAL">
			<div class="F_i F_i1">
				<img src="${root }img/footer/M_LOGE.jpg">
				<p>
					<strong>대표자</strong>_박치언
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
				<img src="${root }img/footer/call.png" width="180px">
				<p>전화 052-879-1234</p>
				<p>팩스&nbsp;&nbsp;1577-6746</p>
				<p>soldesk@gmail.com</p>
			</div>
			<div class="F_i F_i4">
				<img src="${root }img/footer/open.png" width="180px">
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
		</div>
	</footer>
	<!-- 모달로그인 js -->
	<script type="text/javascript" src="${root }js/modal.js"></script>
	<script type="text/javascript" src="${root }js/page.js"></script>
</body>

</html>