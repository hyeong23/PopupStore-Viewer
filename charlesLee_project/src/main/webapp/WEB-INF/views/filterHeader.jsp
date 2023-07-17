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
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/css/style.css" type="text/css">
    <link rel="stylesheet" href="/css/list.css" type="text/css">
 


</head>

<body>

<!-- 검색 -->
<div id="bbsList_header">
		<!-- <div id="leftHeader">
		<form action="/filterTested" method="GET" name="searchForm">
		<div style="font-family: 'Orbit', sans-serif; font-size: 18pt; margin-bottom:10px;">통합검색</div>
			<input type="text" name="inputText"/>
			<input type="submit" value="검색">	
		</form>				

		</div>	 -->
		
		
		<div>
    <form action="/calendar/filter" method="GET" >	
	
	<div>
	<p>Categories</p>
	<select name="category" id="category">
   	 <option value="select">카테고리</option>
   	 <option value="character">캐릭터</option>
   	 <option value="media">미디어</option>
   	 <option value="food">식음료</option>
   	 <option value="fashion">패션</option>
   	 <option value="others">기타</option>
   </select>
	</div>
 <br><br>
 
 <p>Company</p>
 <div>
	 <ul>
 		<c:forEach items="${getBussinessMember}" var="member">
 			<li>
				<input type="checkbox" id="memberCompanyName${member}" name="memberCompanyName" value="${member}" checked="checked">
 			    <label for="memberCompanyName${member}">${member}</label> 
			</li>
		</c:forEach>
   	 </ul>
 </div>
	<p>Heart</p>
	<div id ="store_stc">
		
		 <div id="store_chk">
				<input type="radio" id="heart0" name="heart" value=0 checked="checked">전체
		 </div>
  	   	 <div id="store_chk">
				<input type="radio" id="heart1" name="heart" value=1>좋아요만
		 </div>
	</div>
	
	<p>Date</p>
	<div id ="store_stc">
		 <div id="store_chk">
			    <input type="radio" id="startDate0" name="startDate" value=0 checked="checked">전체
		 </div>
	 	 <div id="store_chk">
				<input type="radio" id="startDate1" name="startDate" value=1>진행중
		 </div>
		 <div id="store_chk">
				<input type="radio" id="startDate2" name="startDate" value=2>진행 예정
		 </div>
  		
	</div>
	<p>Store</p>
	<div>
			<ul>
			<c:forEach items="${openStoreList}" var="openStoreList" >		
  		    	<li>
 				  <input type="checkbox" id="storeTitle${openStoreList.storeNum}" name="storeTitle" value="${openStoreList.storeTitle}" checked="checked">
 				  <label for="storeTitle${openStoreList.storeNum}">${openStoreList.storeTitle}</label>
				</li>			
			</c:forEach>
			</ul>
	</div>		
	<p>Loc</p>
	<div>
	<select name="category" id="category">
				<c:forEach items="${location}" var="location">	
						<option id="storeLoc" name="storeLoc" value="${location}" >${location}</option>		  		
 				 </c:forEach>	
	  </select>
			<ul>
							
  		    		<li>
 				  		
					</li>	
								
			</ul>
	</div>			
			
			<input type="submit" value="적용">
	

	</form>
	</div>
		
		
		</div>	
<br/>
    
	
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