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
               <a href="${root }reservation/main?course_number=1" id="s_button">예약하기</a>
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
           <table class="s_table">
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
               <div>2개 코스 <p>30,000원</p></div>
               <p>*도로 교통상황에 따라 도착시간이 달라질 수 있습니다.</p>
           </div>
           <div class="s_brewery-title02">Brewery Information</div>
           <div class="s_brewery-card03">
               <div class="s_card03-box">
                   <div>
                   <img src="${root }img/courseIntroduce/서울-삼해소주.jpg" class="s_breweryBody01_img03" width="300px" height="250px"/>
                   </div>
                   <div class="s_course_p">
                   <p>
                   ■주소 : 서울시 종로구 창덕궁길 142 <br>
                   </p>
                   <p>
                   ■전화번호 : 010 - 5216 - 8093
                   </p>
                   <p>
                   ■Instagram: cooleagan
                   </p>
                   </div>
                   <div class="s_cose_map" id="s_cose1"></div>
               </div>
           </div>

           <div class="s_brewery-title02">Brewery Information</div>
           <div class="s_brewery-card03">
               <div class="s_card03-box">
                   <div>
                   <img src="${root }img/courseIntroduce/서울_더한주류.svg" class="s_breweryBody01_img04" width="300px" height="250px" />
                   </div>
                      <div class="s_course_p">
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
                   <div class="s_cose_map" id="s_cose2"></div>
               </div>
          	</div> 
       	</div>
   	</div>
</div>

<script type="text/javascript">

var soul_cose1 = new kakao.maps.LatLng(37.583259548902355, 126.98799274568442);
var soul_cose2 = new kakao.maps.LatLng(37.58549613015663, 126.90688952421371);

var mapContainer = document.querySelector('#s_cose1'), // 지도를 표시할 div 
mapOption = { 
    center:soul_cose1, // 지도의 중심좌표
    level: 4 // 지도의 확대 레벨
};

var soul_Container2 = document.querySelector("#s_cose2"),
    s_c2_Option = {
        center: soul_cose2,
        level: 4
    };
var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
var map2 = new kakao.maps.Map(soul_Container2,s_c2_Option);


        // 지도에 마커를 표시합니다 
var marker = new kakao.maps.Marker({
    map: map, 
    position:soul_cose1
});
var marker2 = new kakao.maps.Marker({
    map: map2,
    position: soul_cose2
});

// 아래와 같이 옵션을 입력하지 않아도 된다
var zoomControl = new kakao.maps.ZoomControl();
var zoomControl2 = new kakao.maps.ZoomControl();

// 지도 오른쪽에 줌 컨트롤이 표시되도록 지도에 컨트롤을 추가한다.
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
// 마커가 지도 위에 표시되도록 설정합니다
map2.addControl(zoomControl2, kakao.maps.ControlPosition.RIGHT);
        // 커스텀 오버레이에 표시할 컨텐츠 입니다
// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
// 별도의 이벤트 메소드를 제공하지 않습니다 
var content = '<div class="wrap">' + 
'    <div class="info">' + 
'        <div class="title">' + 
'            삼해소주' + 
'            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
'        </div>' + 
'        <div class="body">' + 
'            <div class="img">' +
'                <img src="${root}img/courseIntroduce/서울-삼해소주.jpg" width="73" height="70">' +
'           </div>' + 
'            <div class="desc">' + 
'                <div class="ellipsis">서울시 종로구 창덕궁길 142</div>' + 
'                <div class="jibun ellipsis">종로구 원서동 4-9</div>' +  
'            </div>' + 
'        </div>' + 
'    </div>' +    
'</div>';
var content2 = 
'<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '             더한주류' + 
            '            <div class="close" onclick="closeOverlay1()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="${root}img/courseIntroduce/서울_더한주류.svg" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">서울시 은평구 증산로7길 28-13</div>' + 
            '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' +  
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';
// 마커 위에 커스텀오버레이를 표시합니다
// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlay = new kakao.maps.CustomOverlay({
    content: content,
    map: map,
    position: marker.getPosition()       
});

var s_c2_overlay = new kakao.maps.CustomOverlay({
    content: content2,
    map : map2,
    position : marker2.getPosition()
});


// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(marker, 'click', function() {
    overlay.setMap(map);
});

kakao.maps.event.addListener(marker2, 'click', function() {
    s_c2_overlay.setMap(map2);
});

// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function closeOverlay() {
    overlay.setMap(null);     
}

function closeOverlay1() {
    s_c2_overlay.setMap(null);     
}

</script>

</body>
</html>