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
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/list.css" type="text/css">
 
 <style>
#bbsList_list {
  display: flex;
}
#bbsList_list dl {
  display: flex;
  flex-direction: row;
}
#bbsList_list dd {
  flex: 1;
}
</style>

</head>

<body>
<div id="bbsList_header">
		<div id="leftHeader">
		<form action="/filterTested" method="GET" name="searchForm">
		<span>통합검색</span>
<!-- 			<select name="selectValue" class="selectField">
				<option value="Title">제목</option>
				<option value="name">작성자</option>
				<option value="content">내용</option>
			</select> -->
			<input type="text" name="inputText"/>
			<input type="submit" value="검색하기">	
		</form>				
		</div>	
		</div>	
<br/>
    <div>
    <form method="get" action="CheckboxServlet">
    <p>Categories</p>
		<input type="checkbox" name="item" value="character">캐릭터
		<input type="checkbox" name="item" value="media">미디어
		<input type="checkbox" name="item" value="food">식음료
		<input type="checkbox" name="item" value="fashion">패션/뷰티
		<input type="checkbox" name="item" value="others">기타
		<br><br>
		<input type="submit" value="확인">
	</form>
	</div>
	
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