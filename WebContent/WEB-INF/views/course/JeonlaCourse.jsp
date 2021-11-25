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
               <a href="${root }reservation/main?course_number=4" id="jl_button">예약하기</a>
           </div>
       </div>
   </div>
   <div class="jl_brewery-container02">
       <div class="jl_brewery-ct2" style="margin-top: 340px;">
           <div class="jl_brewery-title">Jeonla course</div>
           <div class="jl_brewery-cir">
           		<div class="jl_cir_div">
           			<div class="jl_cir_div2">
               			<img src="${root }img/courseIntroduce/전라도_청산녹수_g12.png"
               			 class="jl_breweryBody01_img01" width="120px" height="300px">
               		</div>
               		<div class="jl_cir_div2">
               			<img src="${root }img/courseIntroduce/전라도_추성고을_추성주.png" 
               			class="jl_breweryBody01_img02"  width="120px" height="300px">
               		</div>
               </div>
           </div>
           <table class="jl_table">
               <thead>
                   <!-- 순서도, 시간 -->
						<tr>
							<td>광주터미널</td>
							<td class="jl_dotted"></td>
							<td>청산녹수</td>
							<td class="jl_dotted"></td>
							<td>추성고을</td>
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
                   <img src="${root }img/courseIntroduce/전라_청산녹수.svg" class="jl_breweryBody01_img03" width="300px" height="250px"/>
                   </div>
                   <div class="jl_course_p">
                   <p>
                   ■주소 : 전남 장성군 장성읍 남양촌길 (백계리) 19<br>
                   </p>
                   <p>
                   ■전화번호 : 061 - 393 - 4141
                   </p>
                   </div>
                   <div class="jl_cose_map" id="jl_cose1"></div>
               </div>
           </div>

           <div class="jl_brewery-title02">Brewery Information</div>
           <div class="jl_brewery-card03">
               <div class="jl_card03-box">
                   <div>
                   <img src="${root }img/courseIntroduce/전라_추성고을.svg" class="jl_breweryBody01_img04" width="300px" height="250px" />
                   </div>
                   <div class="jl_course_p">
                   <p>
                   ■주소: 전라남도 담양군 용면 추성리 662-5<br>
                   </p>
                   <p>
                   ■전화번호 : 061 - 383 - 3011
                   </p>
                   </div>
                   <div class="jl_cose_map" id="jl_cose2"></div>
               </div>
          	</div> 
       	</div>
   	</div>
</div>

<script type="text/javascript">

var jl_cose1 = new kakao.maps.LatLng(35.34530836228015, 126.81086249827507);
var jl_cose2 = new kakao.maps.LatLng(35.36652696049865, 126.98533951267824);


var jl_mapContainer = document.querySelector('#jl_cose1'), // 지도를 표시할 div 
jl_mapOption = { 
    center:jl_cose1, // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

var jl_mapContainer2 = document.querySelector("#jl_cose2"),
jl_mapOption2 = {
        center: jl_cose2,
        level: 3
    };

var jl_map = new kakao.maps.Map(jl_mapContainer, jl_mapOption); // 지도를 생성합니다
var jl_map2 = new kakao.maps.Map(jl_mapContainer2,jl_mapOption2);

        // 지도에 마커를 표시합니다 
var jl_marker = new kakao.maps.Marker({
    map: jl_map, 
    position:jl_cose1
});
var jl_marker2 = new kakao.maps.Marker({
    map: jl_map2,
    position: jl_cose2
});




// 아래와 같이 옵션을 입력하지 않아도 된다
var jl_zoomControl = new kakao.maps.ZoomControl();
var jl_zoomControl2 = new kakao.maps.ZoomControl();


// 지도 오른쪽에 줌 컨트롤이 표시되도록 지도에 컨트롤을 추가한다.
jl_map.addControl(jl_zoomControl, kakao.maps.ControlPosition.RIGHT);
// 마커가 지도 위에 표시되도록 설정합니다
jl_map2.addControl(jl_zoomControl2, kakao.maps.ControlPosition.RIGHT);


        // 커스텀 오버레이에 표시할 컨텐츠 입니다
// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
// 별도의 이벤트 메소드를 제공하지 않습니다 
var jl_content = 
'<div class="wrap">' + 
        '    <div class="info">' + 
        '        <div class="title">' + 
        '            (주)청산녹수' + 
        '            <div class="close" onclick="jl_closeOverlay()" title="닫기"></div>' + 
        '        </div>' + 
        '        <div class="body">' + 
        '            <div class="img">' +
        '                <img src="${root }img/courseIntroduce/전라_청산녹수.svg" width="73" height="70">' +
        '           </div>' + 
        '            <div class="desc">' + 
        '                <div class="ellipsis">전남 장성군 장성읍 남양촌길 (백계리) 19</div>' + 
        '                <div class="jibun ellipsis">전라남도 장성군 장성읍 백계리 444-1</div>' +  
        '            </div>' + 
        '        </div>' + 
        '    </div>' +    
'</div>';
var jl_content2 = 
'<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '             추성고을' + 
            '            <div class="close" onclick="jl_closeOverlay2()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="${root }img/courseIntroduce/전라_추성고을.svg" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">전라남도 담양군 용면 추성리 662-5</div>' + 
            '                <div class="jibun ellipsis">전라남도 담양군 용면 추성리 662-5</div>' +  
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';
//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var jl_overlay = new kakao.maps.CustomOverlay({
content: jl_content,
map: jl_map,
position: jl_marker.getPosition()       
});

var jl_overlay2 = new kakao.maps.CustomOverlay({
content: jl_content2,
map : jl_map2,
position : jl_marker2.getPosition()
});


//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(jl_marker, 'click', function() {
	jl_overlay.setMap(jl_map);
});

kakao.maps.event.addListener(jl_marker2, 'click', function() {
	jl_overlay2.setMap(jl_map2);
});



//커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function jl_closeOverlay() {
	jl_overlay.setMap(null);     
}

function jl_closeOverlay2() {
	jl_overlay2.setMap(null);     
}

</script>

</body>
</html>