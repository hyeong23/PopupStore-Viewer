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
<!-- <link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap"
	rel="stylesheet"> -->


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
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
html, body, div, span, applet, object, iframes, h1, h2, h3, h4, h5, h6,
	p, blockquote, pre, a, abbr, acronym, address, big, quotes, code, del,
	dfn, em, img, ins, kbd, q, s, samp, small, strike, sub, sup, tt, var, u,
	i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table,
	caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	do: inherit;
	vertical-align: baseline;
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

blockquote, q {
	quotes: none;
}

blockquote : before, blockquote : after, q : before, q : after {
	content: '';
	content: none;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

/*css 초기화*/
.card {
	height: 300px;
	width: 300px;
	border-radius: 15px;
	display: inline-block;
	margin-top: 30px;
	margin-right: 30px;
	margin-left: 30px;
	margin-bottom: 30px;
	position: relative;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	overflow: hidden;
}

.card-header {
	-webkit-transition: 0.5s; /*사파리 & 크롬*/
	-moz-transition: 0.5s; /*파이어폭스*/
	-ms-transition: 0.5s; /*인터넷 익스플로러*/
	-o-transition: 0.5s; /*오페라*/
	transition: 0.5s;
	width: 100%;
	height: 250px;
	border-radius: 15px 15px 0 0;
	background-size: 100% 280px;
	background-repeat: no-repeat;
}

.card:hover .card-header {
	opacity: 0.8;
	height: 100px;
}

.card-header-is_closed {
	background-color: #EF5A31;
	color: #FFF;
	font-weight: bold;
	text-align: center;
	float: right;
	margin: 15px 15px 0 0;
	border-radius: 50%;
	font-weight: bold;
	padding: 10px 10px;
	line-height: 20px;
}

h1 {
	font-size: 22px;
	font-weight: bold;
}

.card-body {
	
}

.card-body-header {
	line-height: 25px;
	margin: 10px 20px 0px 20px;
}

.card-body-description {
	opacity: 0;
	color: #757B82;
	line-height: 25px;
	-webkit-transition: .2s ease-in-out; /*사파리&크롬*/
	-moz-transition: .2s ease-in-out; /*파이어폭스*/
	-ms-transition: .2s ease-in-out; /*익스플로러*/
	-o-transition: .2s ease-in-out; /*오페라*/
	transition: .2s ease-in-out;
	overflow: hidden;
	height: 180px;
	margin: 5px 20px;
}

.card:hover .card-body-description {
	opacity: 1;
	-webkit-transition: .5s ease-in-out;
	-moz-transition: .5s ease-in-out;
	-ms-transition: .5s ease-in-out;
	-o-transition: .5s ease-in-out;
	transition: .5s ease-in-out;
	overflow: scroll;
}

.card-body-hashtag {
	color: #2478FF;
	font-style: italic;
}

.card-body-footer {
	position: absolute;
	margin-top: 15px;
	margin-bottom: 6px;
	bottom: 0;
	width: 314px;
	font-size: 14px;
	color: #9FA5A8;
	padding: 0 15px;
	font-size: 14px;
}

.icon {
	display: inline-block;
	vertical-align: middle;
	margin-right: 2px;
}

.icon-view_count {
	width: 25px;
	height: 17px;
	background: url("img/breadcrumb.jpg") no-repeat;
}

.icon-comments_count {
	margin-left: 5px;
	width: 25px;
	height: 17px;
	background: url("img/breadcrumb2.jpg") no-repeat;
}

.reg_date {
	float: right;
}

#att_zone {
	width: 660px;
	min-height: 150px;
	padding: 10px;
	border: 1px dotted #00f;
}

#att_zone:empty:before {
	content: attr(data-placeholder);
	color: #999;
	font-size: .9em;
}
</style>
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
					<c:forEach items="${requestScope.member}" var="member"
						varStatus="loop">
						<!-- <script>alert(${member.memberNickname})</script> -->
						<div class="col-lg-4 col-md-6 col-sm-6">
							<a href="/heart">
								<div class="card">
									<!-- 카드 헤더 -->
									<div class="card-header"
										style="background-image: url('picture/루피.jpg')">
										<div class="card-header-is_closed">
											<div class="card-header-text">모집중</div>
											<div class="card-header-number">2 / 5</div>
										</div>
									</div>
									<!-- 카드 바디 -->
									<div class="card-body">
										<!-- 카드 바디 헤더 -->
										<div class="card-body-header">
											<h1>${member.storeTitle}</h1>
											<p class="card-body-hashtag">#여수 #순천 #광양</p>
											<p class="card-body-nickname">작성자:
												${member.MEMBER_NICKNAME}</p>
										</div>
										<p class="card-body-description">${member.STORE_BODY}</p>
										<!-- 카드 바디 푸터 -->
										<div class="card-body-footer">
											<hr
												style="margin-bottom: 8px; opacity: 0.5; border-color: #EF5A31">
											<%-- <i class="icon icon-view_count"></i>조회 38회 <i
												class="icon icon-comments_count"></i>댓글 4개 <i
												class="reg_date"> ${member.pictureDate} </i> --%>
										</div>
									</div>
								</div>
							</a>
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