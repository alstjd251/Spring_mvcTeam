<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Sul Sure</title>
<head>
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
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
	<div class="cs-container">
		<h2>고객지원</h2>
		<div class="cs-board01">
			<div id="cs-menu">
				<li>공지사항</li>
				<li>Q&A</li>
				<li>Contact Us</li>
			</div>
			<div id="cs-backimg" style="background: url('${root}/img/boardIcon/notice.jpg') center/cover no-repeat;"></div>
		</div>
		<div id="cs-titleBox">
			<div class="page-header" align="center">
	 			<h1>Contact Us</h1>
			</div>
		</div>
		<!-- 여기에 컨텍트 어스 -->
	</div>
	<!-- 푸터 -->
	<footer>
		<c:import url="/WEB-INF/views/include/footer.jsp"/>
	</footer>
	<script type="text/javascript" src="${root }js/page.js"></script>
	
	
</body>
</html>