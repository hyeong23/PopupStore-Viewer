<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="popup.dto.Member"%>
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
					<form action="/mypage" method="POST">
						<table>
							<tr>
								<td style="text-align: right;">* 아이디</td>
								<td style="text-align: left;">${member.memberId }</td>
							</tr>
							<tr>
								<td style="text-align: right;">* 비밀번호</td>
								<td style="text-align: left;"><input type="password"
									name="memberPw" value=""></td>
							</tr>
							<tr>
								<td style="text-align: right;">* 비밀번호 확인</td>
								<td style="text-align: left;"><input type="password"
									name="memberPwCheck" id="memberPwCheck" value="">
									<button onclick="checkPassword()">확인</button></td>
								<td id="errorMessage" style="color: red;"></td>
							</tr>
							<tr>
								<td colspan="2" align="center"><c:if
										test="${not empty error}">
										<p style="color: red;">${error}</p>
									</c:if></td>
							</tr>
							<tr id="nicknameRow">
								<td style="text-align: right;">* 닉네임</td>
								<td style="text-align: left;"><input type="text"
									name="memberNickname" value="<%=member.getMemberNickname()%>">
								</td>
							</tr>
							<tr id="companyNameRow">
								<td style="text-align: right;">* 업체명</td>
								<td style="text-align: left;"><input type="text"
									id="memberCompanyName" name="memberCompanyName"
									value="${member.memberCompanyName}" readonly></td>
							</tr>
							<tr id="companyNumRow">
								<td style="text-align: right;">* 사업자번호</td>
								<td style="text-align: left;"><input type="text"
									name="memberCompanyNum" value="${member.memberCompanyNum}">
								</td>
							</tr>
							<tr>
								<td style="text-align: right;">* 이메일</td>
								<td style="text-align: left;"><input type="text"
									name="memberEmail" value="${member.memberEmail}"></td>
							</tr>

							<tr>
								<td style="text-align: right;">* 유저타입</td>
								<td style="text-align: left;"><input type="text"
									name="memberType" value="${member.memberType}"></td>
							</tr>
							<tr>
								<td style="text-align: right;">* 생성일</td>
								<td style="text-align: left;"><input type="text"
									name="memberCreate" value="${member.memberCreate}" readonly>
								</td>
							</tr>
							<tr>
								<td style="text-align: right;">* 수정일</td>
								<td style="text-align: left;"><input type="text"
									name="memberUpdate" value="${member.memberUpdate}"></td>
							</tr>

							<tr>
							<tr>
								<td colspan="2" align="center"><input type="submit"
									value="수정하기">
									<button type="button" onclick="removeMember();">탈퇴하기</button> <!-- //type을 button으로 꼭 적어줘야! submit이 되지 않는다!! 꼭 기억하기!--></td>
							</tr>
						</table>

					</form>
				</div>

				<script>
    function removeMember() {
        if (window.confirm("탈퇴하시겠습니까?")) {
            // 서버로 회원 탈퇴 요청
            fetch('/deleteMember', {
                method: 'POST',
                credentials: 'same-origin' // 쿠키 정보를 함께 보냄
            })
            .then(response => {
                if (response.ok) {
                    // 탈퇴 성공 시 메인 페이지로 이동
                    location.href = "/main";
                } else {
                    // 탈퇴 실패 시 에러 메시지 표시
                    alert("회원 탈퇴 중 오류가 발생했습니다.");
                }
            })
            .catch(error => {
                console.error(error);
                alert("회원 탈퇴 중 오류가 발생했습니다.");
            });
        }
    }
    
    function checkPassword() {
        var password = document.getElementById('memberPw').value;
        var passwordCheck = document.getElementById('memberPwCheck').value;
        var errorMessage = document.getElementById('errorMessage');

        if (password !== passwordCheck) {
            errorMessage.textContent = '비밀번호가 일치하지 않습니다.';
        } else {
            errorMessage.textContent = '';
        }
    }
    
    // 비즈니스(2)로 로그인 시 닉네임 창 X,일반회원(1)으로 로그인 시  사업자번호와 업체명 행 삭제
    window.onload = function() {
        var memberType = <%=member.getMemberType()%>;
        
        if (memberType === 2) {
            var nicknameRow = document.getElementById("nicknameRow");
            nicknameRow.style.display = "none";
        }
        
        if (memberType === 1) {
            var companyNumRow = document.getElementById("companyNumRow");
            var companyNameRow = document.getElementById("companyNameRow");
            companyNumRow.style.display = "none";
            companyNameRow.style.display = "none";
        }
    };
    
</script>
</body>
</html>