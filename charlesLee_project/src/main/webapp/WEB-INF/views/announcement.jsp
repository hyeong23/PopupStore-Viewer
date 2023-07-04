<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>공지사항</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/css/layout.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<h1>공지사항</h1>
	<table align="center" border="0" cellpadding="5" cellspacing="2"
		width="100%" bordercolordark="white" bordercolorlight="black">
		<tr>
			<td bgcolor="#336699">
				<p align="center">
					<font color="white"><b><span style="font-size: 12pt;">글번호</span></b></font>
				</p>
			</td>
			<td bgcolor="#336699">
				<p align="center">
					<font color="white"><b><span style="font-size: 12pt;">제목</span></b></font>
				</p>
			</td>
			<td bgcolor="#336699">
				<p align="center">
					<font color="white"><b><span style="font-size: 12pt;">작성자</span></b></font>
				</p>
			</td>
			<td bgcolor="#336699">
				<p align="center">
					<font color="white"><b><span style="font-size: 12pt;">날짜</span></b></font>
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
						<span style="font-size: 12pt;"> <!-- 글번호 --> <b>${announcement.announcement_num}</b>
						</span>
					</p>
				</td>
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
		</c:forEach>
	</table>
	<hr>

</body>
</html>