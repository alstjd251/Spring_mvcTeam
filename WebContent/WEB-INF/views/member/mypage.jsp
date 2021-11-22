<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sul Sure</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="${root }css/mypageCss.css" />
<link rel="stylesheet" href="${root }css/include/wave.css" />
<script src="${root }js/zip.js"></script>
<script src="${root }js/mypage.js"></script>
<script src="${root }js/n_page.js"></script>
<link href="${root }css/include/n_header_footer.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function pwCheck(){
	var mem_pw = $("#mem_pw2").val();
	var mem_num = $("#mem_num").val();
	if(mem_pw == ""){
		Swal.fire({
			icon: 'warning',
			title : "입력 오류",
		    text  : "비밀번호를 입력해주세요.",
		});
	}else{
		var param1 = {'mem_num': mem_num, 'mem_pw': mem_pw}
		$.ajax({
			url : '${root}member/pwcheck.do',
			type : 'POST',
			data : param1,
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			dataType : 'text',
			success : function(result){
				if(result.trim() == 'true'){
					Swal.fire({
						icon: 'success',
						title : "변경 완료",
					    text  : "회원 정보가 변경 되었습니다.",
					}).then(function(){
						$("#memModifyForm").submit();
					});
				}else{
					Swal.fire({
						icon: 'warning',
						title : "비밀번호 오류",
					    text  : "비밀번호가 일치하지 않습니다.",
					}).then(function(){
						$("#mem_pw").val("");
					});
				}
			}
		})
	}
}

function delMember(){
	var mem_pw2 = $("#mem_pw").val();
	var mem_num2 = $("#del_mem_num").val();
	if(mem_pw == ""){
		Swal.fire({
			icon: 'warning',
			title : "입력 오류",
		    text  : "비밀번호를 입력해주세요.",
		});
	}else{
		var param2 = {'mem_num': mem_num2, 'mem_pw': mem_pw2}
		$.ajax({
			url : '${root}member/pwcheck.do',
			type : 'POST',
			data : param1,
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			dataType : 'text',
			success : function(result){
				if(result.trim() == 'true'){
					Swal.fire({
						icon: 'success',
						title : "탈퇴 완료",
					    text  : "회원 탈퇴가 정상적으로 완료되었습니다.",
					}).then(function(){
						$("#memModifyForm").submit();
					});
				}else{
					Swal.fire({
						icon: 'warning',
						title : "비밀번호 오류",
					    text  : "비밀번호가 일치하지 않습니다.",
					}).then(function(){
						$("#mem_pw").val("");
					});
				}
			}
		})
	}
}

