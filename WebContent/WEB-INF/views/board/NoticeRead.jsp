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
<link href="${root }css/include/n_header_footer.css" rel="stylesheet" type="text/css" />
<link href="${root }css/include/wave.css" rel="stylesheet" type="text/css" />
<link href="${root }css/board/postReadCss.css" rel="stylesheet" type="text/css" />
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
		<!-- 헤더 메뉴 -->
		<div class="menu">
			<div class="menu1">
				<c:import url="/WEB-INF/views/include/header.jsp"/>
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
							<h2><b>공지사항</b></h2>
						</div>
						<div>
							<a href="${root }board/NoticeList" id="n_read_list_button">목록</a>
							<a href="${root }board/NoticeModify?n_noticenum=${noticeBean.getN_noticenum()}" id="n_read_modify_button">수정</a>
						</div>
					</div>
					<div id="postMiddle">
						<div class="postMiddle-board01">
							<div class="postTitle">
								<div id="n_title_text">
									<b>글 제목</b> &nbsp; ${noticeBean.getN_noticetitle()}
								</div>
								<div class="postMiddle-board02">
									<div>
										<img src="${root }img/boardIcon/eye_new.png">${noticeBean.n_noticecnt }
										<!--조회수DB-->
										<img src="${root }img/boardIcon/sub_date_new.png">${noticeBean.n_noticedate }
										<!-- 등록일DB -->
									</div>
								</div>
							</div>
							<!--제목DB-->
						</div>

					</div>
					<div id="postBottom">
						<div class="postBottom-board">
							<div class="postBottom">
								<!--게시글 내용-->
								<form:textarea path="n_noticecontent" cols="1000" rows="40" readonly="true"/>
							</div>
						</div>
					</div>

					<div class="postButton">
						<div>
							<form:button id="n_read_delete_button">삭제</form:button>
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
		<c:import url="/WEB-INF/views/include/footer.jsp"/>
		</div>
	</footer>
	<script type="text/javascript" src="${root }js/page.js"></script>
</body>

</html>