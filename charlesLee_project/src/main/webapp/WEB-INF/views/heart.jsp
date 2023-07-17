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
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap"
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
<link rel="stylesheet" href="css/modal.css" type="text/css">
<link rel="stylesheet" href="css/mypage.css" type="text/css">
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
						<h2>마이페이지</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- content Begin -->
	<div class="container" style="margin: 0 auto; padding: 0;">
		<div class="row">
			<div class="col-lg-12">
				<div
					style="display: flex; justify-content: flex-start; align-items: center; margin-left: 20px;">

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

					<!-- Contents -->
					<!-- Product Section Begin -->
					<section class="product spad">
						<div class="container">
							<div class="row">

								<div class="col-lg-9 col-md-7">

									<div class="row">
										<div class="col-lg-4 col-md-6 col-sm-6">
											<div class="product__item">
												<div class="product__item__pic set-bg"
													data-setbg="img/product/product-1.jpg">
													<ul class="product__item__pic__hover">
														<li><a href="#"><i class="fa fa-heart"></i></a></li>
														<li><a href="#"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
													</ul>
												</div>
												<div class="product__item__text">
													<h6>
														<a href="#">Crab Pool Security</a>
													</h6>
													<h5>$30.00</h5>
												</div>
											</div>
										</div>
										<div class="col-lg-4 col-md-6 col-sm-6">
											<div class="product__item">
												<div class="product__item__pic set-bg"
													data-setbg="img/product/product-2.jpg">
													<ul class="product__item__pic__hover">
														<li><a href="#"><i class="fa fa-heart"></i></a></li>
														<li><a href="#"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
													</ul>
												</div>
												<div class="product__item__text">
													<h6>
														<a href="#">Crab Pool Security</a>
													</h6>
													<h5>$30.00</h5>
												</div>
											</div>
										</div>
										<div class="col-lg-4 col-md-6 col-sm-6">
											<div class="product__item">
												<div class="product__item__pic set-bg"
													data-setbg="img/product/product-3.jpg">
													<ul class="product__item__pic__hover">
														<li><a href="#"><i class="fa fa-heart"></i></a></li>
														<li><a href="#"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
													</ul>
												</div>
												<div class="product__item__text">
													<h6>
														<a href="#">Crab Pool Security</a>
													</h6>
													<h5>$30.00</h5>
												</div>
											</div>
										</div>
										<div class="col-lg-4 col-md-6 col-sm-6">
											<div class="product__item">
												<div class="product__item__pic set-bg"
													data-setbg="img/product/product-4.jpg">
													<ul class="product__item__pic__hover">
														<li><a href="#"><i class="fa fa-heart"></i></a></li>
														<li><a href="#"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
													</ul>
												</div>
												<div class="product__item__text">
													<h6>
														<a href="#">Crab Pool Security</a>
													</h6>
													<h5>$30.00</h5>
												</div>
											</div>
										</div>
										<div class="col-lg-4 col-md-6 col-sm-6">
											<div class="product__item">
												<div class="product__item__pic set-bg"
													data-setbg="img/product/product-5.jpg">
													<ul class="product__item__pic__hover">
														<li><a href="#"><i class="fa fa-heart"></i></a></li>
														<li><a href="#"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
													</ul>
												</div>
												<div class="product__item__text">
													<h6>
														<a href="#">Crab Pool Security</a>
													</h6>
													<h5>$30.00</h5>
												</div>
											</div>
										</div>
										<div class="col-lg-4 col-md-6 col-sm-6">
											<div class="product__item">
												<div class="product__item__pic set-bg"
													data-setbg="img/product/product-6.jpg">
													<ul class="product__item__pic__hover">
														<li><a href="#"><i class="fa fa-heart"></i></a></li>
														<li><a href="#"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
													</ul>
												</div>
												<div class="product__item__text">
													<h6>
														<a href="#">Crab Pool Security</a>
													</h6>
													<h5>$30.00</h5>
												</div>
											</div>
										</div>



									</div>
									<div class="product__pagination">
										<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a
											href="#"><i class="fa fa-long-arrow-right"></i></a>
									</div>
								</div>
							</div>
						</div>
					</section>
					<!-- Product Section End -->
				</div>


				<!-- Footer Section Begin -->
				<%@ include file="footer.jsp"%>
				<!-- Footer Section End -->


				<!-- Js Plugins -->
				<script src="/js/jquery-3.3.1.min.js"></script>
				<script src="/js/bootstrap.min.js"></script>
				<script src="/js/jquery.nice-select.min.js"></script>
				<script src="/js/jquery-ui.min.js"></script>
				<script src="/js/jquery.slicknav.js"></script>
				<script src="/js/mixitup.min.js"></script>
				<script src="/js/owl.carousel.min.js"></script>
				<script src="/js/main.js"></script>
</body>
</html>