<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
   <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/css/style.css" type="text/css">
    <link rel="stylesheet" href="/css/map.css" type="text/css">
    <link rel="stylesheet" href="/css/modal.css" type="text/css">
    
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<!-- Js Plugins -->
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery.nice-select.min.js"></script>
    <script src="/js/jquery-ui.min.js"></script>
    <script src="/js/jquery.slicknav.js"></script>
    <script src="/js/mixitup.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/main.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body>
<!-- Modal -->
  		<div class="modal-container">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h2 class="modal-title" id="exampleModalCenterTitle">${store2[0].storeTitle}</h2>
<!-- 	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button> -->
	      </div>
	      
<!-- 	      <div> <img src="images/singleimage.jpg" alt="about us" class="single-image"> </div> -->
	      <div class="modal-body">
			<div class="slider">
			    <input type="radio" name="slide" id="slide1" checked>
			    <div class="bullets" id = "bullets${store2[0].storeNum}">
			        <label for="slide1">&nbsp;</label>
			    </div>

			    <ul id="imgholder${store2[0].storeNum}" class="imgs">
					<li><img src = "picture/${store2[0].pictureName}"></li>
			    </ul>
			    
			    

			</div>	

	      	 <div>

	      
	        	<h5>작성자 : </h5>
	        	<p> 개최 기간: ${store2[0].storeStart} ~ ${store2[0].storeEnd} </p>
	        	<p> 개최 장소: ${store2[0].storeLoc} </p>
	        	<p> ${store2[0].storeIntro} </p>
	        	<div class="modal_bodytext">

			    	${store2[0].storeBody}
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
</body>
</html>