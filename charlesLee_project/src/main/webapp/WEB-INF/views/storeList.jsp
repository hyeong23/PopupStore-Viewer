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
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
   <%@ include file="header.jsp" %>
    <!-- Header Section End -->
    


<div id="bbsList">

	
	<div id="bbsList_header">
		<div id="leftHeader">
		<form action="" method="get" name="searchForm">
			<select name="searchKey" class="selectField">
				<option value="subject">제목</option>
				<option value="name">작성자</option>
				<option value="content">내용</option>
			</select>
			<input type="text" name="searchValue" class="textField"/>
			<input type="button" value=" 검 색 " class="btn2" onclick="sendIt();"/>		
		</form>				
		</div>
		<div id="rightHeader" style="text-align: right;">
			<input type="button" value=" 글올리기 " class="btn2" 
			onclick="javascript:location.href='/board/created.jsp';"/>			
		</div>	
	</div>
	<div id="bbsList_list">
	<c:if test="${empty requestScope.store}">
			<tr>
				<td colspan="5">
					<p align="center">
						<b><span style="font-size: 12pt;">등록된 글이 존재하지 않습니다.</span></b>
					</p>
				</td>
			</tr>
		</c:if>
	
	
	
	
  <table align="center" border="0" cellpadding="5" cellspacing="2"
		width="100%" bordercolordark="white" bordercolorlight="black">
    <thead>
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>조회수</th>
        <th>승인/거부</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${requestScope.store}" var="store">
        <tr>
          <td>${store.storeNum}</td>
          <td>${store.storeTitle}</td>
          <td>${store.memberCompanyName}</td>
          <td>${store.storeCount}</td>
          <td>${store.storeStatus}</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
	
</div>



    <!-- Footer Section Begin -->
    <%@ include file="footer.jsp" %>
    <!-- Footer Section End -->

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