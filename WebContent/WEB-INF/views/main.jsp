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
    <link rel="stylesheet" href="${root }css/mainCss.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
    <script src="${root }js/zip.js"></script>
<title>Sul Sure</title>
</head>
<body>
<c:import url="/WEB-INF/views/include/modal.jsp"/>
    <!-- 헤더 -->
    <header>
      <div class="logo">
        <a href="${root }main"><img src="${root }img/menu_bar/logoimg.jpg" /></a>
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
	      	<a style="position:absolute; right:5em;" href="#" id="popup_open_btn" ><img src="${root }img/menu_bar/loginimg.png"/></a>
	      	<%-- <a href="#" id="mypage_open_btn" style="display:none;"><img src="${root }img/menu_bar/mypage.jpg"/></a> --%>
      	</c:when>
		<c:otherwise>
			<%-- <a href="#" id="popup_open_btn" style="display:none;"><img src="${root }img/menu_bar/loginimg.png"/></a> --%>
			<a href="${root }member/mypage">
			<span><img id="mypage_open_btn" src="${root }img/menu_bar/mypage.jpg"/>
			<span id="my_name">${loginBean.mem_name }님</span></span>
			</a>
			<a href="member/logout_proc" id="logout_button">로그아웃</a>
		</c:otherwise>
      </c:choose>
      </div>
    </header>
    <!-- 섹션 -->
    <div class="section" dir="ltr">
      <!-- 메인페이지 페이드인아웃 -->
      <div id="fade1" class="sect">
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
      <div id="introduce" class="sect" style="background-color: aqua">
        기관소개란입니다
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
          <li><a href="#"><img src="${root }img/ad/1330.jpg" class="pimg1"/></a></li>
          <li><a href="#"><img src="${root }img/ad/야놀자.png" class="pimg2"/></a></li>
          <li><a href="#"><img src="${root }img/ad/하미앙.png" class="pimg3"/></a></li>
          <li><a href="#"><img src="${root }img/ad/여긴어때.png" class="pimg4"/></a></li>
          <li><a href="#"><img src="${root }img/ad/숙박대전.jpg" class="pimg5"/></a></li></div>
        <footer>
          <div class="FOOTER_TOTAL">
                <div class="F_i F_i1">
                  <img src="${root }img/footer/M_LOGE.jpg"/>
                  <p><strong>대표자</strong>박치언</p>
                  <p><strong>사업자등록번호</strong> 052-34-56789</p>
                  <p>통신판매업신고 제2015-울산울주-0164호</p>
                </div>
                <div class="F_i F_i2">
                  <img src="${root }img/footer/location.png" width="180px">
                  <p><strong>울산광역시 울주군 상북면 향산동길 48</strong></p>
                </div>
                <div class="F_i F_i3">
                  <img src="${root }img/footer/call.png" width="180px"/>
                  <p>전화 052-879-1234</p>
                  <p>팩스&nbsp;&nbsp;1577-6746</p>
                  <p>soldesk@gmail.com</p>
                </div>
                <div class="F_i F_i4">
                  <img src="${root }img/footer/open.png" width="180px"/>
                  <p><strong>매주</strong></p>
                  <p id="line"><strong>오전</strong> 9:00 ~ <strong>오후</strong> 18:00</p>
                  <p><strong>매주 월요일 휴무</strong></p>
                </div>
            </div>
          </div>
        </footer>
      </div>
    </div>
    <script type="text/javascript" src="${root }js/sooldesk2.js"></script>
    <script type="text/javascript" src="${root }js/modal.js"></script>
    <script src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>