function partnersReg(){
	var p_code = $("#partners_code").val();
	
	$.ajax({
		url : '${root}member/pcodeCheck.do',
		type : 'POST',
		data : {'p_code' : p_code},
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		dataType : 'text',
		success : function(result){
			if(result = 'success'){
				Swal.fire({
					icon: 'success',
					title : "신청 완료",
				    text  : "성공적으로 신청이 완료 되었습니다.",
				}).then(function(){
					$("#partnersForm").submit();
				});
			}else{
				Swal.fire({
					icon: 'warning',
					title : "등록 오류",
				    text  : "이미 등록된 사업자등록번호 입니다.",
				}).then(function(){
					$("#partners_code").val("");
				});
			} 
		}
	});
}
</script>
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
				<div id="name_text">
					<h4>${loginBean.mem_name } 님의 MyPage</h4>
				</div>
				<ul class="tabs">
					<li class="tab_link current" data-tab="modify">회원정보 수정</li>
					<li class="tab_link" data-tab="res_info">예약정보 조회</li>
					<c:if test="${loginBean.mem_grade == 1 }">
						<li class="tab_link" data-tab="partners">기업회원 신청</li>
					</c:if>
					<li class="tab_link" data-tab="delete">탈퇴</li>
				</ul>
			</div>
			<div id="mypage_con2">
				<div id="modify" class="tab_content current">
					<!--유효성검사 해야함-->
					<h3><b>회원정보 수정</b></h3>
					<form:form action="${root }member/memberModify" method="post" modelAttribute="memberBean" id="memModifyForm">
					<form:hidden path="mem_num" id="mem_num"/>
						<table class="table table-bordered">
							<tr>
								<th>아이디</th>
								<td><form:input path="mem_id" id="mem_id" readonly="true"/></td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td>
									<form:password path="mem_pw" id="mem_pw" value=""/>
									<input type="button" class="btn btn-danger" id="pw_bt" value="비밀번호 변경하기" onclick="window.open('${root}member/pwChange?mem_num=${loginBean.mem_num }','비밀번호변경','scrollbars=yes width=700 height=500 left=100 top=50')">
								</td>
							</tr>
							<!-- <tr>
								<th>비밀번호 확인</th>
								<td>
									<input type="text" id="mem_pw2" disabled>
								</td>
							</tr> -->
							<tr>
								<th>이름</th>
								<td><form:input path="mem_name" id="mem_name" readonly="true"/></td>
							</tr>
							<tr>
								<th>주민번호</th>
								<td><form:input maxlength="6" placeholder="생년월일 6자리" path="mem_joomin" id="mem_joomin" readonly="true"/>
									- <form:input path="mem_gender" id="mem_gender" maxlength="1" size="1" readonly="true"/> ******</td>
							</tr>

							<tr>
								<th>이메일</th>
								<td>
									<form:input type="email" path="mem_mail" id="mem_mail"/>
									<form:errors path="mem_mail"/>
								</td>
							</tr>
							<tr>
								<th>연락처</th>
								<td>
									<form:input type="tel" placeholder="연락처 - 제외" path="mem_phone" id="mem_phone"/>
									<form:errors path="mem_phone"/>
								</td>
							</tr>
							<tr>
								<th>주소</th>
								<td>
									<form:input id="sample6_postcode" placeholder="우편번호" path="mem_post" readonly="true"/> 
									<input type="button" class="btn btn-primary" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br />
									<form:errors path="mem_post"/>
									<form:input id="sample6_address" placeholder="주소" path="mem_addr1"/><br />
									<form:errors path="mem_addr1"/>
									<form:input id="sample6_detailAddress" placeholder="상세주소" path="mem_addr2"/>
									<form:errors path="mem_addr2"/>
								</td>
							</tr>
						</table>
						<input type="button" class="btn btn-default" id="modify_button" value="수정" onclick="pwCheck()"/>
					</form:form>
				</div>
				<div id="res_info" class="tab_content">
					<h3><b>예약정보 조회</b></h3>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th><div>예약번호</div></th>
									<th><div>코스</div></th>
									<th><div>금액</div></th>
									<th><div>예약일자</div></th>
									<th><div>예약자명</div></th>
									<th><div>연락처</div></th>
									<th><div>인원</div></th>
									<th><div>결제일자</div></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="obj" items="${reservationBean }">
								<tr style="text-align:center;">
									<td><div><a id="res_num" onclick="window.open('${root}member/mypage_reservation?res_num=${obj.res_num }','예약조회','scrollbars=yes width=500 height=400 left=100 top=50')">${obj.res_num }</a></div></td>
									<td><div>${obj.course_names }</div></td>
									<td><div>${obj.course_price }</div></td>
									<td><div>${obj.res_startdate }</div></td>
									<td><div>${obj.loginName }</div></td>
									<td><div>${obj.loginPhone }</div></td>
									<td><div>${obj.res_personnel }</div></td>
									<td><div>${obj.res_paydate }</div></td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
				</div>
				<div id="partners" class="tab_content">
					<!--유효성검사 해야함-->

					<h3><b>기업회원 신청</b></h3>
					<form:form method="post" action="partnerRequest_proc" modelAttribute="partnerBean" id="partnersForm">
					<form:hidden path="partners_mnum" value="${loginBean.mem_num }" />
						<table class="table table-bordered">
							<tr>
								<th>업체명</th>
								<td><form:input path="partners_brewery_name" id="partners_brewery_name"/></td>
							</tr>
							<tr>
								<th>사업자등록번호</th>
								<td><form:input type="text" maxlength="10" path="partners_code" id="partners_code"/></td>
							</tr>
							<tr>
								<th>대표자성명</th>
								<td><form:input type="text" path="partners_name" id="partners_name"/></td>
							</tr>
							<tr>
								<th>대표자번호</th>
								<td><form:input type="tel" path="partners_tel" maxlength="11" id="partners_tel"/></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td><form:input type="email" path="partners_mail" id="partners_mail"/></td>
							</tr>
							<tr>
								<th>사업장주소</th>
								<td>
									<form:input type="text" id="partner_postcode" placeholder="우편번호" path="partners_brewery_post" readonly="true"/>
									<input type="button" onclick="partner_PostCode()" value="우편번호 찾기"><br />
									<form:input type="text" id="partner_address" placeholder="주소" path="partners_brewery_addr1"/><br />
									<form:input type="text" id="partner_detailAddress" placeholder="상세주소" path="partners_brewery_addr2"/>
								</td>
							</tr>
						</table>

						<input type="button" class="btn btn-default" onclick="partnersReg()" value="신청"/>
					</form:form>
				</div>
				<div id="delete" class="tab_content">
					<h3><b>정말 탈퇴하시겠습니까?</b></h3>
					<form:form action="${root }member/deleteMember" modelAttribute="memberBean" id="deleteMember">
						<form:hidden path="mem_num" id="del_mem_num"/>
						<div><div style="width:max-content;">비밀번호</div></div><form:password path="mem_pw" id="mem_pw2" value=""/>
						<input class="btn btn-default" type="button" id="delete_button" value="탈퇴" onclick="delMember()"/>
					</form:form>
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