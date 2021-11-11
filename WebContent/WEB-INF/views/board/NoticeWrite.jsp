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
<link href="${root }css/postWriteCss.css" rel="stylesheet" type="text/css" />
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
	<!-- 로그인 모달 -->
	<div id="be_login_modal">
		<div class="be_login">
			<div class="be_login-screen">
				<div class="be_login-title">
					<div>
						<a class="be_close_btn">닫기</a>
					</div>
					<h1 class="modal_h">로그인</h1>
				</div>
				<div class="be_login-form">
					<div class="be_control-group">
						<input type="text" class="login-field" value="" name="mem_id"
							placeholder="아이디" id="login-name" /> <label
							class="login-field-icon fui-user" for="login-name"></label>
					</div>
					<div class="be_control-group">
						<input type="password" class="login-field" value=""
							placeholder="비밀번호" id="login-pass" name="mem_pw" /> <label
							class="login-field-icon fui-lock" for="login-pass"></label>
					</div>
					<input type="submit" class="btn btn-primary btn-large btn-block"
						value="로그인" /> <a id="id_pw_search" href="#">아이디/비밀번호 찾기</a> <a
						id="new_login" href="#">회원 가입</a> <a id="new_com_login" href="#">기업
						가입</a>
				</div>
			</div>
		</div>
		<!-- idpw찾기 -->
		<div id="be_idpwsearch"
			style="border: 1px solid black; width: 600px; height: 400px; display: none;">
			<div class="be_idpwsearch-screen">
				<div class="be_idpwsearch-title" style="display: inline">
					<div>
						<a class="be_close_btn1"
							style="position: absolute; top: 10px; right: 10px">닫기</a>
					</div>
					<h1 class="modal_h" style="text-align: center">아이디/비밀번호 찾기</h1>
				</div>
				<div class="be_idpwsearch-form"
					style="display: flex; justify-content: space-around">
					<div class="be_idpwsearch-idsearch">
						<h3 style="text-align: center">아이디 찾기</h3>
						이름 : <input type="text" class="id-search" value=""
							placeholder="이름" name="mem_name"
							style="margin-bottom: 10px; width: 200px; height: 30px" /><br />
						주민번호 : <input type="text" class="id-search" value=""
							placeholder="주민번호 앞 6자리" name="mem_joomin"
							style="margin-bottom: 20px; width: 200px; height: 30px" /><br />
						<input type="submit" value="아이디 찾기" id="idsearch"
							style="width: 200px; height: 50px" />
					</div>
					<div class="be_idpwsearch-pwsearch">
						<h3 style="text-align: center">비밀번호 찾기</h3>
						아이디 : <input type="text" class="pw-search" value=""
							placeholder="아이디 입력" name="mem_id"
							style="margin-bottom: 10px; width: 200px; height: 30px" /> <br />
						이름 : <input type="text" class="pw-search" value=""
							placeholder="이름" name="mem_name"
							style="margin-bottom: 10px; width: 200px; height: 30px" /> <br />
						주민번호 : <input type="text" class="pw-search" value=""
							placeholder="주민번호 앞 6자리" name="mem_joomin"
							style="margin-bottom: 10px; width: 200px; height: 30px" /><br />
						<input type="submit" value="비밀번호 찾기" id="pwsearch" />
					</div>
				</div>
			</div>
		</div>
		<!-- 회원가입 -->
		<div align="center" class="new_login"
			style="text-align: center; display: none">
			<div align="center"
				style="border: 2px double black; width: 500px; height: 400px; padding: 20px; background-color: bisque; text-align: center;">
				<h2>회원가입</h2>
				<table>
					<tr height="40">
						<td align="right" width="100">아이디 :</td>
						<td><input type="text" id="id" maxlength="20"
							placeholder="아이디입력" name="mem_id" /> <input type="button"
							value="ID중복확인" onclick="memCheck()" /> <input type="hidden"
							id="idchecked" value="no" /></td>
					</tr>

					<tr height="40">
						<td align="right" width="100">비밀번호 :</td>
						<td><input type="password" maxlength="20"
							placeholder="비밀번호입력" name="mem_pw" /></td>
					</tr>

					<tr height="40">
						<td align="right" width="100">이름 :</td>
						<td><input type="text" maxlength="20" placeholder="이름입력"
							name="mem_name" /></td>
					</tr>
					<tr height="40">
						<td align="right" width="100">주민번호 :</td>
						<td><input type="text" maxlength="6"
							placeholder="생년월일 6자리 000000" name="mem_joomin" /> - <input
							type="text" name="gender" maxlength="1" size="1"
							name="mem_gender" /> ******</td>
					</tr>

					<tr height="40">
						<td align="right" width="100">이메일 :</td>
						<td><input type="email" placeholder="이메일 입력" name="mem_mail" />
						</td>
					</tr>

					<tr height="40">
						<td align="right" width="100">주소 :</td>
						<td><input type="text" id="sample6_postcode"
							placeholder="우편번호" name="mem_post" /> <input type="button"
							onclick="sample6_execDaumPostcode()" value="우편번호 찾기" /><br /> <input
							type="text" id="sample6_address" placeholder="주소"
							name="mem_addr1" /><br /> <input type="text"
							id="sample6_detailAddress" placeholder="상세주소" name="mem_addr2" />
							<input type="text" id="sample6_extraAddress" placeholder="참고항목"
							name="mem_grade" /></td>
					</tr>
					<tr height="40" style="text-align: center">
						<td colspan="2"><input type="button" value="로그인하기" /> <input
							type="reset" value="다시 쓰기" /> <input type="submit"
							onclick="return checkform()" value="가입완료" /></td>
					</tr>
				</table>
			</div>
		</div>
		<!-- 기업가입 -->
		<div class="new_com_login" style="display: none">
			<div
				style="border: 2px double black; width: 500px; height: 500px; padding: 20px; background-color: bisque; text-align: center;">
				<h2>기업가입</h2>
				<table>
					<tr height="40">
						<td align="right" width="100">사업자 번호 :</td>
						<td><input type="text" name="partners_code" id="p_code"
							maxlength="10" placeholder="사업자 번호 입력 -없이 입력하세요" /></td>
					</tr>
					<tr height="40">
						<td align="right" width="100">대표자 이름 :</td>
						<td><input type="text" name="partners_name" id="p_name"
							maxlength="20" placeholder="대표자 이름 입력" /></td>
					</tr>
					<tr height="40">
						<td align="right" width="100">대표자 휴대폰 번호 :</td>
						<td><input type="tel" name="partners_tel" id="p_tel"
							maxlength="20" placeholder="대표자 휴대폰 입력" /></td>
					</tr>
					<tr height="40">
						<td align="right" width="100">대표자 이메일 :</td>
						<td><input type="tel" name="partners_mail" id="p_mail"
							maxlength="20" placeholder="대표자 이메일 입력" /></td>
					</tr>
					<tr height="40">
						<td align="right" width="100">양조장 이름 :</td>
						<td><input type="text" name="brew_name" id="b_name"
							maxlength="20" placeholder="양조장 이름 입력" /></td>
					</tr>
					<tr height="40">
						<td align="right" width="100">주소 :</td>
						<td><input type="text" id="sample6_postcode"
							placeholder="우편번호" /> <input type="button"
							onclick="sample6_execDaumPostcode()" value="우편번호 찾기" /><br /> <input
							type="text" id="sample6_address" placeholder="주소" /><br /> <input
							type="text" id="sample6_detailAddress" placeholder="상세주소" /> <input
							type="text" id="sample6_extraAddress" placeholder="참고항목" /></td>
					</tr>
					<tr height="40">
						<td align="right" width="100">양조장 연락처 :</td>
						<td><input type="tel" name="brew_tel" id="b_tel"
							maxlength="20" placeholder="양조장 연락처 입력" /></td>
					</tr>
					<tr height="40" style="text-align: center">
						<td colspan="2"><input type="reset" value="다시 쓰기" /> <input
							type="submit" onclick="return checkform()" value="가입완료" /></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
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
							<a href="${root}member/logout_proc" id="logout_button">로그아웃</a>
						</c:otherwise>
					</c:choose>
				</div>
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
								<div>
									<form:label path="n_noticetitle">글제목 : <form:input path="n_noticetitle"/></form:label>
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