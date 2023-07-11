<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/map.css" type="text/css">
    <link rel="stylesheet" href="css/modal.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

   

    <!-- Header Section Begin -->
   <%@ include file="header.jsp" %>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All departments</span>
                        </div>
                        <ul>
                            <li><a href="#">Fresh Meat</a></li>
                            <li><a href="#">Vegetables</a></li>
                            <li><a href="#">Fruit & Nut Gifts</a></li>
                            <li><a href="#">Fresh Berries</a></li>
                            <li><a href="#">Ocean Foods</a></li>
                            <li><a href="#">Butter & Eggs</a></li>
                            <li><a href="#">Fastfood</a></li>
                            <li><a href="#">Fresh Onion</a></li>
                            <li><a href="#">Papayaya & Crisps</a></li>
                            <li><a href="#">Oatmeal</a></li>
                            <li><a href="#">Fresh Bananas</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+65 11.188.888</h5>
                                <span>support 24/7 time</span>
                            </div>
                        </div>
                    </div>
                    <div id="map" style="width:800px;height:400px; margin : auto"></div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->



    <!-- Footer Section Begin -->
    	<%@ include file="footer.jsp" %>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<!-- 수정 -->
	<!-- Modal -->
	<c:forEach items="${getMapList}" var="map" varStatus="vs">
	<div class="modal fade bd-example-modal-lg" id="exampleModalCenter${vs.index}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  		<div class="modal-dialog modal-lg">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h2 class="modal-title" id="exampleModalCenterTitle">${map.storeTitle}</h2>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        	<h5>작성자 : </h5>
	        	<p> ${map.storeStart} ~ ${map.storeEnd} </p>
	        	<p> ${map.storeIntro} </p>
	      </div>
<!-- 	      <div> <img src="images/singleimage.jpg" alt="about us" class="single-image"> </div> -->
	      
			<div class="slider">
			    <input type="radio" name="slide" id="slide1" checked>
			    <input type="radio" name="slide" id="slide2">
			    <input type="radio" name="slide" id="slide3">
			    <input type="radio" name="slide" id="slide4">
			    <ul id="imgholder" class="imgs">
			        <li><img src="modal-images/singleimage.jpg"></li>
			        <li><img src="modal-images/singleimage.jpg"></li>
			        <li><img src="modal-images/singleimage.jpg"></li>
			        <li><img src="modal-images/singleimage.jpg"></li>
			    </ul>
			    <div class="bullets">
			        <label for="slide1">&nbsp;</label>
			        <label for="slide2">&nbsp;</label>
			        <label for="slide3">&nbsp;</label>
			        <label for="slide4">&nbsp;</label>
			    </div>
			    
			    
			</div>	
	      
	      	 <div>
			    	${map.storeBody}
			 </div>
	      
	      
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">Save changes</button>
	      </div>
	    </div>
	  </div>
	</div>
	</c:forEach>


</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=690096255b88e30ead8c02ac790dd149&libraries=services">
	</script>
	
	
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
	    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	<c:forEach items="${getMapList}" var="map" varStatus="vs">

	var address = '${map.storeLoc}';
	
	var geocoder = new kakao.maps.services.Geocoder();
	
	var callback = function(result, status) {
	if (status === kakao.maps.services.Status.OK) {
	    console.log(result);
	    
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
	'		<a href="#exampleModalCenter${vs.index}" data-toggle="modal">' +
	'        <div class="title">' + 
	'			${map.storeTitle}' + 
	'		</a>				' +
	'            <div class="close" id= "${map.storeNum}" title="닫기"></div>' + 
	'        </div>' + 
	'        <div class="body">' + 
	'            <div class="img">' +
	'                <img src="picture/${map.pictureName}" width="73" height="70" alt = "img">' +
	'        </div>' + 
	'        <div class="desc">' + 
	'                <div class="ellipsis">' + '${map.storeLoc}' + '</div>' + 
	'                	<div class="jibun ellipsis">' + '${map.storeStart}' + "~" + '${map.storeEnd}' + '</div>' + 
	'                <div><a href="${map.storeSite}" target="_blank" class="link">${map.storeTitle} 홈페이지</a></div>' + 
	'        </div>' + 
	'        </div>' + 
	'    </div>' +    
	'</div>';

		
		
	var overlay = new kakao.maps.CustomOverlay({
	    content: content,
	    map: map,
	    position: marker.getPosition()       
	});
	
	
	var close = document.getElementById('${map.storeNum}')
	
	close.addEventListener('click', function() {
		overlay.setMap(null);  
	});
	
	kakao.maps.event.addListener(marker, 'click', function() {
	    overlay.setMap(map);
	});
	 	
	function closeOverlay() {
	    overlay.setMap(null);     
	}
	
	};
	
	
	
	geocoder.addressSearch(address, callback);
	</c:forEach>

</script>
</html>