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


</head>
<body>
	<!-- Page Preloder -->
	<!-- <div id="preloder">
        <div class="loader"></div>
    </div> -->

	<!-- Header Section Begin -->
	<%@ include file="header.jsp"%>
	<!-- Header Section End -->

	<div class="container" style="padding: 0;">
		<div class="row">
			<div class="col-lg-12">
				<div
					style="display: flex; justify-content: flex-start; align-items: center; height: 100vh; margin-left: 20px;">

						<div class="mypage-box" style="height: 400px;">
							<div class="mypage-item">
								<h3>내 정보</h3>
								<!-- 내 정보 내용 추가 -->
								<a href="/mypage">회원정보 수정 및 탈퇴</a>
							</div>
							<div class="mypage-item">
								<h3>좋아요 목록</h3>
								<a href="/heart">좋아요 목록 보기</a>
							</div>
						</div>
						 <h2 align="center" style="margin-top: -600px; text-align: right;">회원정보수정</h2>
						<form action="/mypage" method="post"> 
							<table>
								<tr>
									<td style="text-align: right;">* 아이디</td>
									<td style="text-align: left;"><input type="text"
										id="memberId" name="memberId" value="${member.memberId}"></td>
								</tr>
								<tr>
									<td style="text-align: right;">* 비밀번호</td>
									<td style="text-align: left;"><input type="password"
										name="memberPw" value=""></td>
								</tr>
								<tr>
									<td style="text-align: right;">* 비밀번호 확인</td>
									<td style="text-align: left;"><input type="password"
										name="confirmPassword" value=""></td>
								</tr>
								<tr>
									<td colspan="2" align="center"><c:if
											test="${not empty error}">
											<p style="color: red;">${error}</p>
										</c:if></td>
								</tr>
								<tr>
									<td style="text-align: right;">* 닉네임</td>
									<td style="text-align: left;"><input type="text"
										name="memberName" value="${member.memberName}">
									</td>
								</tr>
								<tr>
									<td style="text-align: right;">* 업체명</td>
									<td style="text-align: left;"><input type="text"
										id="memberId" name="memberId" value="${member.memberId}" readonly></td>
								</tr>
								<tr>
									<td style="text-align: right;">* 이메일</td>
									<td style="text-align: left;"><input type="text"
										name="memberEmail" value="${member.memberEmail}" readonly></td>
								</tr>
								<tr>
									<td style="text-align: right;">* 유저타입</td>
									<td style="text-align: left;"><input type="text"
										id="memberId" name="memberId" value="${member.memberType}" readonly></td>
								</tr>
								<tr>
								<tr>
									<td colspan="2" align="center"><input type="submit"
										value="수정하기">
										<button type="button" onclick="removeMember();">탈퇴하기</button>
										<!-- //type을 button으로 꼭 적어줘야! submit이 되지 않는다!! 꼭 기억하기!--></td>
								</tr>
							</table>

						</form>
				</div>

				<script>
					function removeMember() {
						if (window.confirm("탈퇴하시겠습니까?")) {
							location.href = "/main";
						}

					}
				</script>
</body>
</html>