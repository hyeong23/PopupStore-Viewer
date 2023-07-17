<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="popup.dto.Member"%>
<!-- Member 객체 가져오기 -->
<%
	Member member = (Member) request.getAttribute("member");
%>

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
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">


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
	<div class="container" style="padding: 0;">
		<div class="row">
			<div class="col-lg-12">
				<div
					style="display: flex; justify-content: flex-start; align-items: center; height: 100vh; margin-left: 20px;">
					<div class="mypage-box" style="height: 400px;">
						<div class="mypage-item">
							<h3>내 정보</h3>
							<!-- 내 정보 내용 추가 -->
							<a href="/mypageUpdate">회원정보 수정 및 탈퇴</a>
						</div>
						<div class="mypage-item">
							<h3>좋아요 목록</h3>
							<a href="/heart">좋아요 목록 보기</a>
						</div>
					</div>
					<div style="margin: 0 auto; max-width: 400px;">
						<h2 style="text-align: right;">회원정보수정</h2>
						<form id="mypageForm" action="/mypage" method="POST">
							<table>
								<tr>
									<td style="text-align: right;">* 아이디</td>
									<td style="text-align: left;">${member.memberId }</td>

								</tr>

								<tr id="nicknameRow">
									<td style="text-align: right;">* 닉네임</td>
									<td style="text-align: left;">${member.memberNickname}</td>
								</tr>
								<tr id="companyNameRow">
									<td style="text-align: right;">* 업체명</td>
									<td style="text-align: left;">${member.memberCompanyName}
									</td>
								</tr>
								<tr id="companyNumRow">
									<td style="text-align: right;">* 사업자번호</td>
									<td style="text-align: left;">${member.memberCompanyNum}</td>
								</tr>
								<tr>
									<td style="text-align: right;">* 이메일</td>
									<td style="text-align: left;">${member.memberEmail}</td>
								</tr>

								<tr>
									<td style="text-align: right;">* 유저타입</td>
									<td style="text-align: left;">
										<%-- memberType 값을 문자열로 변환 후 출력 --%> <%
 	String memberTypeString;
 switch (member.getMemberType()) {
 	case 0 :
 		memberTypeString = "관리자";
 		break;
 	case 1 :
 		memberTypeString = "일반";
 		break;
 	case 2 :
 		memberTypeString = "비즈니스";
 		break;
 	default :
 		memberTypeString = "";
 }
 out.println(memberTypeString);
 %>
									</td>
									<td><input type="hidden" name="memberType"
										value="<%=member.getMemberType()%>"></td>
								</tr>
								<tr>
									<td style="text-align: right;">* 생성일</td>
									<td style="text-align: left;">${member.memberCreate}</td>
									<td><input type="hidden" name="memberCreate"
										value="${member.memberCreate}"></td>
								</tr>
								<tr>
									<td style="text-align: right;">* 수정일</td>
									<td style="text-align: left;">${member.memberUpdate}</td>
									<td><input type="hidden" name="memberUpdate"
										value="${member.memberUpdate}"></td>
								</tr>


							</table>

						</form>
					</div>
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