
        var soul_cose1 = new kakao.maps.LatLng(37.583259548902355, 126.98799274568442);
        var soul_cose2 = new kakao.maps.LatLng(37.58549613015663, 126.90688952421371);

        var mapContainer = document.querySelector('#s_cose1'), // 지도를 표시할 div 
        mapOption = { 
            center:soul_cose1, // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };

        var soul_Container2 = document.querySelector("#s_cose2"),
            s_c2_Option = {
                center: soul_cose2,
                level: 3
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
        '                <img src="./soulIMG/서울-삼해소주.jpg" width="73" height="70">' +
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
                    '                <img src="./soulIMG/서울-더한주류.jpg" width="73" height="70">' +
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
