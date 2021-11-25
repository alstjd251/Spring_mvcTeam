<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sul Sure</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${root }css/include/n_header_footer.css" />
    <link rel="stylesheet" href="${root }css/include/wave.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=bf753863db3df43fe525ee9ef718c944"></script>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
    />
    <title>Sul sure</title>
    <script type="text/javascript">
	$(window).ready( function() {
		var courseNam = $("#courseNam").val();
		switch(courseNam) {
			case "Seoul":
				$("#myTab li:first-child a").tab('show');
			break;
			case "Gyunggi":
				$("#myTab li:nth-child(2) a").tab('show');
			break;
			case "Choongcheong":
				$("#myTab li:nth-child(3) a").tab('show');
			break;
			case "Jeonla":
				$("#myTab li:nth-child(4) a").tab('show');
			break;
			case "Gyungbook":
				$("#myTab li:nth-child(5) a").tab('show');
			break;
			case "Gyungnam":
				$("#myTab li:last-child a").tab('show');
			break;
		}
		document.cookie = "crossCookie=bar; SameSite=None; Secure";
	});
	function gg() {
		// 경기도
		var gg_cose1 = new kakao.maps.LatLng(37.48046381265308, 126.98317932931961);
	    var gg_cose2 = new kakao.maps.LatLng(36.97125147009303, 126.87366355487707);
	    var gg_cose3 = new kakao.maps.LatLng(37.25743703925287, 126.58231542190053);
	    	gg_map.setCenter(gg_cose1);
			gg_map2.setCenter(gg_cose2);
			gg_map3.setCenter(gg_cose3);
			gg_map.relayout();
			gg_map2.relayout();
			gg_map3.relayout();
			// 충청
			var cc_cose1 = new kakao.maps.LatLng(36.126484390664565, 127.74438125484708);
		     var cc_cose2 = new kakao.maps.LatLng(36.19235151069039, 127.93682499532838);
		     var cc_cose3 = new kakao.maps.LatLng(36.162822141115775, 127.78637386649156);
		     cc_map.setCenter(cc_cose1);
		     cc_map2.setCenter(cc_cose2);
		     cc_map3.setCenter(cc_cose3);
		     cc_map.relayout();
		     cc_map2.relayout();
		     cc_map3.relayout();
		     //경북
		     var gb_cose1 = new kakao.maps.LatLng(36.549756044738544, 128.70885076835506);
		     var gb_cose2 = new kakao.maps.LatLng(36.77233886049045, 128.3140550260342);
		     var gb_cose3 = new kakao.maps.LatLng(36.43729290311423, 128.72301776650133);
		     gb_map.setCenter(gb_cose1);
		     gb_map2.setCenter(gb_cose2);
		     gb_map3.setCenter(gb_cose3);
		     gb_map.relayout();
		     gb_map2.relayout();
		     gb_map3.relayout();
		     // 경남
		     var gn_cose1 = new kakao.maps.LatLng(35.58577153276394, 129.0974782529786);
		     var gn_cose2 = new kakao.maps.LatLng(35.4701051467703, 127.67172748181025);
		     gn_map.setCenter(gn_cose1);
		     gn_map2.setCenter(gn_cose2);
		     gn_map.relayout();
		     gn_map2.relayout();
		     //전라
		     var jl_cose1 = new kakao.maps.LatLng(35.34530836228015, 126.81086249827507);
		     var jl_cose2 = new kakao.maps.LatLng(35.36652696049865, 126.98533951267824);
		     jl_map.setCenter(jl_cose1);
		     jl_map2.setCenter(jl_cose2);
		     jl_map.relayout();
		     jl_map2.relayout();

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
      <!-- 섹션 -->
      <section style="margin-bottom: 40px;">
          <!-- 고정이미지 -->
        <div class="mainNotice-container01" style="padding: 10%; background: linear-gradient(
      0deg,
      rgba(255, 255, 255, 0.4),
      rgba(255, 255, 255, 0.4)
    ),
    url(${root}img/courseIntroduce/breweryBanner.jpg)
      center/cover no-repeat;
  background-size: cover;
  color: snow;
  text-align: center;
  text-shadow: 2px 2px 2px gray;">
            <div class="brewery-banner" style="  border-bottom: solid 2px silver;
            font-size: 35pt;
            padding: 10px;">Drink your Korea!</div>
            <p>#Cheers #Soju #Wine #Makgeolli</p>
        </div>
        <!-- 탭메뉴 -->
        <input type="hidden" value="${param.courseNam }" id="courseNam">
        <div role="tabpanel" style="height: 100%;">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" id="myTab" role="tablist" style="margin-left: 10%;">
              <li role="presentation" class="active"><a href="#Seoul" aria-controls="Seoul" role="tab" data-toggle="tab">서울코스</a></li>
              <li role="presentation"><a href="#Gyunggi" aria-controls="Gyunggi" role="tab" data-toggle="tab">경기코스</a></li>
              <li role="presentation"><a href="#Choongcheong" aria-controls="Choongcheong" role="tab" data-toggle="tab">충청코스</a></li>
              <li role="presentation"><a href="#Jeonla" aria-controls="Jeonla" role="tab" data-toggle="tab">전라코스</a></li>
              <li role="presentation"><a href="#Gyungbook" aria-controls="Gyungbook" role="tab" data-toggle="tab">경북코스</a></li>
              <li role="presentation"><a href="#Gyungnam" aria-controls="Gyungnam" role="tab" data-toggle="tab">경남코스</a></li>
            </ul>
            <!-- 인클루드자리 -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="Seoul">
                    <c:import url="/WEB-INF/views/course/SeoulCourse.jsp"/>
                </div>
               <div role="tabpanel" class="tab-pane fade" id="Gyunggi" onclick="gg()">
                	<c:import url="/WEB-INF/views/course/GyunggiCourse.jsp"/>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="Choongcheong" onclick="gg()">
                	<c:import url="/WEB-INF/views/course/ChoongcheongCourse.jsp"/>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="Jeonla" onclick="gg()">
                	<c:import url="/WEB-INF/views/course/JeonlaCourse.jsp"/>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="Gyungbook" onclick="gg()">
                	<c:import url="/WEB-INF/views/course/GyungbookCourse.jsp"/>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="Gyungnam" onclick="gg()">
                	<c:import url="/WEB-INF/views/course/GyungnamCourse.jsp"/>
                </div>
            </div>
          </div>
    </section>
      <!-- 푸터 -->
    <footer>
    	<c:import url="/WEB-INF/views/include/footer.jsp" />    
    </footer>
	<script type="text/javascript" src="${root}js/nn_page.js"></script>
</body>
</html>