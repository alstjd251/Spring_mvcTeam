<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${root }css/course/SeoulCourse.css" />

</head>
<body>
<div id="s_breweryBox">
   <div class="s_brewery-container01">
       <div class="s_brewery-card01" style="position: absolute;">
           <h3>~ in Seoul ~</h3>
           <p style="font-size: 40px; font-weight: bold;">도시에서 즐기는 술 한잔<br>
               빌딩 숲 사이에서 느낄 수 있는 여유</p>
           <p>남산과 한강이 보이는 드라이브를 즐기며
            증류주의 맛을 체험하는 도심형 코스!<br>
           조선시대 사대부가 즐겨마셨던 삼해주,
           매실로 빚어낸 서울식 GIN을 맛보는 여행.</P>
           <div class="s_breweryButton">
               <a href="">예약하기</a>
           </div>
       </div>
   </div>
   <div class="s_brewery-container02">
       <div class="s_brewery-ct2" style="margin-top: 340px;">
           <div class="s_brewery-title">Seoul course</div>
           <div class="s_brewery-cir">
           		<div class="s_cir_div">
           			<div class="s_cir_div2">
               			<img src="${root }img/courseIntroduce/삼해소주-누끼.png" class="s_breweryBody01_img01">
               		</div>
               		<div class="s_cir_div2">
               			<img src="${root }img/courseIntroduce/서울의밤-누끼.png" class="s_breweryBody01_img02">
               		</div>
               </div>
           </div>
           <table>
               <thead>
                   <!-- 순서도, 시간 -->
                   <tr>
                       <td>서울역</td>
                       <td class="s_dotted"></td>
                       <td>삼해소주</td>
                       <td class="s_dotted"></td>
                       <td>더한소주</td>
                       <td class="s_dotted"></td>
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
           <div class="s_brewery-memo">
               <div>2개 코스 <p></p>원</div>
               <p>*도로 교통상황에 따라 도착시간이 달라질 수 있습니다.</p>
           </div>
           <div class="s_brewery-title02">Brewery Information</div>
           <div class="s_brewery-card03">
               <div class="s_card03-box">
                   <div>
                   <img src="C:/Users/user/Desktop/기업프로젝트/양조장 이미지/서울-삼해소주.jpg" class="s_breweryBody01_img03"/>
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
                   <div><!--지도 api넣어줘 지성아^^--></div>
               </div>
           </div>

           <div class="s_brewery-title02">Brewery Information</div>
           <div class="s_brewery-card03">
               <div class="s_card03-box">
                   <div>
                   <img src="C:/Users/user/Desktop/기업프로젝트/양조장 이미지/서울-더한주류.jpg" class="s_breweryBody01_img04" />
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
                   <div><!--지도 api넣어줘 지성아^^--></div>
               </div>
          	</div> 
       	</div>
   	</div>
</div>
</body>
</html>