<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>주소로 장소 표시하기</title>
    <link rel="stylesheet" href="css/map.css" type="text/css">
</head>
<body>
<p style="margin-top:-12px">
    <em class="link">
        <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
            혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요.
        </a>
    </em>
</p>
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=690096255b88e30ead8c02ac790dd149&libraries=services"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	// 주소 변수
	var address = '부산 광역시 남구 수영로';
	
	
	// 주소로 좌표를 검색합니다
	// result 값이 배열로 나오는 듯
	geocoder.addressSearch(address, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
        
        
        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });



        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);

    } 
   	
    
     var content = '<div class="wrap">' + 
     '    <div class="info">' + 
     '        <div class="title">' + 
     '            카카오 스페이스닷원' + 
     '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
     '        </div>' + 
     '        <div class="body">' + 
     '            <div class="img">' +
     '                <img src="img/logo.png" width="73" height="70">' +
     '           </div>' + 
     '            <div class="desc">' + 
     '                <div class="ellipsis">'+ address +'</div>' + 
     '                <div class="jibun ellipsis"> 7/3 ~ 7/16 </div>' + 
     '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' + 
     '            </div>' + 
     '        </div>' + 
     '    </div>' +    
     '</div>';
 	
 	
  	var overlay = new kakao.maps.CustomOverlay({
 	    content: content,
 	    map: map,
 	    position: marker.getPosition()       
 	});
 	
 	
    
	});
	
	kakao.maps.event.addListener(marker, 'click', function() {
 	    overlay.setMap(map);
 	}); 
	 	
 	function closeOverlay() {
 	    overlay.setMap(null);     
 	};

	
	
	
</script>
</body>
</html>