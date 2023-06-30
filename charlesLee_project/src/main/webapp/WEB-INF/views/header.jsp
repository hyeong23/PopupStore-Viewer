<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_style_header -->
<header>
  <h1>팝업스토어 캘린더</h1>
  <p>로그인 test</p>
  <div align=right>
  	<c:if test="${empty sessionScope.member_id}">  
	  <span style="font-size:12pt;"><input type="button" value="로그인" onclick="location.href='/login'"></span>
    </c:if>
    <c:if test="${not empty sessionScope.member_id}">
      <span>${sessionScope.member_id} 님</span> &nbsp;&nbsp;&nbsp;  
	  <span style="font-size:12pt;"><input type="button" value="로그아웃" onclick="location.href='/logout'"></span>
    </c:if>
  </div>
</header>
