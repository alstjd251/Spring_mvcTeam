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
<link rel="stylesheet" href="${root }css/include/n_header_footer.css" />
<link href="${root }css/board/postWriteCss.css" rel="stylesheet" type="text/css" />
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
		<!-- 헤더 메뉴 -->
		<div class="menu" onscroll="menuscroll()">
			<div class="menu1">
				<c:import url="/WEB-INF/views/include/header.jsp"/>
			</div>
		</div>
	</header>
	<!--*** 게시글 섹션 ***-->
	<section id="post">
		<form:form action="${root }board/NoticeProc" method="post" modelAttribute="noticeBean">
			<form:hidden path="n_noticenum" />
			<div>
				<div id="postContainer01">
					<div class="postTop">
						<div class="postTop-board01">
							<h2>공지사항</h2>
						</div>
						<div>
							<a href="${root }board/NoticeList">목록</a>
						</div>
					</div>
					<div id="postMiddle">
						<div class="postMiddle-board01">
							<div class="postTitle">
								글제목 : &nbsp;
								<div style="width:95%;">
									<form:input path="n_noticetitle" style = "width: 100%; border: none;"/>
								</div>
							</div>
							<!--제목DB-->
						</div>

					</div>
					<div id="postBottom">
						<div class="postBottom-board">
							<div class="postBottom">
								<!--게시글 내용-->
								<form:textarea path="n_noticecontent" cols="1000" rows="40"/>
							</div>
						</div>
					</div>

					<div class="postButton">
						<div>
							<form:button>작성</form:button>
						</div>
					</div>
				</div>
				<div id="postContainer02"></div>
			</div>
		</form:form>
	</section>
	<!-- 푸터 -->
	<footer>
		<c:import url="/WEB-INF/views/include/footer.jsp"/>
	</footer>
	<script type="text/javascript" src="${root }js/n_page.js"></script>
</body>

</html>