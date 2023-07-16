<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">

    
    <link rel="stylesheet" href="/calendar/fonts/icomoon/style.css">
  
    <link href='/calendar/fullcalendar/packages/core/main.css' rel='stylesheet' />
    <link href='/calendar/fullcalendar/packages/daygrid/main.css' rel='stylesheet' />
    
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/calendar/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="/calendar/css/style.css">
    
        <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    
    

    <title>Calendar #9</title>
    
  </head>
  <body>

   <%@ include file="header.jsp" %>
   
	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Calendar</h2>
					</div>
				</div>
			</div>
		</div>
		
	</section>
	
   <%@ include file="filterHeader.jsp" %>
 
  <div class="content">
    <div id='calendar'>
    </div>
    <div id=scrolls>
    <div id=of1 class="overflow-auto p-3 bg-light" style="max-width: 250px; max-height: 250px;">
 This is an example of using <code>.overflow-auto</code>
 on an element with set width and height dimensions. By design, this content will vertically scroll.
  This is an example of using <code>.overflow-auto</code>
 on an element with set width and height dimensions. By design, this content will vertically scroll.
  This is an example of using <code>.overflow-auto</code>
 on an element with set width and height dimensions. By design, this content will vertically scroll.
  This is an example of using <code>.overflow-auto</code>
 on an element with set width and height dimensions. By design, this content will vertically scroll. This is an example of using <code>.overflow-auto</code>
 on an element with set width and height dimensions. By design, this content will vertically scroll.
 </div>
     <div id=of2 class="overflow-auto p-3 bg-light" style="max-width: 250px; max-height: 465px;">
 This is an example of using <code>.overflow-auto</code>
 on an element with set width and height dimensions. By design, this content will vertically scroll.
  This is an example of using <code>.overflow-auto</code>
 on an element with set width and height dimensions. By design, this content will vertically scroll.
  This is an example of using <code>.overflow-auto</code>
 on an element with set width and height dimensions. By design, this content will vertically scroll.
  This is an example of using <code>.overflow-auto</code>
 on an element with set width and height dimensions. By design, this content will vertically scroll. This is an example of using <code>.overflow-auto</code>
 on an element with set width and height dimensions. By design, this content will vertically scroll.
 </div>
 </div>
  </div>



  
    <!-- Footer Section Begin -->
    <%@ include file="footer.jsp" %>
    <!-- Footer Section End -->
    


    <script src="/calendar/js/jquery-3.3.1.min.js"></script>
    <script src="/calendar/js/popper.min.js"></script>
    <script src="/calendar/js/bootstrap.min.js"></script>

    <script src='/calendar/fullcalendar/packages/core/main.js'></script>
    <script src='/calendar/fullcalendar/packages/interaction/main.js'></script>
    <script src='/calendar/fullcalendar/packages/daygrid/main.js'></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
	<!-- 수정 -->
	<!-- Modal -->
	<c:forEach items="${openStoreList}" var="store" varStatus="vs">
	<div class="modal fade bd-example-modal-lg" id="exampleModalCenter${vs.index}" tabindex="-10" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  		<div class="modal-dialog modal-lg">
  		<div class="modal-container">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h2 class="modal-title" id="exampleModalCenterTitle">${store.storeTitle}</h2>
<!-- 	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button> -->
	      </div>
	      
<!-- 	      <div> <img src="images/singleimage.jpg" alt="about us" class="single-image"> </div> -->
	      <div class="modal-body">
			<div class="slider">
			    <input type="radio" name="slide" id="slide1" checked>
			    <div class="bullets" id = "bullets${store.storeNum}">
			        <label for="slide1">&nbsp;</label>
			    </div>

			    <ul id="imgholder${store.storeNum}" class="imgs">
					<li><img src = "picture/${store.pictureName}"></li>
			    </ul>
			    
			    

			</div>	

	      	 <div>

	      
	        	<h5>작성자 : </h5>
	        	<p> 개최 기간: ${store.storeStart} ~ ${store.storeEnd} </p>
	        	<p> 개최 장소: ${store.storeLoc} </p>
	        	<p> ${store.storeIntro} </p>
	        	<div class="modal_bodytext">

			    	${store.storeBody}
				 </div>
	      </div>
	      	 
	      
	      
	      <!-- <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">Save changes</button>
	      </div> -->
            </div>
            </div>
			<div class="modal-replywindow">
            <div class="title">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	        <h2>댓글</h2>
                
                <div class="reply-list">
                
               <c:forEach items="${getReplyList}" var="reply">
                <c:if test="${reply.storeNum eq map.storeNum}">
               <div class="reply-each">
        		 	<p>${reply.memberNickname}<p>
     	    	 	<p>${reply.reply}<p>
      				<p>${reply.replyUpdate}<p> 
      		   </div>
      		   </c:if>
		      </c:forEach>
      
      </div>
      <form  method="POST" onsubmit="return checkReply(event)" id="replyForm">  			 
                <div class="reply-send">
               			 
						<%-- <!-- hidden 영역 -->
  					      <input type="hidden" name="storeNum" value="${getMapList.storeNum}">
   					      <input type="hidden" name="memberNum" value="${sessionScope.memberNum}"> --%>
     				   <!-- 입력 영역 -->    				
                      <div class="reply_textarea"><textarea placeholder="Your Reply" name="reply" id="reply" ></textarea></div> 
                      <div class="reply_sendBtn"><input type="submit" onclick="return checkReply(event)" value="Send" class="reply-send-btn" id="send_message"/></div>
                        
                    </div>
                    </form>
            </div>
<!--             <div class="close-area">X</div> -->
	    	</div>
	  
	  </div>
	</div>
	</div>
	</c:forEach>
	
	
	
	
	
	
	
    <script>
    document.addEventListener('DOMContentLoaded', function() {
    	  var calendarEl = document.getElementById('calendar');
    	  var calendar = new FullCalendar.Calendar(calendarEl, {
    	    plugins: [ 'interaction', 'dayGrid' ],
    	    defaultDate: new Date(),
    	    editable: true,
    	    eventLimit: true, // allow "more" link when too many events,
      	    displayEventTime: false,
    	    events: [
    	      <c:forEach items="${openStoreList}" var="store">
    	        { 
    	          number : '${store.storeNum}',
    	          title: '${store.storeTitle}',
    	          start: '${store.storeStart}T00:00:00',
    	          end: '${store.storeEnd}T23:59:59'
    	        },
    	      </c:forEach>
    	    ]
    	  });
    	  
    	  calendar.render();
    	});

    </script>
     <script src="/calendar/js/main.js"></script>
    
    
    <script>
   	
    function tempClick(titleHtml){
    	alert(titleHtml); 
    }
    
    
    </script>
    
    
    
    
    
    
    
    
    
    
  </body>
</html>
