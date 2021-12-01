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
<link rel="stylesheet" href="${root }css/course/ChoongcheongCourse.css" />
</head>
<body>
	<div id="cc_breweryBox">
		<div class="cc_brewery-container01">
			<div class="cc_brewery-card01" style="position: absolute;">
				<h3>~ in Choongcheong ~</h3>
				<p style="font-size: 40px; font-weight: bold;">
					살어리 살어리 랏다 청산애 살어리랏다<br> 포도랑 와인이랑 먹고 청산애 살어리랏다
				</p>
				<p>
					첩첩산중에서 재배된 신선한 과일로 만든 와인!<br> 향긋한 포도와인과 자두와인을
					산자락에서 음미해보세요.
				</P>
				<div class="cc_breweryButton">
					<a href="${root }reservation/main?course_number=3" id="cc_button">예약하기</a>
				</div>
			</div>
		</div>
		<div class="cc_brewery-container02">
			<div style="margin-top: 340px;">
				<div class="cc_brewery-title">Choongcheong course</div>
				<div class="cc_brewery-cir">
					<!-- 누끼 -->
					<div class="cc_cir_div">
						<div class="cc_cir_div2">
							<img src="${root }img/courseIntroduce/충북_여포와인_꿈.png"
								class="cc_breweryBody01_img01" width="350px" height="280px">
						</div>
						<div class="cc_cir_div2">
							<img src="${root }img/courseIntroduce/충북_도란원_샤토미소.png"
								class="cc_breweryBody01_img02" width="350px" height="280px">
						</div>
						<div class="cc_cir_div2">
							<img src="${root }img/courseIntroduce/충북_시나브로와이너리_시나브로.png"
								class="cc_breweryBody01_img03" width="150px" height="280px">
						</div>
					</div>
				</div>
				<table>
					<thead>
						<!-- 순서도, 시간 -->
						<tr>
							<td>정부청사역</td>
							<td class="cc_dotted"></td>
							<td>여포와인</td>
							<td class="cc_dotted"></td>
							<td>도란원</td>
							<td class="cc_dotted"></td>
							<td>시나브로 와이너리</td>
							<td class="cc_dotted"></td>
							<td>정부청사역</td>
						</tr>
						<tr>
							<!--시간-->
							<td>13:00</td>
							<td></td>
							<td>14:30</td>
							<td></td>
							<td>15:30</td>
							<td></td>
							<td>16:30</td>
							<td></td>
							<td>17:40</td>
						</tr>
					</thead>
				</table>
				<div class="cc_brewery-memo">
					<div>
						3개 코스
						<p>40,000원</p>
					</div>
					<p>*도로 교통상황에 따라 도착시간이 달라질 수 있습니다.</p>
				</div>
				<div class="cc_brewery-title02">Brewery Information</div>
				<div class="cc_brewery-card03">
					<div class="cc_card03-box">
						<div>
							<img src="${root }img/courseIntroduce/충청_여포와인.svg"
								class="cc_breweryBody01_img04" width="300px" height="250px" />
						</div>
						<div class="cc_course_p">
							<p>
								■주소 : 충청북도 영동군 양강면 유점지촌길 75 <br>
							</p>
							<p>■전화번호 : 043 - 744 - 7702</p>
						</div>
						<div class="cc_cose_map" id="cc_cose1"></div>
					</div>
				</div>

				<div class="cc_brewery-title02">Brewery Information</div>
				<div class="cc_brewery-card03">
					<div class="cc_card03-box">
						<div>
							<img src="${root}img/courseIntroduce/충청도-도란원.png" class="cc_breweryBody01_img05" width="300px" height="250px" />
						</div>
						<div class="cc_course_p">
							<p>■주소: 충북 영동군 매곡면 유전장척길 143</p>
							<p>■전화번호 : 043 - 743 - 2109</p>
						</div>
						<div class="cc_cose_map" id="cc_cose2"></div>
					</div>
				</div>
				<div class="cc_brewery-title02">Brewery Information</div>
				<div class="cc_brewery-card03">
					<div class="cc_card03-box">
						<div>
							<img src="${root}img/courseIntroduce/충청_시나브로.svg" class="cc_breweryBody01_img05" width="300px" height="250px" />
						</div>
						<div class="cc_course_p">
							<p>■주소: 충청북도 영동군 심천면 약목2길 26</p>
							<p>■전화번호 : 043 - 742 - 5275</p>
						</div>
						<div class="cc_cose_map" id="cc_cose3"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	 var cc_cose1 = new kakao.maps.LatLng(36.126484390664565, 127.74438125484708);
     var cc_cose2 = new kakao.maps.LatLng(36.19235151069039, 127.93682499532838);
     var cc_cose3 = new kakao.maps.LatLng(36.162822141115775, 127.78637386649156);

     var cc_mapContainer = document.querySelector('#cc_cose1'), // 지도를 표시할 div 
     cc_mapOption = { 
         center:cc_cose1, // 지도의 중심좌표
         level: 3 // 지도의 확대 레벨
     };

     var cc_mapContainer2 = document.querySelector("#cc_cose2"),
     cc_mapOption2 = {
             center: cc_cose2,
             level: 3
         };
     
     var cc_mapContainer3 = document.querySelector("#cc_cose3"),
     cc_mapOption3 = {
       center: cc_cose3,
       level: 3
         };
     var cc_map = new kakao.maps.Map(cc_mapContainer, cc_mapOption); // 지도를 생성합니다
     var cc_map2 = new kakao.maps.Map(cc_mapContainer2,cc_mapOption2);
     var cc_map3 = new kakao.maps.Map(cc_mapContainer3,cc_mapOption3);

             // 지도에 마커를 표시합니다 
     var cc_marker = new kakao.maps.Marker({
         map: cc_map, 
         position:cc_cose1
     });
     var cc_marker2 = new kakao.maps.Marker({
         map: cc_map2,
         position: cc_cose2
     });

     var cc_marker3 = new kakao.maps.Marker({
         map: cc_map3,
         position: cc_cose3
     });


     // 아래와 같이 옵션을 입력하지 않아도 된다
     var cc_zoomControl = new kakao.maps.ZoomControl();
     var cc_zoomControl2 = new kakao.maps.ZoomControl();
     var cc_zoomControl3 = new kakao.maps.ZoomControl();

     // 지도 오른쪽에 줌 컨트롤이 표시되도록 지도에 컨트롤을 추가한다.
     cc_map.addControl(cc_zoomControl, kakao.maps.ControlPosition.RIGHT);
     // 마커가 지도 위에 표시되도록 설정합니다
    cc_map2.addControl(cc_zoomControl2, kakao.maps.ControlPosition.RIGHT);
     
    cc_map3.addControl(cc_zoomControl3, kakao.maps.ControlPosition.RIGHT);
     
             // 커스텀 오버레이에 표시할 컨텐츠 입니다
     // 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
     // 별도의 이벤트 메소드를 제공하지 않습니다 
     var cc_content = 
     '<div class="wrap">' + 
             '    <div class="info">' + 
             '        <div class="title">' + 
             '            여포와인' + 
             '            <div class="close" onclick="cc_closeOverlay()" title="닫기"></div>' + 
             '        </div>' + 
             '        <div class="body">' + 
             '            <div class="img">' +
             '                <img src="${root }img/courseIntroduce/충청_여포와인.svg" width="73" height="70">' +
             '           </div>' + 
             '            <div class="desc">' + 
             '                <div class="ellipsis">충청북도 영동군 양강면 유점지촌길 75</div>' + 
             '                <div class="jibun ellipsis">충청북도 영동군 양강면 유점리 283</div>' +  
             '            </div>' + 
             '        </div>' + 
             '    </div>' +    
     '</div>';
     var cc_content2 = 
     '<div class="wrap">' + 
                 '    <div class="info">' + 
                 '        <div class="title">' + 
                 '             도란원' + 
                 '            <div class="close" onclick="cc_closeOverlay2()" title="닫기"></div>' + 
                 '        </div>' + 
                 '        <div class="body">' + 
                 '            <div class="img">' +
                 '                <img src="${root}img/courseIntroduce/충청도-도란원.png" width="73" height="70">' +
                 '           </div>' + 
                 '            <div class="desc">' + 
                 '                <div class="ellipsis">충북 영동군 매곡면 유전장척길 143</div>' + 
                 '                <div class="jibun ellipsis">충청북도 영동군 매곡면 옥전리 825</div>' +  
                 '            </div>' + 
                 '        </div>' + 
                 '    </div>' +    
                 '</div>';
     var cc_content3 = 
     '<div class="wrap">' + 
                 '    <div class="info">' + 
                 '        <div class="title">' + 
                 '             시나브로와이너리' + 
                 '            <div class="close" onclick="cc_closeOverlay3()" title="닫기"></div>' + 
                 '        </div>' + 
                 '        <div class="body">' + 
                 '            <div class="img">' +
                 '                <img src="${root}img/courseIntroduce/충청_시나브로.svg" width="73" height="70">' +
                 '           </div>' + 
                 '            <div class="desc">' + 
                 '                <div class="ellipsis">충청북도 영동군 심천면 약목2길 26</div>' + 
                 '                <div class="jibun ellipsis">충청북도 영동군 심천면 약목리 584-2</div>' +  
                 '            </div>' + 
                 '        </div>' + 
                 '    </div>' +    
                 '</div>';
//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var cc_overlay = new kakao.maps.CustomOverlay({
content: cc_content,
map: cc_map,
position:cc_marker.getPosition()       
});

var cc_overlay2 = new kakao.maps.CustomOverlay({
content: cc_content2,
map : cc_map2,
position : cc_marker2.getPosition()
});

var cc_overlay3 = new kakao.maps.CustomOverlay({
content: cc_content3,
map : cc_map3,
position : cc_marker3.getPosition()
});


//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(cc_marker, 'click', function() {
	cc_overlay.setMap(cc_map);
});

kakao.maps.event.addListener(cc_marker2, 'click', function() {
	cc_overlay2.setMap(cc_map2);
});

kakao.maps.event.addListener(cc_marker3, 'click', function() {
	cc_overlay3.setMap(cc_map3);
});

//커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function cc_closeOverlay() {
	cc_overlay.setMap(null);     
}

function cc_closeOverlay2() {
	cc_overlay2.setMap(null);     
}

function cc_closeOverlay3() {
	cc_overlay3.setMap(null);     
}
	</script>
</body>
</html>