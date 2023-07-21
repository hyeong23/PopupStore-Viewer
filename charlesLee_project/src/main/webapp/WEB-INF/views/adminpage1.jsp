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
<link rel="stylesheet" href="css/mypage.css" type="text/css">
<link rel="stylesheet" href="css/modal.css" type="text/css">

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="/js/jquery-3.3.1.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery.nice-select.min.js"></script>
<script src="/js/jquery-ui.min.js"></script>
<script src="/js/jquery.slicknav.js"></script>
<script src="/js/mixitup.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/main.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

</style>
	
</head>
<body>
	<!-- Page Preloder -->
	<!-- <div id="preloder">
        <div class="loader"></div>
    </div> -->

	<!-- Header Section Begin -->
	<%@ include file="header.jsp"%>
	<!-- Header Section End -->

	<section class="breadcrumb-section set-bg"
		data-setbg="/static/img/breadcrumb.jpg">
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


	<div class="container" style="padding: 0;">
		<div class="row">
			<div class="col-lg-12">
				<div style="display: flex; justify-content: center; align-items: center; margin-left: 20px;">
					<div class="mypage-box" style="height: 700px;">
						<div class="mypage-item">
							<h3>문의 사항</h3>
							<!-- 내 정보 내용 추가 -->
							<a href="/adminpage1">문의사항 관리페이지</a>
						</div>
						<div class="mypage-item">
							<h3>회원가입 신청</h3>
							<a href="/adminpage2">비치니스 회원가입 신청 페이지</a>
						</div>
						<div class="mypage-item">
							<h3>팝업스토어</h3>
							<a href="/adminpage4">팝업스토어 신청 페이지</a>
						</div>
					</div>
				<div class="table-responsive table-scroll"
				data-mdb-perfect-scrollbar="true"
				style="position: relative; height: 700px; border: 2px solid #dee2e6;">
					<table class="table table-striped mb-0" style="font-family: 'Noto Sans KR', sans-serif; font-size: 13pt;" >
							<tr>
								<td bgcolor="#ff80c0">
									<p align="center">
										<font color="white"><b><span
												style="font-size: 12pt;">문의번호</span></b></font>
									</p>
								</td>
								<td bgcolor="#ff80c0">
									<p align="center">
										<font color="white"><b><span
												style="font-size: 12pt;">이메일</span></b></font>
									</p>
								</td>
								<td bgcolor="#ff80c0">
									<p align="center">
										<font color="white"><b><span
												style="font-size: 12pt;">제목</span></b></font>
									</p>
								</td>
								
								<td bgcolor="#ff80c0">
									<p align="center">
										<font color="white"><b><span
												style="font-size: 12pt;">문의상태</span></b></font>
									</p>
								</td>
								<td bgcolor="#ff80c0">
									<p align="center">
										<font color="white"><b><span
												style="font-size: 12pt;">승인/거부</span></b></font>
									</p>
								</td>
							</tr>

							<!-- 부서 객체 유무 검증 -->
							<c:if test="${empty requestScope.ask}">
								<tr>
									<td colspan="5">
										<p align="center">
											<b><span style="font-size: 12pt;">객체가 존재하지 않습니다.</span></b>
										</p>
									</td>
								</tr>
							</c:if>
							<!-- 반복 출력 -->
							<c:forEach items="${requestScope.ask}" var="ask">
								<tr style="text-align: center; text-align: justify; ">
									<td bgcolor="">
										<p align="center">
											<span style="font-size: 12pt;"> <!-- 부서번호 --> <a
												href="#a${ask.askNum}" data-toggle="modal">${ask.askNum}</a>
											</span>
										</p>
									</td>

									<td bgcolor="">
										<p align="center">
											<span style="font-size: 12pt;"> <!--
															부서명 클릭 시, 부서번호로 해당부서 상세정보 출력
														 --> <b> ${ask.askEmail} </b>
											</span>
										</p>
									</td>
									<td bgcolor="">
										<p align="center">
											<span style="font-size: 12pt;"> <!-- 부서위치 --> <b>${ask.askTitle}</b>
											</span>
										</p>
									</td>
									
									<td bgcolor="" style="text-align: center;" >
										<p align="center">
											<c:if test="${ask.askCheck == 0}"><span style="font-size: 12pt;"> <!-- 부서위치 --> <b>not check </b></span></c:if>
											<c:if test="${ask.askCheck == 1}"><span style="font-size: 12pt;"> <!-- 부서위치 --> <b>check </b></span></c:if>
											
										</p>
									</td>
									<td bgcolor="">
										<p align="center">
											<span style="font-size: 12pt;"> <!-- 부서위치 -->
												<button data-user-id="${ask.askNum}" type="button"
													value="승인" class="appro">승인</button>
												<button data-user-id="${ask.askNum}" type="button"
													value="거부" class="deni">거부</button>
											</span>
										</p>
									</td>
								</tr>
								<!-- Modal -->
								<div class="modal fade bd-example-modal-lg" id="a${ask.askNum}"
									tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
									aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content" style="background-color: #fff4fd">
											<div class="modal-header">
												<h2 class="modal-title" id="exampleModalCenterTitle">${ask.askNum}번
													문의</h2>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="contact-form spad">
												<div class="container">

													<!-- Contact Form Begin -->
													<div class="contact-form spad">
														
															<div class="row" style="text-align: center;">
																<div class="col-lg-12">
																	<div class="contact__form__title">
																		<h2>문의 내용 확인</h2>
																	</div>
																</div>
														
															
																<input type="hidden" name="storeNum" id="storeNum"
																	value="${ask.askNum}" />
																<div class="col-lg-12 col-md-6">
																
																		<h5>이메일 : ${ask.askEmail}</h5>
																</div>
																<div class="col-lg-12 col-md-6">
																	<h5>제목 : ${ask.askTitle}</h5>
																</div>
																</div>
																<div class="row" style="height: 380px;">
																<div class="col-lg-12 text-center">
																	<textarea placeholder="Your message" name="askBody"
																		id="askBody">${ask.askBody}</textarea>
																</div>
															
															</div>	
																
													</div>
													<!-- 	      <div> <img src="images/singleimage.jpg" alt="about us" class="single-image"> </div> -->

												</div>
											</div>


										</div>
									</div>
								</div>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
  $(document).ready(function() {
    $('.appro').click(function() {
      const dropId = $(this).data("userId");
      console.log(dropId);
      const clickedButton = $(this); // 클릭한 버튼을 변수에 저장

      $.ajax({
        type: 'post',
        url: '<c:url value="askupdate" />',
        data: {
          id: dropId,
        },
        success: function(data) {
          const row = clickedButton.closest('tr'); // 클릭한 버튼이 속한 행을 선택
          row.find('td:eq(3)').html('<span style="font-size: 12pt;"><b>check</b></span>'); // 해당 행의 4번째 열에 "check"를 표시
        },
        error: function(status, error) {
          console.log(status, error);
        }
      });
    });

    $('.deni').click(function() {
      const dropId = $(this).data("userId");
      console.log(dropId);
      const clickedButton = $(this); // 클릭한 버튼을 변수에 저장

      $.ajax({
        type: 'post',
        url: '<c:url value="/askupdelete" />',
        data: {
          id: dropId,
        },
        success: function(data) {
          const row = clickedButton.closest('tr'); // 클릭한 버튼이 속한 행을 선택
          row.remove(); // 해당 행을 삭제
        },
        error: function(status, error) {
          console.log(status, error);
        }
      });
    });
  });
</script>
</body>
</html>