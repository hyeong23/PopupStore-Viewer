<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap"
	rel="stylesheet">


<link rel="stylesheet" href="/calendar/fonts/icomoon/style.css">

<link href='/calendar/fullcalendar/packages/core/main.css'
	rel='stylesheet' />
<link href='/calendar/fullcalendar/packages/daygrid/main.css'
	rel='stylesheet' />


<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/calendar/css/bootstrap.min.css">

<!-- Style -->
<link rel="stylesheet" href="/calendar/css/style.css">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<title>공지사항</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/css/layout.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%@ include file="header.jsp"%>
	<h3>공지사항</h3>
	<table align="center" border="0" cellpadding="5" cellspacing="2"
		width="100%" bordercolordark="white" bordercolorlight="black">
		<tr>
			<td>
				<p align="center">
					<b><span style="font-size: 12pt;">제목</span></b>
				</p>
			</td>
			<td>
				<p align="center">
					<b><span style="font-size: 12pt;">작성자</span></b>
				</p>
			</td>
			<td>
				<p align="center">
					<b><span style="font-size: 12pt;">날짜</span></b>
				</p>
			</td>

		</tr>

		<tr>
			<td bgcolor="">
				<p align="center">
					<span style="font-size: 12pt;"> <!-- 제목 --> <b>${announcement.announcement_title}</b>
					</span>
				</p>
			</td>
			<td bgcolor="">
				<p align="center">
					<span style="font-size: 12pt;"> <!-- 작성자 --> <b>${announcement.member_num}</b>
					</span>
				</p>
			</td>
			<td bgcolor="">
				<p align="center">
					<span style="font-size: 12pt;"> <!-- 작성일 --> <b>${announcement.announcement_time}</b>
					</span>
				</p>
			</td>
		</tr>
		<tr>
			<td>
				<p align="left" width="80%">
					<span style="font-size: 12pt;"> <!-- 글내용 --> <b>${announcement.announcement_body}</b>
					</span>
				</p>
			</td>
		</tr>
	</table>

	<hr>
	<div align=center>

		<span style="font-size: 12pt;"><input type="button" value="목록"
			onclick="location.href='/announcement'"></span> <span
			style="font-size: 12pt;"><input type="button" value="수정"
			onclick="location.href='/update'"></span> <span
			style="font-size: 12pt;"><input type="button" value="업로드"
			onclick="location.href='/upload'"></span>

		<!-- 부서 삭제 로직 -->
		<span style="font-size: 12pt;"><input type="button" value="삭제"
			onclick="delete()"></span>
	</div>

	<%@ include file="footer.jsp"%>

</body>
</html>