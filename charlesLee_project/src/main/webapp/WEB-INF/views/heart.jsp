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
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">



<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/mypage.css" type="text/css">
<link rel="stylesheet" href="css/card.css" type="text/css">

</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<%@ include file="header.jsp"%>
	<!-- Header Section End -->

	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>좋아요 목록</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Contents -->
	<div class="container" style="margin: 0 auto; padding: 0;">
		<div class="row">
			<div class="col-lg-3">
				<!-- Side bar -->
				<div class="mypage-box"
					style="background-color: #EEEEEE; height: 600px;">
					<div class="mypage-item" style="width: 200;">
						<h3>My page</h3>
						<!-- 내 정보 내용 추가 -->
						<a href="/mypage">내 정보 보기</a>
					</div>
					<div class="mypage-item" style="width: 200;">
						<h3>My page more</h3>
						<!-- 내 정보 내용 추가 -->
						<a href="/mypageUpdate">회원정보 수정 및 탈퇴</a>
					</div>
					<div class="mypage-item" style="width: 200;">
						<h3>Like list</h3>
						<a href="/heart">좋아요 목록 보기</a>
					</div>
				</div>
			</div>
			<div class="col-lg-9">
				<!-- Cards -->
				<div class="row">
					<c:forEach var="store" items="${likedStores}">
						<div class="col-lg-4"
							style="display: flex; justify-content: center;">
							<div class="storeCard">
								<h4 style="font-weight: 500; margin: 6px;">${store.storeTitle}</h4>
								<div class="storeCard-img">
									<img src="/project_image/${store.pictureName}"
										style="object-fit: cover;">
								</div>
								<p style="margin: 6px;">${store.storeStart}~
									${store.storeEnd}</p>
								<c:choose>
									<%-- 로그인 했을때 --%>
									<c:when test="${not empty sessionScope.memberNum}">
										<!-- 좋아요 -->
										<c:if test="${getStoreByHeart.contains(store.storeNum)}">
                                    		 <img id = "heart${store.storeNum}" alt="#" src="/img/heart.png" onclick = "clickHeart('${store.storeNum}')" style="width: 8%; height: 8%;  display: none; position:absolute; right : 45px">	
             								 <img  id = "heartRed${store.storeNum}" alt="#" src="/img/heartRed.png" onclick = "clickHeart('${store.storeNum}')" style="width: 8%; height: 8%; position:absolute; right : 45px">	
										</c:if>
										<c:if test="${not getStoreByHeart.contains(store.storeNum)}">
                     						<img id = "heart${store.storeNum}" alt="#" src="/img/heart.png" onclick = "clickHeart('${store.storeNum}')" style="width: 8%; height: 8%; position:absolute; right : 45px">	
             							 	 <img  id = "heartRed${store.storeNum}" alt="#" src="/img/heartRed.png" onclick = "clickHeart('${store.storeNum}')" style="width: 8%; height: 8%; display: none; position:absolute; right : 45px">	
                  						</c:if>	
                                    	</c:when>
								</c:choose>

							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer Section Begin -->
	<%@ include file="footer.jsp"%>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script src="/js/jquery-3.3.1.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.nice-select.min.js"></script>
	<script src="/js/jquery-ui.min.js"></script>
	<script src="/js/jquery.slicknav.js"></script>
	<script src="/js/mixitup.min.js"></script>
	<script src="/js/owl.carousel.min.js"></script>
	<script src="/js/main.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script>
	
	function clickHeart(storeNum) {
		  $.ajax({
		    url: "/api/like",
		    type: 'post',
		    data: {
		      storeNum: storeNum,
		    },
		    success: function (response) {
		      if (response == true) {
		        alert("삽입");
		        const heartId = "heart" + storeNum.toString();
		        const heartRedId = "heartRed" + storeNum.toString();
		        document.getElementById(heartId).style.display = "none";
		        document.getElementById(heartRedId).style.display = "block";
		      } else {
		        alert("삭제");
		        const heartId = "heart" + storeNum.toString();
		        const heartRedId = "heartRed" + storeNum.toString();
		        document.getElementById(heartId).style.display = "block";
		        document.getElementById(heartRedId).style.display = "none";
		      }
		    },
		    error: function (data) {
		      alert("error");
		    }
		  });
		}

	</script>

</body>
</html>