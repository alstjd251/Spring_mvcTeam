<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${root }css/course/GyungnamCourse.css" />

</head>
<body>
<div id="gn_breweryBox">
   <div class="gn_brewery-container01">
       <div class="gn_brewery-card01" style="position: absolute;">
           <h3>~ in Gyungnam ~</h3>
           <p style="font-size: 40px; font-weight: bold;">농촌의 고즈넉한 분위기와 함께 한잔<br>
               산과 들을 오가는 여유로운 시간</p>
           <p>-머루로 빚은 특별한 와인과 국산 쌀로 빚어낸 막걸리!<br>
           드넓은 논, 고지의 자리한 평원에 위치한 양조장을 느껴보세요.</p>
           <div class="gn_breweryButton">
               <a href="">예약하기</a>
           </div>
       </div>
   </div>
   <div class="gn_brewery-container02">
       <div class="gn_brewery-ct2" style="margin-top: 340px;">
           <div class="gn_brewery-title">Gyungnam course</div>
           <div class="gn_brewery-cir">
           		<div class="gn_cir_div">
           			<div class="gn_cir_div2">
               			<img src="${root }img/courseIntroduce/경남_복순도가_복순도가.png" class="gn_breweryBody01_img01">
               		</div>
               		<div class="gn_cir_div2">
               			<img src="${root }img/courseIntroduce/경남_하미앙와인밸리_하미앙.png" class="gn_breweryBody01_img02">
               		</div>
               </div>
           </div>
           <table>
               <thead>
                   <!-- 순서도, 시간 -->
                   <tr>
                       <td>부산역</td>
                       <td class="gn_dotted"></td>
                       <td>복순도가</td>
                       <td class="gn_dotted"></td>
                       <td>하미앙 와인밸리</td>
                       <td class="gn_dotted"></td>
                       <td>부산역</td>
                   </tr>
						<tr>
							<!--시간-->
							<td>12:00</td>
							<td></td>
							<td>13:10</td>
							<td></td>
							<td>15:40</td>
							<td></td>
							<td>18:00</td>
						</tr>
					</thead>
           </table>
           <div class="gn_brewery-memo">
               <div>2개 코스 <p>50,000</p>원</div>
               <p>*도로 교통상황에 따라 도착시간이 달라질 수 있습니다.</p>
           </div>
           <div class="gn_brewery-title02">Brewery Information</div>
           <div class="gn_brewery-card03">
               <div class="gn_card03-box">
                   <div>
                   <img src="C:/Users/user/Desktop/기업프로젝트/양조장 이미지/서울-삼해소주.jpg" class="gn_breweryBody01_img03"/>
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

           <div class="gn_brewery-title02">Brewery Information</div>
           <div class="gn_brewery-card03">
               <div class="gn_card03-box">
                   <div>
                   <img src="C:/Users/user/Desktop/기업프로젝트/양조장 이미지/서울-더한주류.jpg" class="gn_breweryBody01_img04" />
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