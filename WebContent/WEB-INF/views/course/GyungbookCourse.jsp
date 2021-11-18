<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e3b77ddbf353b2397ed468cf5eb770f0"></script>
<link rel="stylesheet" href="${root }css/course/GyungbookCourse.css" />
</head>
<body>
   <div id="gb_breweryBox">
      <div class="gb_brewery-container01">
         <div class="gb_brewery-card01" style="position: absolute;">
            <h3>~ in Gyungbook ~</h3>
            <p style="font-size: 40px; font-weight: bold;">
               굽이치는 강, 깎아지른 절벽<br> 백두대간 천혜의 자연 환경에 위치한 향기
            </p>
            <p>
               -혀 끝을 스치는 강렬한 증류주의 맛<br>그윽한 향기와 감칠맛의 끝은 고유의 향기와 쓴맛 없는 깔끔함<br>
               천혜의 경관과 함께하는 코스
            </P>
            <div class="gb_breweryButton">
               <a href="">예약하기</a>
            </div>
         </div>
      </div>
      <div class="gb_brewery-container02">
         <div style="margin-top: 340px;">
            <div class="gb_brewery-title">Gyungbook course</div>
            <div class="gb_brewery-cir">
               <!-- 누끼 -->
               <div class="gb_cir_div">
                  <div class="gb_cir_div2">
                     <img src="${root }img/courseIntroduce/경북_안동소주_안동소주.png"
                        class="gb_breweryBody01_img01" width="150px" height="280px">
                  </div>
                  <div class="gb_cir_div2">
                     <img src="${root }img/courseIntroduce/경북_문경주조_문희.png"
                        class="gb_breweryBody01_img02" width="150px" height="280px">
                  </div>
                  <div class="gb_cir_div2">
                     <img src="${root }img/courseIntroduce/경북_한국애플리즈_한스와인.png"
                        class="gb_breweryBody01_img03" width="300px" height="280px">
                  </div>
               </div>
            </div>
            <table>
               <thead>
                  <!-- 순서도, 시간 -->
						<tr>
							<td>대구역</td>
							<td class="gb_dotted"></td>
							<td>명인안동소주</td>
							<td class="gb_dotted"></td>
							<td>문경주조</td>
							<td class="gb_dotted"></td>
							<td>한국애플리즈</td>
							<td class="gb_dotted"></td>
							<td>대구역</td>
						</tr>
						<tr>
							<!--시간-->
							<td>12:00</td>
							<td></td>
							<td>13:30</td>
							<td></td>
							<td>14:50</td>
							<td></td>
							<td>16:00</td>
							<td></td>
							<td>18:00</td>
						</tr>
					</thead>
            </table>
            <div class="gb_brewery-memo">
               <div>
                  3개 코스
                  <p></p>
                  원
               </div>
               <p>*도로 교통상황에 따라 도착시간이 달라질 수 있습니다.</p>
            </div>
            <div class="gb_brewery-title02">Brewery Information</div>
            <div class="gb_brewery-card03">
               <div class="gb_card03-box">
                  <div>
                     <img src="${root }img/courseIntroduce/경기도_배혜정도가.png"
                        class="gb_breweryBody01_img04" />
                  </div>
                  <div class="gb_course_p">
                     <p>
                        ■주소 : 서울특별시 강남구 논현로 6 <br> ( 서울시 종로구 원서동 4-9 )
                     </p>
                     <p>■전화번호 : 02 - 3462 - 7328</p>
                  </div>
                  <div class="gb_cose_map" id="gyung_cose1"></div>
               </div>
            </div>

            <div class="gb_brewery-title02">Brewery Information</div>
            <div class="gb_brewery-card03">
               <div class="gb_card03-box">
                  <div>
                     <img src="./gyunggiIMG/경기도-호랑이배꼽.png" class="gb_breweryBody01_img05" />
                  </div>
                  <div class="gb_course_p">
                     <p>■주소: 경기 평택시 포승읍 충열길 37</p>
                     <p>■전화번호 : 031 - 683 - 0981</p>
                  </div>
                  <div class="gb_cose_map" id="gyung_cose2"></div>
               </div>
            </div>
            <div class="gb_brewery-title02">Brewery Information</div>
            <div class="gb_brewery-card03">
               <div class="gb_card03-box">
                  <div>
                     <img src="./gyunggiIMG/경기도-그랑꼬또.png" class="gb_breweryBody01_img05" />
                  </div>
                  <div class="gb_course_p">
                     <p>■주소: 경기 안산시 단원구 뻐꾹산길 107</p>
                     <p>■전화번호 : 0507 - 1342 - 9873</p>
                     <p>■Instagram: </p>
                  </div>
                  <div class="gb_cose_map" id="gyung_cose3"></div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <script type="text/javascript" src="${root }js/course/gyunggi.js"></script>
</body>
</html>