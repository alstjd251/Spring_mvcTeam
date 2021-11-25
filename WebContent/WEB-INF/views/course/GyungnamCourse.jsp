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
           <p>머루로 빚은 특별한 와인과 국산 쌀로 빚어낸 막걸리!<br>
           드넓은 논, 고지의 자리한 평원에 위치한 양조장을 느껴보세요.</p>
           <div class="gn_breweryButton">
               <a href="${root }reservation/main?course_number=6" id="gn_button">예약하기</a>
           </div>
       </div>
   </div>
   <div class="gn_brewery-container02">
       <div class="gn_brewery-ct2" style="margin-top: 340px;">
           <div class="gn_brewery-title">Gyungnam course</div>
           <div class="gn_brewery-cir">
           		<div class="gn_cir_div">
           			<div class="gn_cir_div2">
               			<img src="${root }img/courseIntroduce/경남_복순도가_복순도가.png" class="gn_breweryBody01_img01" 
               			width="120px" height="300px">
               		</div>
               		<div class="gn_cir_div2">
               			<img src="${root }img/courseIntroduce/경남_하미앙와인밸리_하미앙.png" class="gn_breweryBody01_img02"
               			width="120px" height="300px">
               		</div>
               </div>
           </div>
           <table class="gn_table">
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
               <div>2개 코스 <p>50,000원</p></div>
               <p>*도로 교통상황에 따라 도착시간이 달라질 수 있습니다.</p>
           </div>
           <div class="gn_brewery-title02">Brewery Information</div>
           <div class="gn_brewery-card03">
               <div class="gn_card03-box">
                   <div>
                   <img src="${root }img/courseIntroduce/경남_복순도가.png" class="gn_breweryBody01_img03" width="300px" height="250px"/>
                   </div>
                   <div class="gn_course_p">
                   <p>
                   ■주소 : 울산광역시 울주군 상북면 향산동길 48
                   </p>
                   <p>
                   ■전화번호 : 1577 - 6746
                   </p>
                   </div>
                   <div class="gn_cose_map" id="gn_cose1"></div>
               </div>
           </div>

           <div class="gn_brewery-title02">Brewery Information</div>
           <div class="gn_brewery-card03">
               <div class="gn_card03-box">
                   <div>
                   <img src="${root }img/courseIntroduce/경남_하미앙.svg" class="gn_breweryBody01_img04" width="300px" height="250px" />
                   </div>
                   <div class="gn_course_p">
                   <p>
                   ■주소: 경상남도 함양군 함양읍 삼봉로 442-14
                   </p>
                   <p>
                   ■전화번호 : 055 - 964 - 2500
                   </p>
                   </div>
                   <div class="gn_cose_map" id="gn_cose2"></div>
               </div>
          	</div> 
       	</div>
   	</div>
</div>

<script type="text/javascript">
var gn_cose1 = new kakao.maps.LatLng(35.58577153276394, 129.0974782529786);
var gn_cose2 = new kakao.maps.LatLng(35.4701051467703, 127.67172748181025);


var gn_mapContainer = document.querySelector("#gn_cose1"), // 지도를 표시할 div 
gn_mapOption = { 
    center:gn_cose1, // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

var gn_mapContainer2 = document.querySelector("#gn_cose2"),
gn_mapOption2 = {
        center: gn_cose2,
        level: 3
    };

var gn_map = new kakao.maps.Map(gn_mapContainer, gn_mapOption); // 지도를 생성합니다
var gn_map2 = new kakao.maps.Map(gn_mapContainer2,gn_mapOption2);

gn_map.relayout();
gn_map2.relayout();


        // 지도에 마커를 표시합니다 
var gn_marker = new kakao.maps.Marker({
    map: gn_map, 
    position:gn_cose1
});
var gn_marker2 = new kakao.maps.Marker({
    map: gn_map2,
    position: gn_cose2
});




// 아래와 같이 옵션을 입력하지 않아도 된다
var gn_zoomControl = new kakao.maps.ZoomControl();
var gn_zoomControl2 = new kakao.maps.ZoomControl();


// 지도 오른쪽에 줌 컨트롤이 표시되도록 지도에 컨트롤을 추가한다.
gn_map.addControl(gn_zoomControl, kakao.maps.ControlPosition.RIGHT);
// 마커가 지도 위에 표시되도록 설정합니다
gn_map2.addControl(gn_zoomControl2, kakao.maps.ControlPosition.RIGHT);


        // 커스텀 오버레이에 표시할 컨텐츠 입니다
// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
// 별도의 이벤트 메소드를 제공하지 않습니다 
var gn_content = 
'<div class="wrap">' + 
        '    <div class="info">' + 
        '        <div class="title">' + 
        '            복순도가' + 
        '            <div class="close" onclick="gn_closeOverlay()" title="닫기"></div>' + 
        '        </div>' + 
        '        <div class="body">' + 
        '            <div class="img">' +
        '                <img src="${root }img/courseIntroduce/경남_복순도가.png" width="73" height="70">' +
        '           </div>' + 
        '            <div class="desc">' + 
        '                <div class="ellipsis">울산광역시 울주군 상북면 향산동길 48</div>' + 
        '                <div class="jibun ellipsis">울산광역시 울주군 상북면 향산리 439</div>' +  
        '            </div>' + 
        '        </div>' + 
        '    </div>' +    
'</div>';
var gn_content2 = 
'<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '             하미앙' + 
            '            <div class="close" onclick="gn_closeOverlay2()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="${root }img/courseIntroduce/경남_하미앙.svg" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">경상남도 함양군 함양읍 삼봉로 442-14</div>' + 
            '                <div class="jibun ellipsis">경상남도 함양군 함양읍 죽림리 817-7</div>' +  
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';
//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var gn_overlay = new kakao.maps.CustomOverlay({
content: gn_content,
map: gn_map,
position: gn_marker.getPosition()       
});

var gn_overlay2 = new kakao.maps.CustomOverlay({
content: gn_content2,
map :gn_map2,
position : gn_marker2.getPosition()
});


//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(gn_marker, 'click', function() {
	gn_overlay.setMap(gn_map);
});

kakao.maps.event.addListener(gn_marker2, 'click', function() {
	gn_overlay2.setMap(gn_map2);
});



//커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function gn_closeOverlay() {
	gn_overlay.setMap(null);     
}

function gn_closeOverlay2() {
	gn_overlay2.setMap(null);     
}
</script>
</body>
</html>