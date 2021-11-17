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
    <link rel="stylesheet" href="${root }css/course/SeoulCourse.css" />
    <link rel="stylesheet" href="${root }css/include/n_header_footer.css" />
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
        <div class="mainNotice-container01">
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
              <li role="presentation"><a href="#Gyungsang1" aria-controls="Gyungsang1" role="tab" data-toggle="tab">경상1코스</a></li>
              <li role="presentation"><a href="#Gyungsang2" aria-controls="Gyungsang2" role="tab" data-toggle="tab">경상2코스</a></li>
            </ul>
            <!-- 인클루드자리 -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="Seoul">
                    <c:import url="/WEB-INF/views/course/SeoulCourse.jsp"/>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="Gyunggi">경기</div>
                <div role="tabpanel" class="tab-pane fade" id="Choongcheong">충청도</div>
                <div role="tabpanel" class="tab-pane fade" id="Jeonla">전라도</div>
                <div role="tabpanel" class="tab-pane fade" id="Gyungsang1">경상1도</div>
                <div role="tabpanel" class="tab-pane fade" id="Gyungsang2">경상2도</div>
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