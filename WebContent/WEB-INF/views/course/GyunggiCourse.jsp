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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e3b77ddbf353b2397ed468cf5eb770f0"></script>
<link rel="stylesheet" href="${root }css/course/course3.css" />
<title>Insert title here</title>
</head>
<body>
	<div id="breweryBox">
		<div class="brewery-container01">
			<div class="brewery-card01" style="position: absolute;">
				<h3>~ in Gyunggi ~</h3>
				<p style="font-size: 40px; font-weight: bold;">
					도시에서 즐기는 술 한잔<br> 빌딩 숲 사이에서 느낄 수 있는 여유
				</p>
				<p>
					남산과 한강이 보이는 드라이브를 즐기며 증류주의 맛을 체험하는 도심형 코스!<br> 조선시대 사대부가 즐겨마셨던
					삼해주, 매실로 빚어낸 서울식 GIN을 맛보는 여행.
				</P>
				<div class="breweryButton">
					<a href="">예약하기</a>
				</div>
			</div>
		</div>
		<div class="brewery-container02">
			<div class="brewery-ct2" style="margin-top: 340px;">
				<div class="brewery-title">Gyunggi course</div>
				<div class="brewery-cir">
					<!-- 누끼 -->
					<img src="C:/Users/user/Desktop/기업프로젝트/코스/제품이미지/서울/누끼/삼해소주-누끼.png"
						class="breweryBody01_img01"> <img
						src="C:/Users/user/Desktop/기업프로젝트/코스/제품이미지/서울/누끼/서울의밤-누끼.png"
						class="breweryBody01_img02"> <img
						src="C:/Users/user/Desktop/기업프로젝트/코스/제품이미지/서울/누끼/서울의밤-누끼.png"
						class="breweryBody01_img03">
				</div>
				<table>
					<thead>
						<!-- 순서도, 시간 -->
						<tr>
							<td>고속버스 터미널</td>
							<td class="dotted"></td>
							<td>배혜정도가</td>
							<td class="dotted"></td>
							<td>호랑이배꼽</td>
							<td class="dotted"></td>
							<td>그랑꼬또와인</td>
							<td class="dotted"></td>
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
				<div class="brewery-memo">
					<div>
						3개 코스
						<p></p>
						원
					</div>
					<p>*도로 교통상황에 따라 도착시간이 달라질 수 있습니다.</p>
				</div>
				<div class="brewery-title02">Brewery Information</div>
				<div class="brewery-card03">
					<div class="card03-box">
						<div>
							<img src="${root }img/courseIntroduce/경기도_배혜정도가.png" class="breweryBody01_img04" />
						</div>
						<div class="course_p">
							<p>
								■주소 : 서울시 종로구 창덕궁길 142 <br> ( 서울시 종로구 원서동 4-9 )
							</p>
							<p>■전화번호 : 010 - 5216 - 8093</p>
							<p>■Instagram: cooleagan</p>
						</div>
						<div class="cose_map" id="gyung_cose1"></div>
					</div>
				</div>

				<div class="brewery-title02">Brewery Information</div>
				<div class="brewery-card03">
					<div class="card03-box">
						<div>
							<img src="./gyunggiIMG/경기도-호랑이배꼽.png" class="breweryBody01_img05" />
						</div>
						<div class="course_p">
							<p>■주소: 서울시 은평구 증산로7길 28-13</p>
							<p>■전화번호 : 02-2280-8080</p>
							<p>■Instagram: thehan.kr</p>
						</div>
						<div class="cose_map" id="gyung_cose2"></div>
					</div>
				</div>
				<div class="brewery-title02">Brewery Information</div>
				<div class="brewery-card03">
					<div class="card03-box">
						<div>
							<img src="./gyunggiIMG/경기도-그랑꼬또.png" class="breweryBody01_img05" />
						</div>
						<div class="course_p">
							<p>■주소: 서울시 은평구 증산로7길 28-13</p>
							<p>■전화번호 : 02-2280-8080</p>
							<p>■Instagram: thehan.kr</p>
						</div>
						<div class="cose_map" id="gyung_cose3"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">

    var cose1 = new kakao.maps.LatLng(37.48046381265308, 126.98317932931961);
    var cose2 = new kakao.maps.LatLng(36.97125147009303, 126.87366355487707);
    var cose3 = new kakao.maps.LatLng(37.25743703925287, 126.58231542190053);

    var mapContainer = document.querySelector("#gyung_cose1"), // 지도를 표시할 div 
    mapOption = { 
        center: cose1, // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

    var mapContainer2 = document.querySelector("#gyung_cose2"),
        mapOption2 = {
            center: cose2,
            level: 3
        };
    
    var mapContainer3 = document.querySelector("#gyung_cose3"),
    mapOption3 = {
      center: cose3,
      level: 3
        };
    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
    var map2 = new kakao.maps.Map(mapContainer2,mapOption2);
    var map3 = new kakao.maps.Map(mapContainer3,mapOption3);


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
    var root = document.getElementById("root_context").value;
    var content = 
    '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            배혜정도가' + 
            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="${root}/img/courseIntroduce/경기도-배혜정도가.png" width="73" height="70">' +
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
                '             호랑이배꼽' + 
                '            <div class="close" onclick="closeOverlay2()" title="닫기"></div>' + 
                '        </div>' + 
                '        <div class="body">' + 
                '            <div class="img">' +
                '                <img src="${root}/img/courseIntroduce/경기도-호랑이배꼽.png" width="73" height="70">' +
                '           </div>' + 
                '            <div class="desc">' + 
                '                <div class="ellipsis">서울시 은평구 증산로7길 28-13</div>' + 
                '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' +  
                '            </div>' + 
                '        </div>' + 
                '    </div>' +    
                '</div>';
    var content3 = 
    '<div class="wrap">' + 
                '    <div class="info">' + 
                '        <div class="title">' + 
                '             그랑꼬또' + 
                '            <div class="close" onclick="closeOverlay3()" title="닫기"></div>' + 
                '        </div>' + 
                '        <div class="body">' + 
                '            <div class="img">' +
                '                <img src="${root}/img/courseIntroduce/경기도-그랑꼬또.png" width="73" height="70">' +
                '           </div>' + 
                '            <div class="desc">' + 
                '                <div class="ellipsis">서울시 은평구 증산로7길 28-13</div>' + 
                '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' +  
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