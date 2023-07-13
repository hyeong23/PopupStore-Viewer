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
<title>공지사항</title>

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
</head>

<body>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<%@ include file="header.jsp"%>
	<!-- Header Section End -->

	<!-- Hero Section Begin -->
	<section class="hero hero-normal">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>All departments</span>
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
									All Categories <span class="arrow_carrot-down"></span>
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
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- content Begin -->
	<div class="content">
		<div class="row">
			<div class="col-lg-12">
				<div class="contact__form__title">
					<h2>Notice</h2>
				</div>
			</div>
		</div>
		<table align="center" border="0" cellpadding="5" cellspacing="2"
			width="100%" bordercolordark="white" bordercolorlight="black">
			<tr>
				<td>
					<p align="center">

						<b><span style="font-size: 12pt;">글번호</span></b> <span
							style="font-size: 12pt;"> <!-- 글번호 --> <b>${announcement.announcementNum}</b>
						</span>

					</p>
				</td>
				<td>
					<p align="center">

						<b><span style="font-size: 12pt;">제목</span></b> <a
							href="/announcement/${announcement.announcementNum}"> <span
							style="font-size: 12pt;"> <!-- 제목 --> <b>${announcement.announcementTitle}</b>
						</span>
						</a>

					</p>
				</td>
				<td>
					<p align="center">

						<b><span style="font-size: 12pt;">날짜</span></b> <span
							style="font-size: 12pt;"> <!-- 작성일 --> <b>${announcement.announcementUpdate}</b>
						</span>

					</p>
				</td>
				<td>
					<p align="center">

						<b><span style="font-size: 12pt;">조회수</span></b> <span
							style="font-size: 12pt;"> <!-- 조회수 --> <b>${announcement.announcementCount}</b>
						</span>

					</p>
				</td>
			</tr>

			<!-- 부서 객체 유무 검증 -->
			<c:if test="${empty requestScope.list}">
				<tr>
					<td colspan="5">
						<p align="center">
							<b><span style="font-size: 12pt;">등록된 글이 존재하지 않습니다.</span></b>
						</p>
					</td>
				</tr>
			</c:if>
			<!-- 반복 출력 -->
			<c:forEach items="${requestScope.list}" var="announcement">
				<tr>

					<td bgcolor="">
						<p align="center">
							<span style="font-size: 12pt;"> <!-- 글번호 --> <b>${announcement.announcementNum}</b>
							</span>
						</p>
					</td>
					<td bgcolor="">
						<p align="center">
							<a href="/announcement/${announcement.announcementNum}"> <span
								style="font-size: 12pt;"> <!-- 제목 --> <b>${announcement.announcementTitle}</b>
							</span>
							</a>
						</p>
					</td>
					<td bgcolor="">
						<p align="center">
							<span style="font-size: 12pt;"> <!-- 작성일 --> <b>${announcement.announcementUpdate}</b>
							</span>
						</p>
					</td>
				</tr>
			</c:forEach>
		</table>
		<hr>
	</div>
	<div align=center>

		<span style="font-size: 12pt;"> <input type="button"
			value="메인으로" onclick="location.href='/main'">
		</span> <span style="font-size: 12pt;"> <input type="button"
			value="업로드" onclick="location.href='/announcement/insert'">
		</span>

	</div>

	<!-- Footer Section Begin -->
	<%@ include file="footer.jsp"%>
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

</body>
</html>