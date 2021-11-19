<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${root }css/course/JeonlaCourse.css" />

</head>
<body>
<div id="jl_breweryBox">
   <div class="jl_brewery-container01">
       <div class="jl_brewery-card01" style="position: absolute;">
           <h3>~ in Jeonla ~</h3>
           <p style="font-size: 40px; font-weight: bold;">오직 맛의 고장에서 느낄 수 있는 전통주<br>
               대숲 사이로 들려오는 바람소리와 약주 한 잔</p>
           <p>-4대에 걸친 비법과 22대 명인이 빚은 추성주<br>
           전통양조과학기술연구소의 발효과학, 수제 전통 누룩으로 빚은 전통주 코스!</p>
           <div class="jl_breweryButton">
               <a href="${root }reservation/main?course_number=4">예약하기</a>
           </div>
       </div>
   </div>
   <div class="jl_brewery-container02">
       <div class="jl_brewery-ct2" style="margin-top: 340px;">
           <div class="jl_brewery-title">Jeonla course</div>
           <div class="jl_brewery-cir">
           		<div class="jl_cir_div">
           			<div class="jl_cir_div2">
               			<img src="${root }img/courseIntroduce/전라도_청산녹수_g12.png" class="jl_breweryBody01_img01">
               		</div>
               		<div class="jl_cir_div2">
               			<img src="${root }img/courseIntroduce/전라도_추성고을_추성주.png" class="jl_breweryBody01_img02">
               		</div>
               </div>
           </div>
           <table>
               <thead>
                   <!-- 순서도, 시간 -->
						<tr>
							<td>광주터미널</td>
							<td class="jl_dotted"></td>
							<td>청산녹수</td>
							<td class="jl_dotted"></td>
							<td>추산고을</td>
							<td class="jl_dotted"></td>
							<td>광주터미널</td>
						</tr>
						<tr>
							<!--시간-->
							<td>09:00</td>
							<td></td>
							<td>09:40</td>
							<td></td>
							<td>11:00</td>
							<td></td>
							<td>12:30</td>
						</tr>
					</thead>
           </table>
           <div class="jl_brewery-memo">
               <div>2개 코스 <p>45,000원</p></div>
               <p>*도로 교통상황에 따라 도착시간이 달라질 수 있습니다.</p>
           </div>
           <div class="jl_brewery-title02">Brewery Information</div>
           <div class="jl_brewery-card03">
               <div class="jl_card03-box">
                   <div>
                   <img src="C:/Users/user/Desktop/기업프로젝트/양조장 이미지/서울-삼해소주.jpg" class="jl_breweryBody01_img03"/>
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
                   <div class="jl_cose_map" id="gyung_cose3"></div>
               </div>
           </div>

           <div class="jl_brewery-title02">Brewery Information</div>
           <div class="jl_brewery-card03">
               <div class="jl_card03-box">
                   <div>
                   <img src="C:/Users/user/Desktop/기업프로젝트/양조장 이미지/서울-더한주류.jpg" class="jl_breweryBody01_img04" />
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
                   <div class="jl_cose_map" id="gyung_cose3"></div>
               </div>
          	</div> 
       	</div>
   	</div>
</div>
</body>
</html>