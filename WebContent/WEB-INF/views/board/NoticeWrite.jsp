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
<link href="${root }css/include/wave.css" rel="stylesheet" type="text/css" />
<link href="${root }css/board/postWriteCss.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>Sul Sure</title>
<script>
	var titleCheck = "fail";
	var contentCheck = "fail";
	
	function titlechecking(){
		var title = $("#n_noticetitle").val();
		
		if(title == ""){
			titleCheck = "fail";
		}
		else{
			titleCheck = "success";
		}
	}
	
	function contentchecking(){
		var content = $("#n_noticecontent").val();
		
		if(content == ""){
			contentCheck = "fail";
		}
		else{
			contentCheck = "success";
		}
	}
	
	function regBut(){
		if(titleCheck == "success" && contentCheck == "success"){
			$("#noticeForm").submit();
		}
		else if(titleCheck == "fail" && contentCheck == "fail"){
			Swal.fire({
				icon: 'warning',
				title : "제목과 내용이 작성되지 않았습니다.",
			    text  : "다시 입력해주세요.",
			});
		}
		else if(titleCheck == "fail"){
			Swal.fire({
				icon: 'warning',
				title : "제목이 작성되지 않았습니다.",
			    text  : "다시 입력해주세요.",
			});
		}
		else if(contentCheck == "fail"){
			Swal.fire({
				icon: 'warning',
				title : "내용이 작성되지 않았습니다.",
			    text  : "다시 입력해주세요.",
			});
		}
	}
</script>
</head>

<body>
	<!-- 헤더 -->
	<header>
		<!-- 헤더 메뉴 -->
		<div class="menu">
			<div class="menu1">
				<c:import url="/WEB-INF/views/include/header.jsp"/>
			</div>
		</div>
	</header>
	<!--*** 게시글 섹션 ***-->
	<section id="post">
		<form:form id="noticeForm" action="${root }board/NoticeProc" method="post" modelAttribute="noticeBean">
			<form:hidden path="n_noticenum" />
			<div>
				<div id="postContainer01">
					<div class="postTop">
						<div class="postTop-board01">
							<h2><b>공지사항</b></h2>
						</div>
						<div>
							<a href="${root }board/NoticeList" id="list_button">목록</a>
						</div>
					</div>
					<hr>
					<div id="postMiddle">
						<div class="postMiddle-board01">
							<div class="postTitle">
								<b>글 제목</b> &nbsp;
								<div style="width:95%;">
									<form:input path="n_noticetitle" id="n_noticetitle" placeholder="글 제목을 입력하세요." onkeyup="titlechecking()"/>
								</div>
							</div>
							<!--제목DB-->
						</div>

					</div>
					<div id="postBottom">
						<div class="postBottom-board">
							<div class="postBottom">
								<!--게시글 내용-->
								<form:textarea path="n_noticecontent" id="n_noticecontent" cols="1000" rows="40" placeholder="글 내용을 입력하세요." onkeyup="contentchecking()"/>
							</div>
						</div>
					</div>

					<div class="postButton">
						<div>
							<input type="button" id="notice_write_button" value="작성" onclick="regBut()">
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