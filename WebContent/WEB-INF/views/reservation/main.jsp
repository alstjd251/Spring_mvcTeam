<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Sul Sure</title>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="${root }css/reservationCss.css" />
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="${root }js/zip.js"></script>
<link href="${root }css/include/n_header_footer.css" rel="stylesheet" type="text/css" />

<style type="text/css">
.table > tbody > tr > td {
	vertical-align: middle;	
}
#res_button{
	margin-top: -10px;
}
</style>

<script type="text/javascript">
	var price = 0;
	function selected() {
		var num = $("#res_subcategory").val();
		switch (num) {
		case "-1":
			price = 0;
			$("#res_course_img").attr("src","${root}img/reservation/backimg/courseimg.png");
			break;
		case "1":
			price = ${getCourseIdx.get(0).course_price};
			$("#res_course_img").attr("src","${root}img/reservation/backimg/courseimg1.png");
			break;
		case "2":
			price = ${getCourseIdx.get(1).course_price};
			$("#res_course_img").attr("src","${root}img/reservation/backimg/courseimg2.png");
			break;
		case "3":
			price = ${getCourseIdx.get(2).course_price};
			$("#res_course_img").attr("src","${root}img/reservation/backimg/courseimg3.png");
			break;
		case "4":
			price = ${getCourseIdx.get(3).course_price};
			$("#res_course_img").attr("src","${root}img/reservation/backimg/courseimg4.png");
			break;
		case "5":
			price = ${getCourseIdx.get(4).course_price};
			$("#res_course_img").attr("src","${root}img/reservation/backimg/courseimg5.png");
			break;
		case "6":
			price = ${getCourseIdx.get(5).course_price};
			$("#res_course_img").attr("src","${root}img/reservation/backimg/courseimg6.png");
			break;
		}
		document.getElementById("res_price").innerHTML = price;
	}

	function resSelect() {
		var course_sel = $("#res_subcategory").val();

		if (course_sel == -1) {
			Swal.fire({
				title : "선택 오류",
				text : "코스를 선택해주세요.",
			}).then(function() {
				$("#res_subcategory").focus();
			});
			n
		}
		var cnum = $("#res_subcategory").val();
		$("#course_num").val(cnum);
		switch (cnum) {
		case "1":
			$("#c_name").html("${getCourseIdx.get(0).course_names}");
			break;
		case "2":
			$("#c_name").html("${getCourseIdx.get(1).course_names}");
			break;
		case "3":
			$("#c_name").html("${getCourseIdx.get(2).course_names}");
			break;
		case "4":
			$("#c_name").html("${getCourseIdx.get(3).course_names}");
			break;
		case "5":
			$("#c_name").html("${getCourseIdx.get(4).course_names}");
			break;
		case "6":
			$("#c_name").html("${getCourseIdx.get(5).course_names}");
			break;

		}
		var d = document.getElementById("res_date").value;
		var p = document.getElementById("res_personnel").innerHTML;
		document.getElementById("res_personnel2").value = p;
		document.getElementById("p_price").value = p * price;
		document.getElementById("startDate").value = d;

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
    <section style="margin-bottom: 40px;">
          <!-- 고정이미지 -->
        <div class="mainNotice-container01" style="background-image: url(${root}img/reservation/backimg/breweryMain.png)">
            <div class="brewery-banner">예약</div>
            <p>여행 내내 운전하느라 술을 즐기지 못한 <span style="color: rgb(248, 15, 15);">애주가</span>를
				위한 완벽한 코스</p>
        </div>
		<div id="reservation">
			<!--유효성검사 해야함-->
			 <div id="res_con1">
				<select id="res_subcategory" onchange="selected()"
					style="background: url(${root}img/reservation/icon/bg_select.png) no-repeat right 13px center;">
					<option value="-1">코스를 선택하세요.</option>
					<c:forEach var="obj" items="${getCourseIdx }">
						<option value="${obj.course_num }">${obj.course_names }</option>
					</c:forEach>
				</select> <input type="date" id="res_date">
				<div id="res_perdiv1">
					<div id="res_perdiv2">
						<b style="font-size: 18px; margin-top: 10px;">인원</b>
						<p id="minus" onclick="minus()">-</p>
						<p id="res_personnel">1</p>
						<p id="plus" onclick="plus()">+</p>
						<img src="${root }img/reservation/icon/won.png" id="res_priceimg2" />
						<!-- res_priceimg로 두개다 주니까 위치가 안예뻐서 이름 변경해서 css 따로 줌 -->
						 <span style="font-size: 20px" id="res_price"></span> <input
							type="button" id="res_ch" onclick="resSelect()" value="선택">

					</div>
				</div>
			</div>
			<div id="res_course"><img id="res_course_img" src="${root }img/reservation/backimg/courseimg.png" width="100%" height="100%"/> </div>
			<form:form action="${root }reservation/reserve"
				modelAttribute="reservationBean">
				<div id="res_con2">
					<div id="res_info">
						<table class="table" id="table1">
							<tr>
								<!-- 예약코스(선택한 코스), 예약일자(선택한 일자), 예약자 정보(이름,연락처,이메일) 불러와야함! -->
								<th>예약코스</th>
								<td><span id="c_name"></span></td>
								<form:hidden path="res_coursenum" id="course_num" />
							</tr>
							<tr>
								<th>예약일자</th>
								<td><form:input type="date" path="res_startdate"
										id="startDate" readonly="true" /></td>
							</tr>
						</table>
						<h4>예약자 정보</h4>
						<form:hidden path="res_mnum" value="${loginBean.mem_num }" />
						<table class="table" id="table2">
							<tr>
								<th>이름</th>
								<td><input type="text" id="mem_name" readonly="readonly"
									value="${loginBean.mem_name }"></td>
								<th>연락처</th>
								<td><input type="tel" id="mem_phone" readonly="readonly"
									value="${loginBean.mem_phone }"></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td colspan="3"><input type="email" id="mem_mail"
									readonly="readonly" value="${loginBean.mem_mail }"></td>
							</tr>
							<tr>
								<td colspan="4"><b>요청사항은 02-123-4567로 연락주세요.</b></td>
							</tr>
						</table>
					</div>
					<div id="res_right">
						<div id="res_gg">
							<div id="res_gggg">
								<li><a href="#"><img src="${root }img/ad/gg2.png"
										class="pimg1"></a></li>
								<li><a href="#"><img src="${root }img/ad/gg3.jpg"
										class="pimg2"></a></li>
								<li><a href="#"><img src="${root }img/ad/gg4.jpg"
										class="pimg3"></a></li>
								<li><a href="#"><img src="${root }img/ad/gg5.png"
										class="pimg4"></a></li>
							</div>
						</div>
						<div id="res_perinfo">
							<h4>인원정보</h4>
							<table class="table" id="table3">
								<tr>
									<th>인원</th>
									<td><form:input path="res_personnel" id="res_personnel2"
											readonly="readonly" /></td>
								</tr>
								<tr>
									<th>￦</th>
									<td><input type="text" id="p_price" readonly="readonly"></td>
								</tr>
							</table>
							<input type="button" id="res_button" value="예약">
						</div>
					</div>
				</div>
			</form:form>
		</div>
	</section>
	<!-- 푸터 -->
	<footer>
		<c:import url="/WEB-INF/views/include/footer.jsp" />
	</footer>
	<script type="text/javascript" src="${root }js/n_page.js"></script>
	<script type="text/javascript" src="${root }js/reservation.js"></script>
</body>
</html>