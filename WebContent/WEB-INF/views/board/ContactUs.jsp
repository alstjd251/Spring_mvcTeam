<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Sul Sure</title>
<head>
	<script
      type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2d50c23204031dd7ba2725e70baf1be2"
    ></script>
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
	<link href="${root }css/board/postListCss.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="${root }css/include/wave.css" />
	<link rel="stylesheet" href="${root }css/board/contact.css" />
	<link href="${root }css/include/n_header_footer.css" rel="stylesheet" type="text/css" />
	<link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
    />
</head>
<body>
	<!-- 헤더 -->
	<header>
		<!-- 헤더 배너광고 -->
		<!-- 헤더 메뉴 -->
		<div class="menu">
			<div class="menu1">
				<c:import url="/WEB-INF/views/include/header.jsp"/>
			</div>
		</div>
	</header>
	<div class="cs-container">
		<h2>고객지원</h2>
		<div class="cs-board01">
			<div id="cs-menu">
				<li><a href="${root }board/NoticeList">공지사항</a></li>
				<li><a href="${root }board/Qna">QnA</a></li>
				<li><a href="${root }board/ContactUs">Contact Us</a></li>
			</div>
			<div id="cs-backimg" style="background: url('${root}/img/boardIcon/notice.jpg') center/cover no-repeat;"></div>
		</div>
		<div id="cs-titleBox">
			<div class="page-header" align="center">
	 			<h1>Contact Us</h1>
			</div>
		</div>
		<div class="contact_Total">
      <div class="c_title">
      </div>
      <div class="contact_in">
        <div class="contact">
          <div id="c_mapcontainer" class="veiw_map">
            <div class="c_t_p1"></div>
          </div>
          <div class="c_t_p2">
            <div class="p2_n">
              <strong>서울 종로구 솔데스크</strong>
            </div>
            <div class="p2_n">
              <div>
                <img
                  src="${root }img/boardIcon/c_location.png"
                  width="40"
                  height="40"
                />
              </div>
              <div>주소 서울특별시 종로구 종로12길 15 코아빌딩1</div>
            </div>
            <div class="p2_n">
              <div>
                <img src="${root }img/boardIcon/c_call.png" width="40" height="40" />
              </div>
              <div class="text">전화 0507-1430-7001</div>
            </div>
            <div class="p2_n">
              <div>
                <img src="${root }img/boardIcon/c_Email.png" width="40" height="40" />
              </div>
              <div class="text">soldesk@naver.com</div>
            </div>
          </div>
        </div>
      </div>
    </div>
	</div>
	<!-- 푸터 -->
	<footer>
		<c:import url="/WEB-INF/views/include/footer.jsp"/>
	</footer>
	<script type="text/javascript" src="${root }js/n_page.js"></script>
	<script type="text/javascript">

    var placePosition = new kakao.maps.LatLng(37.569322158958165, 126.98601429133882);
    var mapContainer = document.querySelector('.c_t_p1'), // 지도를 표시할 div 
    mapOption = { 
        center: placePosition, // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };
    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
            // 지도에 마커를 표시합니다 
    var marker = new kakao.maps.Marker({
        map: map, 
        position: placePosition
    });
    // 아래와 같이 옵션을 입력하지 않아도 된다
    var zoomControl = new kakao.maps.ZoomControl();

    // 지도 오른쪽에 줌 컨트롤이 표시되도록 지도에 컨트롤을 추가한다.
    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
    // 마커가 지도 위에 표시되도록 설정합니다
    
            // 커스텀 오버레이에 표시할 컨텐츠 입니다
    // 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
    // 별도의 이벤트 메소드를 제공하지 않습니다 
    var content = '<div class="wrap">' + 
                '    <div class="info">' + 
                '        <div class="title">' + 
                '              SulSul' + 
                '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
                '        </div>' + 
                '        <div class="body">' + 
                '            <div class="img">' +
                '                <img src="${root }img/boardIcon/메인로고.jpg" width="100" height="70">' +
                '           </div>' + 
                '            <div class="desc">' + 
                '                <div class="ellipsis">서울특별시 종로구 종로12길 15 코아빌딩1</div>' + 
                '                <div class="jibun ellipsis">(우) 03190 (지번) 관철동 13-13</div>' +  
                '            </div>' + 
                '        </div>' + 
                '    </div>' +    
                '</div>';
    // 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
    var overlay = new kakao.maps.CustomOverlay({
        content: content,
        map: map,
        position: marker.getPosition()       
    });
    // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
    kakao.maps.event.addListener(marker, 'click', function() {
        overlay.setMap(map);
    });
    // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
    function closeOverlay() {
        overlay.setMap(null);     
    }
	</script>

</body>
</html>