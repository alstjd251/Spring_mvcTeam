
        var placePosition = new kakao.maps.LatLng(37.569322158958165, 126.98601429133882);
        
        var TestPosition = new kakao.maps.LatLng(37.51284000166955, 127.02142743421783)
        var mapContainer = document.querySelector('.c_t_p1'), // 지도를 표시할 div 
        mapOption = { 
            center: placePosition, // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };
        
        var mapContainer1 = document.querySelector('.T_map'), // 지도를 표시할 div 
        mapOption1 = { 
            center: TestPosition, // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
            // 지도와 로드뷰 위에 마커로 표시할 특정 장소의 좌표입니다 
            };

        var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
        var map1= new kakao.maps.Map(mapContainer1,mapOption1);

                // 지도에 마커를 표시합니다 
        var marker = new kakao.maps.Marker({
            map: map, 
            position: placePosition
        });

        var marker1 = new kakao.maps.Marker({
            map: map1 , 
            position: TestPosition
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
                    '              더한소주' + 
                    '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
                    '        </div>' + 
                    '        <div class="body">' + 
                    '            <div class="img">' +
                    '                <img src="./StoreIMG/더한주류.jpg" width="73" height="70">' +
                    '           </div>' + 
                    '            <div class="desc">' + 
                    '                <div class="ellipsis">제주특별자치도 제주시 첨단로 242</div>' + 
                    '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' +  
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

        var s_c2_overlay = new kakao.maps.CustomOverlay({
            content: content,
            map : map1,
            position : marker1.getPosition()
        });

        // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
        kakao.maps.event.addListener(marker, 'click', function() {
            overlay.setMap(map);
        });

        kakao.maps.event.addListener(marker1, 'click', function() {
            overlay.setMap(map1);
        });

        // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
        function closeOverlay() {
            overlay.setMap(null);     
        }

        
           
        
       