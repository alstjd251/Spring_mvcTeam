<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<title>Sul Sure</title>
<script type="text/javascript">
function idSearch(){
	var mem_name = $("#name").val();
	var mem_mail = $("#mail").val();
	
	var param1 = {'mem_name': mem_name, 'mem_mail': mem_mail}
	$.ajax({
		url : '${root}member/idsearch.do',
		type : 'POST',
		data : param1,
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		dataType : 'text',
		success : function(result){
			var id = result;
			if(id == "error"){
				Swal.fire({
					icon : "warning",
					title : "아이디 찾기 결과",
				    text  : "가입된 회원정보가 없습니다.",
				});
			}else{
			Swal.fire({
				icon : "success",
				title : "아이디 찾기 결과",
			    text  : "회원님의 아이디는 "+ id +"입니다.",
			}).then(function(){
				$("#name").val("");
				$("#mail").val("");
			});
			}
		}
	})
	
}

function pwSearch(){
	var mem_name = $("#name2").val();
	var mem_id = $("#id2").val();
	var mem_mail = $("#mail2").val();
	
	var param2 = {'mem_name': mem_name, 'mem_id': mem_id, 'mem_mail': mem_mail}
	Swal.fire({
		icon : "warning",
		title : "잠시만 기다려 주세요.",
		showConfirmButton : false,
	});
	$.ajax({
		url : '${root}member/pwsearch.do',
		type : 'POST',
		data : param2,
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		dataType : 'text',
		success : function(result){
			var id = result;
			if(id == "error"){
				Swal.fire({
					icon : "warning",
					title : "오류",
				    text  : "일치하는 회원정보가 없습니다.",
				});
			}else{
				if(result == "success"){
					Swal.fire({
						icon : "success",
						title : "메일 전송 완료",
					    text  : "고객님의 메일로 비밀번호를 전송하였습니다.",
					}).then(function(){
						$("#name2").val("");
						$("#id2").val("");
						$("#mail2").val("");
						location.href="${root}member/login";
					});
				}
			}
		}
	})	
}

</script>

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
	
	<section>
	<div style="display: flex; justify-content:space-around; margin-top:100px; width:70%; margin-left:15%">
	<!-- 아이디 찾기-->
		<div id="id_search">
			<div class="page-header" align="center" style="margin-bottom:60px;">
			 	<h1><b>아이디 찾기</b></h1>
			</div>
			<div>
				<div style="margin-bottom: 240px; display: flex; flex-direction: column; align-items: center; justify-content: center;">
					<div class="idnosign" style="display: flex">
						<div class="form-group">
							<label for="name" class="col-sm-3 control-label">이름</label>
							<div class="col-sm-10">
								<input style="width:255px;" class="form-control" id="name" placeholder="이름" />
							</div>
						</div>
					</div>
					<div class="pwsign" style="display: flex">
						<div class="form-group">
							<label for="mail" class="col-sm-3 control-label">메일</label>
							<div class="col-sm-10">
								<input type="email" style="width:255px;" class="form-control" id="mail" placeholder="메일" />
							</div>
						</div>
					</div>
				</div>
				<div class="form-group" style="margin-top:-240px;display:flex; justify-content:center">
					<div class="col-sm-offset-1 col-sm-10">
						<button type="button" style="height: 60px;margin-top:10px; width:170px" class="btn btn-default btn-lg" onclick="idSearch()">아이디 찾기</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 비밀번호 찾기-->
		<div>
			<div class="page-header" align="center" style="margin-bottom:60px;">
		 		<h1><b>비밀번호 찾기</b></h1>
			</div>
			<div id="pw_search">
				<div style="margin-bottom: 240px; display: flex; flex-direction: column; align-items: center; justify-content: center;">
					<div class="idnosign" style="display: flex">
						<div class="form-group">
							<label for="name2" class="col-sm-3 control-label">이름</label>
							<div class="col-sm-10">
								<input style="width:255px;" class="form-control" id="name2" placeholder="이름" />
							</div>
						</div>
					</div>
					<div class="pwsign" style="display: flex;margin-left:13px">
						<div class="form-group">
							<label for="id2" class="col-sm-3 control-label">아이디</label>
							<div class="col-sm-10">
								<input type="text" style="width:255px;" class="form-control" id="id2" placeholder="아이디" />
							</div>
						</div>
					</div>
					<div class="pwsign" style="display: flex">
						<div class="form-group">
							<label for="mail2" class="col-sm-3 control-label">메일</label>
							<div class="col-sm-10">
								<input type="email" style="width:255px;" class="form-control" id="mail2" placeholder="메일" />
							</div>
						</div>
					</div>
				</div>
				<div class="form-group" style="margin-top:-240px;display:flex; justify-content:center">
					<div class="col-sm-offset-1 col-sm-10">
						<button type="button" style="height: 60px;margin-top:10px; width:170px" class="btn btn-default btn-lg" onclick="pwSearch()">비밀번호 찾기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- 푸터 -->
	<footer>
		<c:import url="/WEB-INF/views/include/footer.jsp" />
	</footer>
	<script type="text/javascript" src="${root}js/n_page.js"></script>
</body>
</html>