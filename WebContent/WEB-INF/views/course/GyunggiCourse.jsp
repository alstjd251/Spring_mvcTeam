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
<link rel="stylesheet" href="${root }css/course/GyunggiCourse.css" />
<title>Insert title here</title>
</head>
<body>
	<div id="gg_breweryBox">
		<div class="gg_brewery-container01">
			<div class="gg_brewery-card01" style="position: absolute;">
				<h3>~ in Gyunggi ~</h3>
				<p style="font-size: 40px; font-weight: bold;">
					서해안 바닷바람을 안주 삼아<br> 가까운 듯 머나먼 곳으로 가고 싶으신가요?
				</p>
				<p>
					서해에 인접한 경기남부 대표 도시들을 돌아보세요.<br> 선물용으로도 탁월한 패키지의
					막걸리들을 시작으로 달콤쌉쌀한 와인까지!
				</P>
				<div class="gg_breweryButton">
					<a href="${root }reservation/main?course_number=2" id="gg_button">예약하기</a>
				</div>
			</div>
		</div>
		<div class="gg_brewery-container02">
			<div class="gg_brewery-ct2" style="margin-top: 340px;">
				<div class="gg_brewery-title">Gyunggi course</div>
				<div class="gg_brewery-cir">
					<!-- 누끼 -->
					<div class="gg_cir_div">
						<div class="gg_cir_div2">
							<img src="${root }img/courseIntroduce/경기_배혜정도가_호랑이막걸리.png"
								class="gg_breweryBody01_img01" width="150px" height="280px">
						</div>
						<div class="gg_cir_div2">
							<img src="${root }img/courseIntroduce/경기_호랑이배꼽.png"
								class="gg_breweryBody01_img02" width="150px" height="280px">
						</div>
						<div class="gg_cir_div2">
							<img src="${root }img/courseIntroduce/경기_그랑꼬또.png"
								class="gg_breweryBody01_img03" width="300px" height="280px">
						</div>
					</div>
				</div>
				<table>
					<thead>
						<!-- 순서도, 시간 -->
						<tr>
							<td>고속버스 터미널</td>
							<td class="gg_dotted"></td>
							<td>배혜정도가</td>
							<td class="gg_dotted"></td>
							<td>호랑이배꼽</td>
							<td class="gg_dotted"></td>
							<td>그랑꼬또와인</td>
							<td class="gg_dotted"></td>
							<td>고속버스 터미널</td>
						</tr>
						<tr>
							<!--시간-->
							<td>12:30</td>
							<td></td>
							<td>13:30</td>
							<td></td>
							<td>14:40</td>
							<td></td>
							<td>16:00</td>
							<td></td>
							<td>17:30</td>
						</tr>
					</thead>
				</table>
				<div class="gg_brewery-memo">
					<div>
						3개 코스
						<p>35,000원</p>
					</div>
					<p>*도로 교통상황에 따라 도착시간이 달라질 수 있습니다.</p>
				</div>
				<div class="gg_brewery-title02">Brewery Information</div>
				<div class="gg_brewery-card03">
					<div class="gg_card03-box">
						<div>
							<img src="${root }img/courseIntroduce/경기_배혜정도가.svg"
								class="gg_breweryBody01_img04" width="300px" height="250px" />
						</div>
						<div class="gg_course_p">
							<p>
								■주소 : 경기도 화성시 정남면 서봉로 835<br>
							</p>
							<p>■전화번호 :031 - 354 - 9376</p>
						</div>
						<div class="gg_cose_map" id="gg_cose1"></div>
					</div>
				</div>

				<div class="gg_brewery-title02">Brewery Information</div>
				<div class="gg_brewery-card03">
					<div class="gg_card03-box">
						<div>
							<img src="${root }img/courseIntroduce/경기_호랑이배꼽.svg" class="breweryBody01_img05" width="300px" height="250px" />
						</div>
						<div class="gg_course_p">
							<p>■주소: 경기 평택시 포승읍 충열길 37</p>
							<p>■전화번호 : 031 - 683 - 0981</p>
						</div>
						<div class="gg_cose_map" id="gg_cose2"></div>
					</div>
				</div>
				<div class="gg_brewery-title02">Brewery Information</div>
				<div class="gg_brewery-card03">
					<div class="gg_card03-box">
						<div>
							<img src="${root }img/courseIntroduce/그랑꼬또_logo.svg" class="breweryBody01_img06" width="300px" height="250px" />
						</div>
						<div class="gg_course_p">
							<p>■주소: 경기 안산시 단원구 뻐꾹산길 107</p>
							<p>■전화번호 : 0507 - 1342 - 9873</p>
						</div>
						<div class="gg_cose_map" id="gg_cose3"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">

    var gg_cose1 = new kakao.maps.LatLng(37.48046381265308, 126.98317932931961);
    var gg_cose2 = new kakao.maps.LatLng(36.97125147009303, 126.87366355487707);
    var gg_cose3 = new kakao.maps.LatLng(37.25743703925287, 126.58231542190053);

    var gg_mapContainer = document.querySelector('#gg_cose1'), // 지도를 표시할 div 
    gg_mapOption = { 
        center:gg_cose1, // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

    var gg_mapContainer2 = document.querySelector("#gg_cose2"),
    gg_mapOption2 = {
            center: gg_cose2,
            level: 3
        };
    
    var gg_mapContainer3 = document.querySelector("#gg_cose3"),
    gg_mapOption3 = {
      center: gg_cose3,
      level: 3
        };
    var gg_map = new kakao.maps.Map(gg_mapContainer, gg_mapOption); // 지도를 생성합니다
    var gg_map2 = new kakao.maps.Map(gg_mapContainer2,gg_mapOption2);
    var gg_map3 = new kakao.maps.Map(gg_mapContainer3,gg_mapOption3);


            // 지도에 마커를 표시합니다 
    var gg_marker = new kakao.maps.Marker({
        map: gg_map, 
        position:gg_cose1
    });
    var gg_marker2 = new kakao.maps.Marker({
        map: gg_map2,
        position: gg_cose2
    });

    var gg_marker3 = new kakao.maps.Marker({
        map: gg_map3,
        position: gg_cose3
    });


    // 아래와 같이 옵션을 입력하지 않아도 된다
    var gg_zoomControl = new kakao.maps.ZoomControl();
    var gg_zoomControl2 = new kakao.maps.ZoomControl();
    var gg_zoomControl3 = new kakao.maps.ZoomControl();

    // 지도 오른쪽에 줌 컨트롤이 표시되도록 지도에 컨트롤을 추가한다.
    gg_map.addControl(gg_zoomControl, kakao.maps.ControlPosition.RIGHT);
    // 마커가 지도 위에 표시되도록 설정합니다
    gg_map2.addControl(gg_zoomControl2, kakao.maps.ControlPosition.RIGHT);
    
    gg_map3.addControl(gg_zoomControl3, kakao.maps.ControlPosition.RIGHT);
    
            // 커스텀 오버레이에 표시할 컨텐츠 입니다
    // 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
    // 별도의 이벤트 메소드를 제공하지 않습니다 
    var gg_content = 
    '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            배혜정도가' + 
            '            <div class="close" onclick="gg_closeOverlay()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="${root }img/courseIntroduce/경기_배혜정도가.svg" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">경기도 화성시 정남면 서봉로 835</div>' + 
            '                <div class="jibun ellipsis">경기도 화성시 정남면 문학리 674-23</div>' +  
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
    '</div>';
    var gg_content2 = 
    '<div class="wrap">' + 
                '    <div class="info">' + 
                '        <div class="title">' + 
                '             호랑이배꼽' + 
                '            <div class="close" onclick="gg_closeOverlay2()" title="닫기"></div>' + 
                '        </div>' + 
                '        <div class="body">' + 
                '            <div class="img">' +
                '                <img src="${root }img/courseIntroduce/경기_호랑이배꼽.svg" width="73" height="70">' +
                '           </div>' + 
                '            <div class="desc">' + 
                '                <div class="ellipsis">경기 평택시 포승읍 충열길 37</div>' + 
                '                <div class="jibun ellipsis">경기도 평택시 포승읍 희곡리 66-1</div>' +  
                '            </div>' + 
                '        </div>' + 
                '    </div>' +    
                '</div>';
    var gg_content3 = 
    '<div class="wrap">' + 
                '    <div class="info">' + 
                '        <div class="title">' + 
                '             그랑꼬또' + 
                '            <div class="close" onclick="gg_closeOverlay3()" title="닫기"></div>' + 
                '        </div>' + 
                '        <div class="body">' + 
                '            <div class="img">' +
                '                <img src="${root }img/courseIntroduce/그랑꼬또_logo.svg" width="73" height="70">' +
                '           </div>' + 
                '            <div class="desc">' + 
                '                <div class="ellipsis">경기 안산시 단원구 뻐꾹산길 107</div>' + 
                '                <div class="jibun ellipsis">경기도 안산시 단원구 대부북동 1011-3</div>' +  
                '            </div>' + 
                '        </div>' + 
                '    </div>' +    
                '</div>';
//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var gg_overlay = new kakao.maps.CustomOverlay({
content: gg_content,
map: gg_map,
position: gg_marker.getPosition()       
});

var gg_overlay2 = new kakao.maps.CustomOverlay({
content: gg_content2,
map : gg_map2,
position : gg_marker2.getPosition()
});

var gg_overlay3 = new kakao.maps.CustomOverlay({
content: gg_content3,
map : gg_map3,
position : gg_marker3.getPosition()
});


//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(gg_marker, 'click', function() {
	gg_overlay.setMap(gg_map);
});

kakao.maps.event.addListener(gg_marker2, 'click', function() {
	gg_overlay2.setMap(gg_map2);
});

kakao.maps.event.addListener(gg_marker3, 'click', function() {
	gg_overlay3.setMap(gg_map3);
});

//커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function gg_closeOverlay() {
	gg_overlay.setMap(null);     
}

function gg_closeOverlay2() {
	gg_overlay2.setMap(null);     
}

function gg_closeOverlay3() {
	gg_overlay2.setMap(null);     
}

</script>
</body>
</html>