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
               <a href="${root }reservation/main?course_number=5" id="gb_button">예약하기</a>
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
                        class="gb_breweryBody01_img01" width="120px" height="300px">
                  </div>
                  <div class="gb_cir_div2">
                     <img src="${root }img/courseIntroduce/경북_문경주조_문희.png"
                        class="gb_breweryBody01_img02" width="120px" height="300px">
                  </div>
                  <div class="gb_cir_div2">
                     <img src="${root }img/courseIntroduce/경북_한국애플리즈_한스와인.png"
                        class="gb_breweryBody01_img03" width="120px" height="300px">
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
                  <p>50,000원</p>
               </div>
               <p>*도로 교통상황에 따라 도착시간이 달라질 수 있습니다.</p>
            </div>
            <div class="gb_brewery-title02">Brewery Information</div>
            <div class="gb_brewery-card03">
               <div class="gb_card03-box">
                  <div>
                     <img src="${root }img/courseIntroduce/경상도_안동소주.svg"
                        class="gb_breweryBody01_img04" width="300px" height="250px" />
                  </div>
                  <div class="gb_course_p">
                     <p>
                        ■주소 : 경북 안동시 풍산읍 산업단지6길 6
                     </p>
                     <p>■전화번호 : 054 - 856 - 6903</p>
                  </div>
                  <div class="gb_cose_map" id="gb_cose1"></div>
               </div>
            </div>

            <div class="gb_brewery-title02">Brewery Information</div>
            <div class="gb_brewery-card03">
               <div class="gb_card03-box">
                  <div>
                     <img src="${root }img/courseIntroduce/경상도_문경주조.png" class="gb_breweryBody01_img05" width="300px" height="250px" />
                  </div>
                  <div class="gb_course_p">
                     <p>■주소: 경북 문경시 동로면 노은1길 49-15</p>
                     <p>■전화번호 : 0507 - 1444 - 8258</p>
                  </div>
                  <div class="gb_cose_map" id="gb_cose2"></div>
               </div>
            </div>
            <div class="gb_brewery-title02">Brewery Information</div>
            <div class="gb_brewery-card03">
               <div class="gb_card03-box">
                  <div>
                     <img src="${root }img/courseIntroduce/경상도_애플리즈.svg" class="gb_breweryBody01_img05" width="300px" height="250px" />
                  </div>
                  <div class="gb_course_p">
                     <p>■주소: 경상북도 의성군 단촌면 일직점곡로 755</p>
                     <p>■전화번호 : 054 - 834 - 7800</p>
                  </div>
                  <div class="gb_cose_map" id="gb_cose3"></div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <script type="text/javascript">
   var cose1 = new kakao.maps.LatLng(36.549756044738544, 128.70885076835506);
   var cose2 = new kakao.maps.LatLng(36.77233886049045, 128.3140550260342);
   var cose3 = new kakao.maps.LatLng(36.43729290311423, 128.72301776650133);

   var mapContainer = document.querySelector('#gb_cose1'), // 지도를 표시할 div 
   mapOption = { 
       center:cose1, // 지도의 중심좌표
       level: 3 // 지도의 확대 레벨
   };

   var mapContainer2 = document.querySelector("#gb_cose2"),
       mapOption2 = {
           center: cose2,
           level: 3
       };
   
   var mapContainer3 = document.querySelector("#gb_cose3"),
   mapOption3 = {
     center: cose3,
     level: 3
       };
   var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
   var map2 = new kakao.maps.Map(mapContainer2,mapOption2);
   var map3 = new kakao.maps.Map(mapContainer3,mapOption3);
   
   map.relayout();
   map2.relayout();
   map3.relayout();
   

           // 지도에 마커를 표시합니다 
   var marker = new kakao.maps.Marker({
       map: map, 
       position:cose1
   });
   var marker2 = new kakao.maps.Marker({
       map: map2,
       position: cose2
   });

   var marker3 = new kakao.maps.Marker({
       map: map3,
       position: cose3
   });


   // 아래와 같이 옵션을 입력하지 않아도 된다
   var zoomControl = new kakao.maps.ZoomControl();
   var zoomControl2 = new kakao.maps.ZoomControl();
   var zoomControl3 = new kakao.maps.ZoomControl();

   // 지도 오른쪽에 줌 컨트롤이 표시되도록 지도에 컨트롤을 추가한다.
   map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
   // 마커가 지도 위에 표시되도록 설정합니다
   map2.addControl(zoomControl2, kakao.maps.ControlPosition.RIGHT);
   
   map3.addControl(zoomControl3, kakao.maps.ControlPosition.RIGHT);
   
           // 커스텀 오버레이에 표시할 컨텐츠 입니다
   // 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
   // 별도의 이벤트 메소드를 제공하지 않습니다 
   var content = 
   '<div class="wrap">' + 
           '    <div class="info">' + 
           '        <div class="title">' + 
           '            안동소주' + 
           '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
           '        </div>' + 
           '        <div class="body">' + 
           '            <div class="img">' +
           '                <img src="${root }img/courseIntroduce/경상도_안동소주.svg" width="73" height="70">' +
           '           </div>' + 
           '            <div class="desc">' + 
           '                <div class="ellipsis">경북 안동시 풍산읍 산업단지6길 6</div>' + 
           '                <div class="jibun ellipsis">경상북도 안동시 풍산읍 괴정리 1002</div>' +  
           '            </div>' + 
           '        </div>' + 
           '    </div>' +    
   '</div>';
   var content2 = 
   '<div class="wrap">' + 
               '    <div class="info">' + 
               '        <div class="title">' + 
               '             문경주조' + 
               '            <div class="close" onclick="closeOverlay2()" title="닫기"></div>' + 
               '        </div>' + 
               '        <div class="body">' + 
               '            <div class="img">' +
               '                <img src="${root }img/courseIntroduce/경상도_문경주조.png" width="73" height="70">' +
               '           </div>' + 
               '            <div class="desc">' + 
               '                <div class="ellipsis">경북 문경시 동로면 노은1길 49-15</div>' + 
               '                <div class="jibun ellipsis">경상북도 문경시 동로면 노은리 192-2</div>' +  
               '            </div>' + 
               '        </div>' + 
               '    </div>' +    
               '</div>';
   var content3 = 
   '<div class="wrap">' + 
               '    <div class="info">' + 
               '        <div class="title">' + 
               '             한국애플리즈' + 
               '            <div class="close" onclick="closeOverlay3()" title="닫기"></div>' + 
               '        </div>' + 
               '        <div class="body">' + 
               '            <div class="img">' +
               '                <img src="${root }img/courseIntroduce/경상도_애플리즈.svg" width="73" height="70">' +
               '           </div>' + 
               '            <div class="desc">' + 
               '                <div class="ellipsis">경상북도 의성군 단촌면 일직점곡로 755</div>' + 
               '                <div class="jibun ellipsis">경상북도 의성군 단촌면 후평리 69</div>' +  
               '            </div>' + 
               '        </div>' + 
               '    </div>' +    
               '</div>';
//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlay = new kakao.maps.CustomOverlay({
content: content,
map: map,
position: marker.getPosition()       
});

var overlay2 = new kakao.maps.CustomOverlay({
content: content2,
map : map2,
position : marker2.getPosition()
});

var overlay3 = new kakao.maps.CustomOverlay({
content: content3,
map : map3,
position : marker3.getPosition()
});


//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(marker, 'click', function() {
overlay.setMap(map);
});

kakao.maps.event.addListener(marker2, 'click', function() {
overlay2.setMap(map2);
});

kakao.maps.event.addListener(marker3, 'click', function() {
overlay3.setMap(map3);
});

//커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function closeOverlay() {
overlay.setMap(null);     
}

function closeOverlay2() {
overlay2.setMap(null);     
}

function closeOverlay3() {
overlay3.setMap(null);     
}
   </script>
</body>
</html>