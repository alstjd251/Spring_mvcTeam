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
		<div class="menu" onscroll="menuscroll()">
			<div class="menu1">
				<c:import url="/WEB-INF/views/include/header.jsp" />
			</div>
		</div>
	</header>
	<!-- 회원가입 폼 부분 -->
	<section>
		<div class="page-header" align="center">
	 		<h1>회원가입</h1>
		</div>
		<div style="margin-bottom: 240px; display: flex; flex-direction: column; align-items: center; justify-content: center;">
			<form:form class="form-horizontal" action="join_proc" modelAttribute="memberBean">
					<!-- 아이디 -->
					<div class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_id" for="inputid" class="col-sm-2 control-label">아이디*</form:label>
						<div class="col-sm-10" style="display:flex;">
							<form:input style="width:235px;" path="mem_id" class="form-control" id="inputid" placeholder="아이디" />
							<input type="button" style="margin-left:10px;" id="idcheck" onclick="idcheck()" value="중복확인"/>
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<form:errors path="mem_id" style="color:red;"/>
						</div>
					</div>
					<!-- 비밀번호 -->
					<div class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_pw" for="inputpw" class="col-sm-2 control-label">비밀번호*</form:label>
						<div class="col-sm-10">
							<form:password style="width:235px;" path="mem_pw" class="form-control" id="inputpw" placeholder="패스워드" />
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<form:errors path="mem_pw" style="color:red;"/>
						</div>
					</div>
					<!-- 이름 -->
					<div class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_name" for="inputname" class="col-sm-2 control-label">이름*</form:label>
						<div class="col-sm-10">
							<form:input style="width:235px;" path="mem_name" class="form-control" id="inputname" placeholder="이름" />
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<form:errors path="mem_name" style="color:red;"/>
						</div>
					</div>
					<!-- 주민번호 -->
					<div class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_joomin" for="inputjoomin" class="col-sm-2 control-label">주민등록번호*</form:label>
						<div class="col-sm-10" style="display:flex; align-items: center;">
							<form:input style="width:125px;" path="mem_joomin" class="form-control" id="inputjoomin" maxlength="6" placeholder="생년월일 6자리" />
							<label style="margin:0 10px"> - </label>
							<form:input style="width:35px;" path="mem_gender" class="form-control" id="inputgender" maxlength="1"/>
							<label style="margin-left: 5px;">*****</label>
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<form:errors path="mem_joomin" style="color:red;"/>
						</div>
					</div>
					<!-- 이메일 -->
					<div class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_mail" for="inputmail" class="col-sm-2 control-label">이메일*</form:label>
						<div class="col-sm-10">
							<form:input style="width:235px;" path="mem_mail" class="form-control" id="inputmail" placeholder="이메일 입력" />
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<form:errors path="mem_mail" style="color:red;"/>
						</div>
					</div>
					<!-- 연락처 -->
					<div class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_phone" for="inputphone" class="col-sm-2 control-label">연락처*</form:label>
						<div class="col-sm-10">
							<form:input style="width:235px;" path="mem_phone" class="form-control" id="inputphone" maxlength="11" placeholder="- 제외한 숫자만 입력" />
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<form:errors path="mem_phone" style="color:red;"/>
						</div>
					</div>
					<!-- 주소 -->
					<div class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_post" for="sample6_postcode" class="col-sm-2 control-label">우편번호*</form:label>
						<div class="col-sm-10" style="display:flex;">
							<form:input style="width:120px;" path="mem_post" class="form-control" id="sample6_postcode" readonly="true"/>
							<input type="button" style="margin-left:10px;" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"/>
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<form:errors path="mem_post" style="color:red;"/>
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_addr1" for="sample6_address" class="col-sm-2 control-label">주소*</form:label>
						<div class="col-sm-10">
							<form:input style="width:235px;" path="mem_addr1" class="form-control" id="sample6_address" placeholder="주소"/>
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<form:errors path="mem_addr1" style="color:red;"/>
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<form:label style="width:120px; padding-left:0;" path="mem_addr2" for="sample6_detailAddress" class="col-sm-2 control-label">상세주소*</form:label>
						<div class="col-sm-10">
							<form:input style="width:235px;" path="mem_addr2" class="form-control" id="sample6_detailAddress" placeholder="상세주소"/>
						</div>
					</div>
					<div class="form-group" style="display:flex;">
						<label style="width:120px; padding-left:0;" class="col-sm-2 control-label"> </label>
						<div class="col-sm-10">
							<form:errors path="mem_addr2" style="color:red;"/>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-1 col-sm-10">
							<form:button style="margin-left:125px;" class="btn btn-default btn-lg">회원가입</form:button>
						</div>
					</div>
			</form:form>
		</div>
	</section>
	<!-- 푸터 -->
	<footer>
		<c:import url="/WEB-INF/views/include/footer.jsp" />
	</footer>
	<script type="text/javascript" src="${root}js/n_page.js"></script>
	<script type="text/javascript" src="${root}js/zip.js"></script>
</body>
</html>