<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${root }css/main/mainCss.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
    <script src="${root }js/zip.js"></script>
<title>Sul Sure</title>
</head>
<body>
    <!-- 헤더 -->
    <header>
    <c:import url="/WEB-INF/views/include/header.jsp"/>
    </header>
    <!-- 섹션 -->
    <div class="section" dir="ltr">
      <!-- 메인페이지 페이드인아웃 -->
      <div id="fade1" class="sect">
      	<div id="fade2">
        <li>
          <img src="${root }img/mainpage/img1.jpg" class="img1" />
        </li>
        <li>
          <img src="${root }img/mainpage/img2.jpg" class="img2" />
        </li>
        <li>
          <img src="${root }img/mainpage/img3.jpg" class="img3" />
        </li>
        <li>
          <img src="${root }img/mainpage/img4.jpg" class="img4" />
        </li>
        <li>
          <img src="${root }img/mainpage/img5.jpg" class="img5" />
        </li>
       </div>
       <img class="fadeImg" src="${root }img/mainpage/주백약지장.png"/>
      </div>
      <div id="introduce" class="sect">
        <div class="introduce_total">
            <div class="in_item">
                <img id="intro" src="${root }img/mainIntroduce/introduce.png">
                <img id="drink" src="${root }img/mainIntroduce/drink.png" width="100" height="60">
            </div>
            <div class="in_item2">
                <div class="i_t1">
                  <div class="i_t1_front">
                    <div class="i_t1_front1">
                      <div class="i_t1_flex">
                        <span>Welcome</span>
                        <span>To our</span>
                        <span>Home Page</span>
                      </div>
                    </div>  
                  </div>
                  <div class="t1_property" style="background-image: url(${root}img/mainIntroduce/I_t2_wall.png);">
                      <div>
                        <img src="${root }img/mainIntroduce/bus.png" width="200px" height="150px">
                        <p>편하게</p>
                        <p>직접 운전할</p>
                        <p>필요 <strong>Ⅹ</strong></p>
                      </div>
                      <div>
                        <img src="${root }img/mainIntroduce/house.png" width="150px" height="134px">
                      </div>
                      <div>
                        <img src="${root }img/mainIntroduce/map.png" width="140px" height="150px">
                        <p>전국적 네트워크</p>
                        <p>지방에서도 OK</p>
                      </div>
                  </div>
                </div>
                <div class="i_t2"></div>
            </div>
        </div>
      </div>
      <!--코스 소개-->
      <div id="yang01" class="sect" style="background-color: pink">
       <!--서울,경기-->
        <div id="mainBrewery01">
          <div class="breweryText01">
            <h2>01</h2>
            <p>서울코스</p>
            <p>설명설명<br>
             설명설명설명설명<br>
             설명설명설명설명</p>
            <a href="">코스상세</a>
          </div>

          <div class="breweryImg01">
            <img src="${root }img/course/서울코스.jpg" width="350px" height="220px">
          </div>
        </div>

        <div id="mainBrewery02">
          <div class="breweryImg02">
            <img src="${root }img/course/경기코스.jpg" width="350px" height="220px">
        </div>
        <div class="breweryText02">
          <h2>02</h2>
          <p>경기코스</p>
          <p>설명설명<br>
             설명설명설명설명<br>
             설명설명설명설명</p>
          <a href="">코스상세</a>
        </div>
      </div>
      </div>
      <!--양조장 코스 02 (충청, 전라)-->
      <div id="yang02" class="sect" style="background-color: bisque">
      <div id="mainBrewery03">
          <div class="breweryText03">
              <h2>03</h2>
              <p>충청코스</p>
              <p>설명설명<br>
                 설명설명설명설명<br>
                 설명설명설명설명</p>
              <a href="">코스상세</a>
          </div>
          <div class="breweryImg03">
              <img src="${root }img/course/충북코스_단양.jpg" width="350px" height="220px">
          </div>
        </div> 
        <div id="mainBrewery04">
          <div class="breweryImg04">
              <img src="${root }img/course/전라도코스_담양.jpg" width="350px" height="220px">
          </div>
          <div class="breweryText04">
              <h2>04</h2>
              <p>전라도코스</p>
              <p>설명설명<br>
                 설명설명설명설명<br>
                 설명설명설명설명</p>
              <a href="">코스상세</a>
          </div>
        </div>
      </div>
      <div id="yang03" class="sect" style="background-color: bisque">
       <!-- 경북, 경남 -->
       <div id="mainBrewery05">
          <div class="breweryText05">
            <h2>05</h2>
            <p>경북코스</p>
            <p>설명설명<br>
             설명설명설명설명<br>
             설명설명설명설명</p>
            <a href="">코스상세</a>
          </div>
          <div class="breweryImg05">
            <img src="${root }img/course/경상도코스_경북_안동.jpg" width="350px" height="220px">
          </div>
        </div>
        <div id="mainBrewery06">
          <div class="breweryImg06">
            <img src="${root }img/course/경남코스.jpg" width="350px" height="220px">
          </div>
          <div class="breweryText06">
            <h2>06</h2>
            <p>경남코스</p>
            <p>설명설명<br>
             설명설명설명설명<br>
             설명설명설명설명</p>
            <a href="">코스상세</a>
          </div>
        </div>
      </div>
      <div id="board" class="sect" style="background-color: saddlebrown">
        공지사항 및 문의 게시판입니다
      </div>
      
<div id="footgg" class="sect">
        <div id="gg">
        <div id="ggone"><a href="http://ursa.co.kr/" target="_blank"><img src="${root }img/ad/우루샷.jpg" class="pimg"></a></div>
          <div id="ggtwo">
          <li><a href="#"><img src="${root }img/ad/1330.jpg" class="pimg1"/></a></li>
          <li><a href="#"><img src="${root }img/ad/야놀자.png" class="pimg2"/></a></li>
          <li><a href="#"><img src="${root }img/ad/하미앙.png" class="pimg3"/></a></li>
          <li><a href="#"><img src="${root }img/ad/여긴어때.png" class="pimg4"/></a></li>
          <li><a href="#"><img src="${root }img/ad/숙박대전.jpg" class="pimg5"/></a></li></div>
          </div>`
        <footer>
        <c:import url="/WEB-INF/views/include/footer.jsp"/>
          </div>
        </footer>
      </div>
    </div>
    <script type="text/javascript" src="${root }js/sooldesk.js"></script>
    <script src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>