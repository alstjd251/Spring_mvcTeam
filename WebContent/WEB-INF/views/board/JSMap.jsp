<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2d50c23204031dd7ba2725e70baf1be2"></script>
    <link rel="stylesheet" href="${root}css/board/JSMap.css" type="text/css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
    >
    <title>Sul sure</title>
  </head>
  <body>
      <!-- 헤더 -->
    <header>
        <!-- 헤더 메뉴 -->
        <div class="menu">
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
                    <div id="breweryBox">
                        <div class="brewery-container01">
                            <div class="brewery-card01" style="position: absolute;">
                                <h3>~ in Seoul ~</h3>
                                <p style="font-size: 40px; font-weight: bold;">도시에서 즐기는 술 한잔<br>
                                    빌딩 숲 사이에서 느낄 수 있는 여유</p>
                                <p>남산과 한강이 보이는 드라이브를 즐기며
                                 증류주의 맛을 체험하는 도심형 코스!<br>
                                조선시대 사대부가 즐겨마셨던 삼해주,
                                매실로 빚어낸 서울식 GIN을 맛보는 여행.</P>
                                <div class="breweryButton">
                                    <a href="">예약하기</a>
                                </div>
                            </div>
                        </div>
                        <div class="brewery-container02">
                            <div style="margin-top: 340px;">
                                <div class="brewery-title">Seoul course</div>
                                <div class="brewery-cir">
                                    <!-- 누끼 -->
                                    <img src="C:/Users/user/Desktop/기업프로젝트/코스/제품이미지/서울/누끼/삼해소주-누끼.png" class="breweryBody01_img01">
                                    <img src="C:/Users/user/Desktop/기업프로젝트/코스/제품이미지/서울/누끼/서울의밤-누끼.png" class="breweryBody01_img02">
                                </div>
                                <table>
                                    <thead>
                                        <!-- 순서도, 시간 -->
                                        <tr>
                                            <td>서울역</td>
                                            <td class="dotted"></td>
                                            <td>삼해소주</td>
                                            <td class="dotted"></td>
                                            <td>더한소주</td>
                                            <td class="dotted"></td>
                                            <td>서울역</td>
                                        </tr>
                                        <tr>
                                            <!--시간-->
                                            <td>13:00</td>
                                            <td></td>
                                            <td>13:30</td>
                                            <td></td>
                                            <td>15:00</td>
                                            <td></td>
                                            <td>17:00</td>
                                        </tr>
                                    </thead>
                                </table>
                                <div class="brewery-memo">
                                    <div>2개 코스 <p></p>원</div>
                                    <p>*도로 교통상황에 따라 도착시간이 달라질 수 있습니다.</p>
                                </div>
                                <div class="brewery-title02">Brewery Information</div>
                                <div class="brewery-card03">
                                    <div class="card03-box">
                                        <div>
                                        <img src="${root}img/contact/삼해소주.jpg" class="breweryBody01_img03"/>
                                        </div>
                                        <div>
                                        <p>
                                        ■주소 : 서울시 종로구 창덕궁길 142 <br>
            
                                                ( 서울시 종로구 원서동 4-9 ) 
                                        </p>
                                        <p>
                                        ■전화번호 : 010 - 5216 - 8093
                                        </p>
                                        <p>
                                        ■Instagram: cooleagan
                                        </p>
                                        </div>
                                        <div class="cose_map" id="s_cose">
                                        </div>
                                    </div>
                                </div>
            
                                <div class="brewery-title02">Brewery Information</div>
                                <div class="brewery-card03">
                                    <div class="card03-box">
                                        <div>
                                        <img src="${root}img/contact/더한주류.jpg" class="breweryBody01_img04" />
                                        </div>
                                        <div>
                                        <p>
                                        ■주소: 서울시 은평구 증산로7길 28-13 
                                        </p>
                                        <p>
                                        ■전화번호 : 02-2280-8080
                                        </p>
                                        <p>
                                        ■Instagram: thehan.kr
                                        </p>
                                        </div>
                                        <div class="cose_map" id="s_cose2">

                                        </div>
                                    </div>
                                    <!-- <div>
                                    <img src="C:/Users/user/Desktop/기업프로젝트/양조장 이미지/서울-더한주류.jpg" class="breweryBody01_img04"></td>
                                    </div> -->
                                </div> 
                            </div>
                        </div>
                    </div>
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
       <c:import url="/WEB-INF/views/include/footer.jsp"/>
      </footer>
  	<script type="text/javascript" src="${root}js/JSMap.js"></script>
   </body>
</html>
