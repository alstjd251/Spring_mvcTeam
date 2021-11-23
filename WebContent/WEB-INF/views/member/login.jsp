<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="${root }css/board/page.css" />
<link rel="stylesheet" href="${root }css/include/n_header_footer.css" />
<link rel="stylesheet" href="${root }css/include/wave.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>Sul Sure</title>
</head>
<body>
	<!-- 헤더 -->
	<header>
		<!-- 헤더 배너광고 -->
		<!-- 헤더 메뉴 -->
		<div class="menu">
			<div class="menu1">
				<c:import url="/WEB-INF/views/include/header.jsp" />
			</div>
		</div>
	</header>
	<!-- 로그인 폼 부분 -->
	<section>
	<div class="page-header" align="center" style="margin:120px;">
	 	<h1>로그인</h1>
	</div>
	<div style="display: flex; flex-direction: column; align-items: center;">
	<c:if test="${fail == true }">
		<div style="width:420px;" class="alert alert-danger">
			<h3>로그인 실패</h3>
			<p>아이디 비밀번호를 확인해주세요</p>
		</div>
	</c:if>
	</div>
	<div style="display: flex; align-items: center; justify-content: center">
		<div style="margin-bottom: 250px; display: flex; flex-direction: column; align-items: center; justify-content: center;">
			<form:form class="form-horizontal" action="login_proc" modelAttribute="memberBean">
				<div class="idnosign" style="display: flex">
					<div class="form-group">
						<form:label path="mem_id" for="id" class="col-sm-2 control-label">ID</form:label>
						<div class="col-sm-10">
							<form:input style="width:255px;" path="mem_id" class="form-control" id="id" placeholder="아이디" />
						</div>
					</div>
				</div>
				<div class="pwsign" style="display: flex">
					<div class="form-group">
						<form:label path="mem_pw" for="inputPassword3" class="col-sm-2 control-label">PW</form:label>
						<div class="col-sm-10">
							<form:password style="width:255px;" path="mem_pw" class="form-control" id="inputPassword3" placeholder="패스워드" />
						</div>
					</div>
					</div>
					</div>
					<div class="form-group" style="margin-top:-240px;">
						<div class="col-sm-offset-1 col-sm-10">
							<form:button  style="height: 80px;" class="btn btn-default btn-lg">로그인</form:button>
						</div>
					</div>
			</form:form>
			<ol class="breadcrumb" style="position:absolute; margin:-80px 0 0 -60px">
			  <li><a href="${root }member/accountfinder">아이디 & 비밀번호 찾기</a></li>
			  <li><a href="${root }member/join">회원가입</a></li>
			</ol>
		</div>
	</section>
	<!-- 푸터 -->
	<footer>
		<c:import url="/WEB-INF/views/include/footer.jsp" />
	</footer>
	<script type="text/javascript" src="${root}js/n_page.js"></script>
</body>
</html>