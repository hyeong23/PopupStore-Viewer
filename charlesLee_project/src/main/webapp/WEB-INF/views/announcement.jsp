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
					<b><span style="font-size: 12pt;">글번호</span></b>
				</p>
			</td>
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
						<a href="/announcement/${announcement.announcementNum}"> <span style="font-size: 12pt;"> 
						<!-- 제목 --> <b>${announcement.announcementTitle}</b>
						</span>
						</a>
					</p>
				</td>
				<td bgcolor="">
					<p align="center">
						<span style="font-size: 12pt;"> <!-- 작성자 --> <b>${announcement.memberNum}</b>
						</span>
					</p>
				</td>
				<td bgcolor="">
					<p align="center">
						<span style="font-size: 12pt;"> <!-- 작성일 --> <b>${announcement.announcementTime}</b>
						</span>
					</p>
				</td>
			</tr>
		</c:forEach>
	</table>
	<hr>
	<div align=center>

		<span style="font-size: 12pt;"><input type="button"
			value="메인으로" onclick="location.href='/main'"></span> <span
			style="font-size: 12pt;"><input type="button" value="수정"
			onclick="location.href='/update'"></span> <span
			style="font-size: 12pt;"><input type="button" value="업로드"
			onclick="location.href='/upload'"></span>

		<!-- 부서 삭제 로직 -->
		<span style="font-size: 12pt;"><input type="button" value="삭제"
			onclick="delete()"></span>
	</div>

	<%@ include file="footer.jsp"%>

	<script type="text/javascript">
		
	/* https://developer.mozilla.org/en-US/docs/Learn/Forms/Sending_forms_through_JavaScript */
	/* https://www.javascripttutorial.net/javascript-dom/javascript-form/ */
	
	function delete(){
	  let detailForm = document.getElementById("detailForm");
	  let deptno = document.getElementById("deptno").innerText;
	  
	  // type:hidden, 
	  // name:_method, 
	  // value:'DELETE' 값을 가지는 input 태그 내부에서 생성!
  	  let input = document.createElement('input'); 
	  input.type = 'hidden'; 
	  input.name = '_method'; 
	  input.value  = 'DELETE'; 
	  detailForm.appendChild(input); 
	  
	  detailForm.action = '/dept/' + deptno;
	  detailForm.method = 'POST';
	  detailForm.submit();
	}
	</script>
</body>
</html>