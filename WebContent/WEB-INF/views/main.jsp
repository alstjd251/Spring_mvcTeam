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
      <!--양조장 코스 01 ( 서울, 경기, 충청)-->
      <div id="yang01" class="sect" style="background-color: pink">
        <div id="yang01-course">
        <div class="chi-course01">
          <div id="course01-image01"><img src="${root }img/course/서울코스_서울.png"></div>
          <div id="course01-text01">
            <b> 서울특별시 : '술'래잡기</b>
            <P>서울 고궁에 기대어 술을 마주하다.<br>
              과거와 현재가 공존하며 하루가 다르게 변하는 서울. <br>
              아름다운 고궁들과 더불어<br>
              술 하나하나에 담긴 이야기와 맛을 즐길 수 있는,<br>
              서울이 선사하는 생애 가장 풍부한 순간을 느껴보세요.</P>
          </div>
        </div>
        <div class="chi-course02">
          <div id="course01-text02">
            <b>경기도 : </b>
            <P>서울 고궁에 기대어 술을 마주하다.<br>
              과거와 현재가 공존하며 하루가 다르게 변하는 서울. <br>
              아름다운 고궁들과 더불어<br>
              술 하나하나에 담긴 이야기와 맛을 즐길 수 있는,<br>
              서울이 선사하는 생애 가장 풍부한 순간을 느껴보세요.</P>
          </div>
          <div id="course01-image02"><img src="${root }img/course/경기도코스_안산.png"></div>
        </div>
        <div class="chi-course03">
          <div id="course01-image03"><img src="${root }img/course/충북코스_단양.png"></div>
          <div id="course01-text03">
            <b>충청도 : </b>
            <P>서울 고궁에 기대어 술을 마주하다.<br>
              과거와 현재가 공존하며 하루가 다르게 변하는 서울. <br>
              아름다운 고궁들과 더불어<br>
              술 하나하나에 담긴 이야기와 맛을 즐길 수 있는,<br>
              서울이 선사하는 생애 가장 풍부한 순간을 느껴보세요.</P>
          </div>
        </div>
        </div>
      </div>

      <!--양조장 코스 02 (전라도 ,경상북도, 경상남도)-->
      <div id="yang02" class="sect" style="background-color: bisque">
        <div id="yang02-course">
        <div class="chi-course04">
          <div id="course02-text04">
            <b>전라도 : </b>
            <P>서울 고궁에 기대어 술을 마주하다.<br>
              과거와 현재가 공존하며 하루가 다르게 변하는 서울. <br>
              아름다운 고궁들과 더불어<br>
              술 하나하나에 담긴 이야기와 맛을 즐길 수 있는,<br>
              서울이 선사하는 생애 가장 풍부한 순간을 느껴보세요.</P>
          </div>
          <div id="course02-image04"><img src="${root }img/course/전라도코스_담양.png"></div>
        </div>
        <div class="chi-course05">
          <div id="course02-image05"><img src="${root }img/course/경상도코스_경북_안동.png"></div>
          <div id="course02-text05">
            <b>경상북도 : </b>
            <P>서울 고궁에 기대어 술을 마주하다.<br>
              과거와 현재가 공존하며 하루가 다르게 변하는 서울. <br>
              아름다운 고궁들과 더불어<br>
              술 하나하나에 담긴 이야기와 맛을 즐길 수 있는,<br>
              서울이 선사하는 생애 가장 풍부한 순간을 느껴보세요.</P>
          </div>
        </div>
        <div class="chi-course06">
          <div id="course02-text06">
            <b>경상남도 : </b>
            <P>서울 고궁에 기대어 술을 마주하다.<br>
              과거와 현재가 공존하며 하루가 다르게 변하는 서울. <br>
              아름다운 고궁들과 더불어<br>
              술 하나하나에 담긴 이야기와 맛을 즐길 수 있는,<br>
              서울이 선사하는 생애 가장 풍부한 순간을 느껴보세요.</P>
          </div>
          <div id="course02-image06"><img src="${root }img/course/경상도코스_경남_부산.png"></div>
        </div>
        </div>
      </div>
      <div id="reservation" class="sect" style="background-color: bisque">
        예약란입니다
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