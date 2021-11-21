<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="${root }css/partners.css" />
<link rel="stylesheet" href="${root }css/include/wave.css" />
<link rel="stylesheet" href="${root }css/include/n_header_footer.css" />
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
<script src="${root }js/zip.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<script src="${root }js/mypage.js"></script>
<title>Sul sure</title>
</head>
<body>
	<!-- 헤더 -->
	<header>
		<!-- 헤더 메뉴 -->
		<div class="menu">
			<div class="menu1">
				<c:import url="/WEB-INF/views/include/header.jsp" />
			</div>
		</div>
	</header>
	<section>
	<div id="mypage">
            <div id="mypage_con1">
                <ul class="tabs">
                    <li class="tab_link current" data-tab="modify">회원정보 수정</li>
                    <li class="tab_link" data-tab="partner_modify">기업정보 수정</li>
                    <li class="tab_link" data-tab="res_info">예약정보 조회</li>
                    <li class="tab_link" data-tab="delete">탈퇴</li>
                </ul>
            </div>
            <div id="mypage_con2">
                <div id="modify" class="tab_content current">
                    <!--유효성검사 해야함-->
                    <h3>회원정보 수정</h3>
                    <form:form method="post" modelAttribute="memberBean">
                        <table class="table table-bordered">
                            <tr>
                                <th>아이디</th>
                                <td><input type="text" id="mem_id"></td>
                            </tr>
                            <tr>
                                <th>비밀번호</th>
                                <td><input type="text" id="mem_pw"> <input type="button" class="btn btn-danger"
                                        id="pw_bt" value="비밀번호 변경하기" onclick="setDisable()"></td>
                            </tr>
                            <tr>
                                <th>비밀번호 확인</th>
                                <td><input type="text" id="mem_pw2" disabled></td>
                            </tr>
                            <tr>
                                <th>이름</th>
                                <td><input type="text" id="mem_name"></td>
                            </tr>
                            <tr>
                                <td>주민번호</td>
                                <td><input type="text" maxlength="6" placeholder="생년월일 6자리 000000" id="mem_joomin"> -
                                    <input type="text" id="mem_gender" maxlength="1" size="1">
                                    ******
                                </td>
                            </tr>

                            <tr>
                                <td>이메일</td>
                                <td><input type="email" placeholder="이메일 입력" id="mem_mail">
                                </td>
                            </tr>
                            <tr>
                                <td>연락처</td>
                                <td><input type="tel" placeholder="연락처 - 제외" id="mem_phone">
                                </td>
                            </tr>
                            <tr>
                                <td>주소</td>
                                <td><input type="text" id="sample6_postcode" placeholder="우편번호" path="mem_post"> <input
                                        type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br /> <input
                                        type="text" id="sample6_address" placeholder="주소" path="mem_addr1"><br />
                                    <input type="text" id="sample6_detailAddress" placeholder="상세주소" path="mem_addr2">
                                </td>
                            </tr>
                        </table>
                        <input class="btn btn-default" type="button" value="수정">
                    </form:form>
                </div>
                <div id="partner_modify" class="tab_content">
                    <!--유효성검사 해야함-->
                    <h3>기업정보 수정</h3>
                    <form:form method="post">
                        <table class="table table-bordered">
                            <tr>
                                <th>업체명</th>
                                <td><input type="text" id="brew_name"></td>
                            </tr>
                            <tr>
                                <th>사업자등록번호</th>
                                <td><input type="text" id="partners_code"></td>
                            </tr>
                            <tr>
                                <th>대표자성명</th>
                                <td><input type="text" id="partners_name"></td>
                            </tr>
                            <tr>
                                <th>회사대표번호</th>
                                <td><input type="text" id="partners_tel"></td>
                            </tr>
                            <tr>
                                <th>이메일</th>
                                <td><input type="text" id="partners_mail"></td>
                            </tr>
                            <tr>
                                <th>사업장주소</th>
                                <td><input type="text" id="sample6_postcode" placeholder="우편번호" path="mem_post"> <input
                                        type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br /> <input
                                        type="text" id="sample6_address" placeholder="주소" path="mem_addr1"><br />
                                    <input type="text" id="sample6_detailAddress" placeholder="상세주소" path="mem_addr2">
                                </td>
                            </tr>
                        </table>
                        <input class="btn btn-default" type="button" value="수정">
                    </form:form>
                </div>
                <div id="res_info" class="tab_content">
                    <h3>예약정보 조회</h3>
                    <form name="serach-form" autocomplete="off">
                        <div>
                            <input type="text" id="keyword" value="">
                            <button class="btn btn-default" type="button" onclick="searchList()">검색</button>
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>예약일자</th>
                                        <th>예약번호</th>
                                        <th>예약자명</th>
                                        <th>연락처</th>
                                        <th>인원</th>
                                        <th>결제일자</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><input type="text" id="res_startdate"></td>
                                        <td><input type="text" id="res_num"></td>
                                        <td><input type="text" id="mem_name"></td>
                                        <td><input type="text" id="mem_phone"></td>
                                        <td><input type="text" id="res_personnel"></td>
                                        <td><input type="text" id="res_paydate"></td>
                                        <td><input type="button" class="btn btn-danger" value="취소"></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="text-center">
                                <ul class="pagination"> <!--하단에 숫자버튼 (다음페이지, 이전페이지)-->
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                </ul>
                            </div>
                        </div>
                    </form>
                </div>
                <div id="delete" class="tab_content">
                    <h2>정말 탈퇴하시겠습니까?</h2>
                    <form>
                        비밀번호 <input type="text" path="mem_pw" id="mem_pw">
                        <input class="btn btn-default" type="button" id="delete_button" value="탈퇴">
                    </form>
                </div>
            </div>
        </div>
        </div>
	</section>
	<!-- 푸터 -->
	<footer>
		<c:import url="/WEB-INF/views/include/footer.jsp" />
	</footer>
	<script type="text/javascript" src="${root }js/n_page.js"></script>
</body>
</html>