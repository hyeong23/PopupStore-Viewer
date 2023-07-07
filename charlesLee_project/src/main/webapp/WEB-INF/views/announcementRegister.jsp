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
<link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/css/style.css" type="text/css">
</head>

<body>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<%@ include file="header.jsp"%>
	<!-- Header Section End -->

	<!-- content Begin -->
	<div class="content">
		<div class="row">
			<div class="col-lg-12">
				<div class="contact__form__title">
					<h2>Notice</h2>
				</div>
			</div>
		</div>
		<!-- action, method -->
		<form action="/announcement/insert" method="POST"
			enctype="multipart/form-data">
			<table align="center" cellpadding="5" cellspacing="1" width="600"
				border="1">
				<tr>
					<td width="200" height="20">
						<p align="center">
							<b><span style="font-size: 12pt;">제목</span></b>
						</p>
					</td>
					<td width="450" height="20" align="center"><b> <span
							style="font-size: 12pt;"> <input id="announcementTitle"
								type="text" name="announcementTitle" size="30">
						</span>
					</b></td>
				</tr>
				<tr>
					<td width="200" height="500">
						<p align="center">
							<b><span style="font-size: 12pt;">내용</span></b>
						</p>
					</td>
					<td width="450" height="500" align="center"><b> <span
							style="font-size: 12pt;"> <!-- input 박스 --> <input
								type="textarea" name="announcementBody" size="30" col="50"
								, row="400">
						</span>
					</b></td>
				</tr>

				<tr>
					<td width="150" height="20">
						<p>
							<b><span style="font-size: 12pt;">&nbsp;</span></b>
						</p>
					</td>
					<td width="450" height="20" align="center"><b> <span
							style="font-size: 12pt;"> <input type="submit" value="업로드">
								<input type="reset" value="다시작성">
						</span> <span style="font-size: 12pt;"> <input type="button"
								value="목록" onclick="location.href='/announcement'">
						</span>
					</b></td>
				</tr>
			</table>
		</form>



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