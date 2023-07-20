<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
        /* 스타일링 */

        #popup {
            display: none;
            position: absolute;
            top: 15%;
            left: 65%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
            z-index: 9999;
     		width: 400px;
     		height: 300px;
        }
        #closeBtn {
            float: right;
            cursor: pointer;
        }
    </style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<header class="header">
        <div class="header__top">
            <div class="container" style="margin-left:15%;">
                <div class="row">
                     	 <a href="/main" style="margin: auto;"><img src="/project_image/logo.png" style="width: 170px; margin-left:0px; margin-top:0px;"></a>                 
                 	 	 <nav class="header__menu" style="margin-right: 200px; margin-left: 200px; padding-top: 24px;">
              	     	    <ul>                 
               	     	       <li><a href="/card">전체보기</a></li>
               	     	       <li><a href="/calendar">캘린더</a>     </li>                             
               	   	           <li><a href="/map">지도</a></li>
               	  	           <li><a href="/announcement">공지사항</a></li>
             	 	         </ul>
             		     </nav>
      					
                         <div class="header__top__right"  style="width: 190px">
                            <a href="/ask"><span style="font-size: 10px; color: black;">문의하기 |</span></a>
                            <a href="/storeList"><span style="font-size: 10px; color: black;">팝업등록신청 |</span></a>
                            <a href="/mypage"><span style="font-size: 10px; color: black;">마이페이지</span></a>
                           
                          
                           <br>
                            <img id="notificationBtn" alt="#"  src="/img/yellow.png"  onclick="getAlarm()" style="width: 10%; height: 20%;" >
                            <c:if test="${empty sessionScope.memberId}"> 
	                            <div class="header__top__right__auth">
	                                <a href="/login"><i class="fa fa-user"></i> Login </a>
	                                </div>
                            </c:if>
                            
                            <c:if test="${not empty sessionScope.memberId}">
	                            <div class="header__top__right__auth">
	                           <i style="font-size: 14px; color: #1c1c1c;">${sessionScope.memberName}</i>
								   <a href="/logout"><i class="fa fa-user"> </i> Logout</a>								    
								   </div>
							</c:if>  
							
                        </div>
                   
					
    <!-- 알림 팝업 -->
   <div id="overlay"></div>
<div id="popup">
    <span id="closeBtn">&times;</span>
    <h3>새로운 알림이 있습니다!</h3>
    <ul id="alarmsContainer"></ul>
</div>


  <script>
        // 알림 버튼과 팝업 엘리먼트를 JavaScript로 가져옵니다.
        const notificationBtn = document.getElementById('notificationBtn');
        const overlay = document.getElementById('overlay');
        const popup = document.getElementById('popup');
        const closeBtn = document.getElementById('closeBtn');

        // 알림 버튼 클릭 이벤트 리스너 등록
        notificationBtn.addEventListener('click', () => {
            // 모달 팝업 표시
            overlay.style.display = 'block';
            popup.style.display = 'block';
        });

        // 팝업 닫기 버튼 클릭 이벤트 리스너 등록
        closeBtn.addEventListener('click', () => {
            // 모달 팝업 숨김
            overlay.style.display = 'none';
            popup.style.display = 'none';
        });
    </script> 
    <script>
    function getAlarm() {
        // AJAX 요청을 사용하여 컨트롤러 실행
        $.ajax({
            url: '/api/getAlarm', // 알림 데이터를 가져올 URL
            type: 'GET',
            dataType: 'json',
            success: function(response) {
                if (response && response.length > 0) {
                    response.forEach(function(alarm) {
                        const popupContent = alarm.alarmContent;
                        const newAlarmElement = document.createElement('li');
                        newAlarmElement.innerText = popupContent;
                        document.getElementById('alarmsContainer').appendChild(newAlarmElement);
                    });

                    // 팝업 표시
                    overlay.style.display = 'block';
                    popup.style.display = 'block';
                } else {
                    alert("알림이 없습니다.");
                }
            },
            error: function() {
                alert("알림 가져오기에 실패했습니다.");
            }
        });
    }
</script>

                </div>
            </div>
        </div>
        
    </header>