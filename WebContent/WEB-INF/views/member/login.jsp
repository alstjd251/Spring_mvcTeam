<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="page.css?after" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <title>Sul Sure</title>
  </head>
  <body>
    <!-- 헤더 -->
    <header>
      <!-- 헤더 배너광고 -->
      <div id="gg">
        <div id="gggg">
            <li><a href="#"><img src="C:/Users/user/Desktop/3/ad/1330.jpg" class="pimg1"></a></li>
            <li><a href="#"><img src="C:/Users/user/Desktop/3/ad/야놀자.png" class="pimg2"></a></li>
            <li><a href="#"><img src="C:/Users/user/Desktop/3/ad/하미앙.png" class="pimg3"></a></li>
            <li><a href="#"><img src="C:/Users/user/Desktop/3/ad/여긴어때.png" class="pimg4"></a></li>
            <li><a href="#"><img src="C:/Users/user/Desktop/3/ad/숙박대전.jpg" class="pimg5"></a></li>
        </div>
      </div>
      <!-- 헤더 메뉴 -->
      <div class="menu" onscroll="menuscroll()">
        <div class="menu1">
          <div class="logo">
            <a href="#"
              ><img src="C:/Users/USER/Desktop/3/menu_bar/logoimg.jpg"
            /></a>
          </div>
          <div class="menu_bar">
            <li><a href="#기관소개">기관소개</a></li>
            <li><a href="#양조장">양조장</a></li>
            <li><a href="#예약">예약</a></li>
            <li><a href="#공지사항 및 문의">공지사항 및 문의</a></li>
          </div>
          <div class="login">
            <a href="#" id="popup_open_btn"
              ><img src="C:/Users/USER/Desktop/3/menu_bar/loginimg.jpg"
            /></a>
          </div>
        </div>
      </div>
    </header>
    <!-- 기관소개 섹션부분 -->
    <section>섹션부분 내용 추가 요망
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>vv
    </section>
    <!-- 푸터 -->
    <footer>
      <c:import url="/WEB-INF/views/include/footer.jsp"/>
    </footer>
    <script type="text/javascript" src="page.js"></script>
  </body>
</html>