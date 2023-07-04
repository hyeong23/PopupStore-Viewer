<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                     	 <a href="/main" style="padding-top: 10px; padding-left: 10px"><img src="img/logo.png" alt=""></a>                 
                 	 	 <nav class="header__menu" style="margin-right: 200px; margin-left: 250px; padding-top: 24px;">
              	     	    <ul>                 
               	     	       <li><a href="/card">전체보기</a></li>
               	     	       <li><a href="/calendar">캘린더</a>     </li>                             
               	   	           <li><a href="/map">지도</a></li>
               	  	           <li><a href="/notice">공지사항</a></li>
             	 	         </ul>
             		     </nav>
      
                         <div class="header__top__right"  style="width: 200px">
                            <a href="/ask"><span style="font-size: 10px; color: black;">문의하기 |</span></a>
                            <a href="/storeRegister"><span style="font-size: 10px; color: black;">팝업등록신청 |</span></a>
                            <a href="/mypage"><span style="font-size: 10px; color: black;">마이페이지</span></a>
                           
                           
                           <br>
                            <c:if test="${empty sessionScope.member_id}"> 
	                            <div class="header__top__right__auth">
	                                <a href="/login"><i class="fa fa-user"></i> Login </a>
	                                </div>
                            </c:if>
                            
                            <c:if test="${not empty sessionScope.member_id}">
	                            <div class="header__top__right__auth">
								   <a href="/logout"><i class="fa fa-user"></i> Logout</a>
								   </div>
							</c:if>  
                        </div>
                    
                </div>
            </div>
        </div>
        
    </header>