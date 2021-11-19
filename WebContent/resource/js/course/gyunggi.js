
            var cose1 = new kakao.maps.LatLng(37.47978299845409, 126.98339770234915);
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
                    '                <img src=root + "/resource/img/courseIntroduce/경기도-배혜정도가.png" width="73" height="70">' +
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
                        '                <img src=root + "/resource/img/courseIntroduce/경기도-호랑이배꼽.png" width="73" height="70">' +
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
                        '                <img src= root + "/resource/img/courseIntroduce/경기도-그랑꼬또.png" width="73" height="70">' +
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


// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(marker, 'click', function() {
    overlay.setMap(map);
});

kakao.maps.event.addListener(marker2, 'click', function() {
    overlay2.setMap(map2);
});

kakao.maps.event.addListener(marker3, 'click', function() {
    overlay3.setMap(map3);
});

// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function closeOverlay() {
    overlay.setMap(null);
}

function closeOverlay2() {
    overlay2.setMap(null);     
}

function closeOverlay3() {
    overlay3.setMap(null);     
}
