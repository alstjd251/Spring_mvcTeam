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
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
    />
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
        <div role="tabpanel" style="height: 100%;">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist" style="margin-left: 10%;">
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
                <div role="tabpanel" class="tab-pane fade" id="Gyunggi">
                	<c:import url="/WEB-INF/views/course/GyunggiCourse.jsp"/>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="Choongcheong">
                	<c:import url="/WEB-INF/views/course/ChoongcheongCourse.jsp"/>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="Jeonla">
                	<c:import url="/WEB-INF/views/course/JeonlaCourse.jsp"/>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="Gyungbook">
                	<c:import url="/WEB-INF/views/course/GyungbookCourse.jsp"/>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="Gyungnam">
                	<c:import url="/WEB-INF/views/course/GyungnamCourse.jsp"/>
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

</body>
</html>