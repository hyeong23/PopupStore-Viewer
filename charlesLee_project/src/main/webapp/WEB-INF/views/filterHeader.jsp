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
		<div style="font-family: 'Orbit', sans-serif; font-size: 18pt; margin-bottom:10px;">통합검색</div>
			<input type="text" name="inputText"/>
			<input type="submit" value="검색">	
		</form>				
		</div>	
		</div>	
<br/>
    <div id="leftHeaderCategory">
    <form method="get" action="CheckboxServlet">
    <p style="font-family: 'Orbit', sans-serif; font-size: 18pt; color: black;">카테고리 선택</p>
		<input type="checkbox" name="item" value="character">&nbsp 캐릭터 <br>
		<input type="checkbox" name="item" value="media">&nbsp 미디어 <br>
		<input type="checkbox" name="item" value="food">&nbsp 식음료 <br>
		<input type="checkbox" name="item" value="fashion">&nbsp 패션/뷰티 <br>
 		<input type="checkbox" name="item" value="others"> &nbsp 기타 <br>
		<input type="submit" value="적용" style="margin-top:10px;">
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