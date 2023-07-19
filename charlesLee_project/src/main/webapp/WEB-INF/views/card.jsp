<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Css Styles -->
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/css/style.css" type="text/css">
    <link rel="stylesheet" href="/css/modal.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
   <%@ include file="header.jsp" %>
    <!-- Header Section End -->

   

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>전체 팝업스토어</h2>       
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="filterBox" style="margin-top:0px;">
                        <%@ include file="cardFilter.jsp" %>
                    </div>
                </div>
                <div class="col-lg-9 col-md-7">
                    <div class="product__discount">
                        <div class="section-title product__discount__title">
                            <h2>HOT STORE</h2>
                        </div>
                        <div class="row">
                            <div class="product__discount__slider owl-carousel">

                            <c:forEach items="${openStoreList}" var="store">
                                <div class="col-lg-4">
                                <div class="storeCard">
                                    <p>${store.storeTitle}</p>
                                    <div class="storeCard-img"><img src="/project_image/${store.pictureName}" style="object-fit: cover;"></div>
                                    <p>${store.storeStart}</p>
                                    <p>${store.storeEnd}</p>
                                </div>
                                </div>
                                </c:forEach>

                            </div>
                        </div>
                    </div>
                    <div class="filter__item">
                        <div class="row">
                            <div class="col-lg-4 col-md-5">
                                
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                    <h6><span style="font-family: 'Orbit', sans-serif; font-size: 16pt; color: black;">전체 팝업스토어</span></h6>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="row">


                        
 
                                <c:forEach items="${filterStoreList}" var="store" varStatus="vs">
                                <div class="col-lg-4" style="display:flex; justify-content: center;">
                                <div class="storeCard">
                                  	 <p>${store.storeTitle}</p>
                                     <div class="storeCard-img"><img src="/project_image/${store.pictureName}" style="width: 100%; object-fit: cover;"></div>
                                     <p>${store.storeStart}</p>
                                   <p>${store.storeEnd}</p>
                                    <c:choose>
                                    	<%-- 로그인 했을때 --%>
                                    	<c:when test="${not empty sessionScope.memberNum}">     
                                    	 	<!-- 알람 -->
                          				<c:if test="${getStoreByAlarm.contains(store.storeNum)}">
                                    		<img id="yellow${store.storeNum}" alt="#"  src="/img/yellow.png"  onclick="deleteAlarm('${store.storeNum}')" style="width: 10%; height: 10%;" >
                                    		<img id="bell${store.storeNum}" alt="#" src="/img/bell.png" onclick="insertAlarm('${store.storeNum}','${store.storeTitle}')" style="width: 10%; height: 10%; display: none;" >
										</c:if>
										<c:if test="${not getStoreByAlarm.contains(store.storeNum)}">
                     						<img id="yellow${store.storeNum}" alt="#"  src="/img/yellow.png"  onclick="deleteAlarm('${store.storeNum}')" style="width: 10%; height: 10%; display: none;" >
                                    		<img id="bell${store.storeNum}" alt="#" src="/img/bell.png" onclick="insertAlarm('${store.storeNum}','${store.storeTitle}')" style="width: 10%; height: 10%;" >
                  						</c:if>
                                 			<!-- 좋아요 -->
										<c:if test="${getStoreByHeart.contains(store.storeNum)}">
                                    		 <img id = "heart${store.storeNum}" alt="#" src="/img/heart.png" onclick = "clickHeart('${store.storeNum}')" style="width: 10%; height: 10%;  display: none;">	
             								 <img  id = "heartRed${store.storeNum}" alt="#" src="/img/heartRed.png" onclick = "clickHeart('${store.storeNum}')" style="width: 10%; height: 10%;">	
										</c:if>
										<c:if test="${not getStoreByHeart.contains(store.storeNum)}">
                     						<img id = "heart${store.storeNum}" alt="#" src="/img/heart.png" onclick = "clickHeart('${store.storeNum}')" style="width: 10%; height: 10%; ">	
             							 	 <img  id = "heartRed${store.storeNum}" alt="#" src="/img/heartRed.png" onclick = "clickHeart('${store.storeNum}')" style="width: 10%; height: 10%; display: none;">	
                  						</c:if>	
                                    	</c:when>
                                    	<%-- 로그인 안했을때 --%>
                                    	<c:otherwise>
                                    		<img class = "bell" id = "bell" alt="#" src="/img/bell.png" onclick = "notLogin()"   style="width: 10%; height: 10%;">
                                    		<img class = "heart" id = "heart" alt="#" src="/img/heart.png" onclick = "notLogin()"  style="width: 10%; height: 10%;">	   
                                  	    </c:otherwise>
                                    
                                    </c:choose>
                                    
                                </div>
                                </div>
                                </c:forEach>
                            </div>
                    <div class="product__pagination"  style="display:flex; justify-content: center;">
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                    </div>
                    </div>
                    
                </div>
            </div>
    </section>
    <!-- Product Section End -->



    <!-- Js Plugins -->
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery-ui.min.js"></script>
    <script src="/js/jquery.slicknav.js"></script>
    <script src="/js/mixitup.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/main.js"></script>
 
 	<script>
 	
 
 	function insertAlarm(storeNum, storeTitle) {
 	    // AJAX 요청을 사용하여 컨트롤러 실행
 	    $.ajax({
 	        url: '/api/insertAlarm',
 	        type: 'POST',
 	        data: {
 	            storeNum: storeNum,
 	            storeTitle: storeTitle
 	        },
 	        success: function(data) {
 	            alert(data);
 	            // 이미지 속성 변경
 	            	const bellId = "bell" + storeNum.toString();
 	            	const yellowId = "yellow" + storeNum.toString();
 	            	document.getElementById(bellId).style.display = "none";
 	            	document.getElementById(yellowId).style.display = "block";
                  
 	        },
 	        error: function() {
 	            alert("error");
 	        }
 	    });
 	}


 	function deleteAlarm(storeNum) {
 	    // AJAX 요청을 사용하여 컨트롤러 실행
 	    $.ajax({
 	        url: '/api/deleteAlarm',
 	        type: 'POST',
 	        data: {
 	            storeNum: storeNum
 	        },
 	        success: function(data) {
 	            alert(data);
 	           const bellId = "bell" + storeNum.toString();
 	           const yellowId = "yellow" + storeNum.toString();
 	          document.getElementById(bellId).style.display = "block";
 	          document.getElementById(yellowId).style.display = "none";
 	          
 	        },
 	        error: function() {
 	            alert("error");
 	        }
 	    });
 	}
	 </script>
	<script >
	function clickHeart(storeNum){
		$.ajax({
			url : "/api/like",
			type : 'post',
			data : {
				storeNum : storeNum,
			},
			success : function(response) {
				if(response == true){
					alert("삽입")
					const heartId = "heart" + storeNum.toString();
					const heartRedId = "heartRed" + storeNum.toString();
					document.getElementById(heartId).style.display = "none";
					document.getElementById(heartRedId).style.display = "block";
				}else{
					alert("삭제")
					const heartId = "heart" + storeNum.toString();
					const heartRedId = "heartRed" + storeNum.toString();
					document.getElementById(heartId).style.display = "block";
					document.getElementById(heartRedId).style.display = "none";
				}
		     },
			error : function(data) {
				alert("error");
			}
		});
	}
	
	
		function notLogin(){
						alert("로그인 후 이용바랍니다.")
	}
	
	
	</script>

</body>

</html>