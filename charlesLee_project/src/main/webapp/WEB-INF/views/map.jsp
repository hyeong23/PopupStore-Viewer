<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
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
    <link rel="stylesheet" href="/css/map.css" type="text/css">
    <link rel="stylesheet" href="/css/modal.css" type="text/css">
    
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

   

    <!-- Header Section Begin -->
   <%@ include file="header.jsp" %>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="/img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>팝업스토어 지도</h2>
					</div>
				</div>
			</div>
		</div>
		
	</section>
    <!-- Hero Section End -->
    <div class="content" style="display:flex; justify-content:center; height: 800px;">
    <div style="display: flex; margin-top:20px; margin-left:-10px;">
    <%@ include file="mapFilter.jsp" %>
    </div>

  <div id="map" style="width:1250px;height:700px; margin-left: 30px; margin-top:20px; "></div>

  
</div>
<br><br><br><br><br>
    <!-- Footer Section Begin -->
    <div>
    	<%@ include file="footer.jsp" %>
    	</div>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery-ui.min.js"></script>
    <script src="/js/jquery.slicknav.js"></script>
    <script src="/js/mixitup.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/main.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<!-- 수정 -->
	<!-- Modal -->
	<c:forEach items="${filterStoreList}" var="map" varStatus="vs">
	<div class="modal fade bd-example-modal-lg" id="exampleModalCenter${vs.index}" tabindex="-10" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  		<div class="modal-dialog modal-lg">
  		<div class="modal-container">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h2 class="modal-title" id="exampleModalCenterTitle">${map.storeTitle}</h2>
<!-- 	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button> -->
	      </div>
	      
<!-- 	      <div> <img src="images/singleimage.jpg" alt="about us" class="single-image"> </div> -->
	      <div class="modal-body">
			<div class="slider">
			    <div class="bullets" id = "bullets${map.storeNum}">
			    </div>

			    <ul id="imgholder${map.storeNum}" class="imgs">
			    </ul>
			    
			    

			</div>	

	      	 <div>

	      
				<hr>
	        	<p> 작성자 : <c:if test="${empty map.memberCompanyName}">
	        	관리자
	        	</c:if>
	        	${map.memberCompanyName} <p>
	        	<p> 개최 기간: ${map.storeStart} ~ ${map.storeEnd} </p>
	        	<p> 개최 장소: ${map.storeLoc} </p>
				<hr>
	        	<p> ${map.storeIntro} </p>
				<hr>
	        	<div class="modal_bodytext">
			    	${map.storeBody}
				</div>
				<hr>
				<p> 조회수 : ${map.storeCount} </p>
	        	<p> <a href="${map.storeSite}" target="_blank" class="link">${map.storeSite} 홈페이지</a></p>
	        	<hr>
	        	<p> 작성일 : ${map.storeCreate} </p>
	        	<p> 마지막 수정일 : ${map.storeUpdate} </p>
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
     	    	 	<p>${reply.replyBody}<p>
      				<p>${reply.replyUpdate}<p> 
      		   </div>
      		   </c:if>
		      </c:forEach>
      
      </div>
      <form  method="POST" id="replyForm" name="replyInsertForm">  			 
                <div class="reply-send">
						<!-- hidden 영역 -->
  					      <input type="hidden" name="storeNum" value="${map.storeNum}">
   					      <input type="hidden" name="memberNum" value="${sessionScope.memberNum}">
     				   <!-- 입력 영역 -->    				
                      <div class="reply_textarea"><textarea placeholder="Your Reply" id="replyBody" name=replyBody></textarea></div> 
                      <div class="reply_sendBtn">
                      	<input type="submit" value="Send" class="reply-send-btn" id="send_message" name="replyInsertBtn"/>
                      </div>
                        
                    </div>
                    </form>
            </div>
<!--             <div class="close-area">X</div> -->
	    	</div>
	  
	  </div>
	</div>
	</div>
	</c:forEach>
	
<%-- <div style="width: 500px; height: 500px; background-color: #a191a5">
	댓글리스트 
	<c:forEach items="${getReplyList}" var="reply" varStatus="vs">
		<p> ${reply.replyBody} </p>
	</c:forEach>
</div> --%>


</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=690096255b88e30ead8c02ac790dd149&libraries=services">
	</script>
	
	
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
	    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	<c:forEach items="${filterStoreList}" var="map" varStatus="vs">

	var address = '${map.storeLoc}';
	
	var geocoder = new kakao.maps.services.Geocoder();
	
	var callback = function(result, status) {
	if (status === kakao.maps.services.Status.OK) {
	    console.log(result);
	    
	    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	    
	    // 결과값으로 받은 위치를 마커로 표시합니다
	    var marker = new kakao.maps.Marker({
	        map: map,
	        position: coords
	    });
	    
	    
	 	// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	    map.setCenter(coords);
	}
	
	
	
	var content = '<div class="wrap">' + 
	'    <div class="info">' + 
	'		<a href="#exampleModalCenter${vs.index}" data-toggle="modal">' +
	'        <div class="title">' + 
	'			<div class="storeTitle" onclick = "modalClick('+ ${map.storeNum} + ')">'	+
	'				${map.storeTitle}' + 
	'			</div>'				+
	'		</a>				' +
	'            <div class="close" id="${map.storeNum}" title="닫기"></div>' + 
	'        </div>' + 
	'        <div class="body">' + 
	'            <div class="img">' +
	'                <img src="/project_image/${map.pictureName}" width="73" height="70" alt = "img">' +
	'        </div>' + 
	'        <div class="desc">' + 
	'                <div class="ellipsis">' + '${map.storeLoc}' + '</div>' + 
	'                <div class="ellipsis">' + '${map.storeLocDetail}' + '</div>' + 
	'                	<div class="jibun ellipsis">' + '${map.storeStart}' + "~" + '${map.storeEnd}' + '</div>' + 
	'                <div><a href="${map.storeSite}" target="_blank" class="link">${map.storeTitle} 홈페이지</a></div>' + 
	'        </div>' + 
	'        </div>' + 
	'    </div>' +    
	'</div>';

		
		
	var overlay = new kakao.maps.CustomOverlay({
	    content: content,
	    map: map,
	    position: marker.getPosition()       
	});
	
	
	var close = document.getElementById('${map.storeNum}')
	console.log(close);
	close.addEventListener('click', function() {
		console.log(close.id);
		overlay.setMap(null);  
	});
	
	kakao.maps.event.addListener(marker, 'click', function() {
	    overlay.setMap(map);
	});
	 	
	function closeOverlay() {
	    overlay.setMap(null);     
	}
	
	};
	
	
	
	geocoder.addressSearch(address, callback);
	
	

	
	function modalClick(storeNum){
			// 현재 map의 storeNum의 번호가 안바뀜
			// 클릭 시 해당 storeNum
			console.log(storeNum);
			
			// 1을 우선 예시로 사용하는 중
			axios.get('http://localhost:8081/api/map/' + storeNum)
			.then(response => {
				var pictureData = response.data;
				console.log(pictureData);
				for(var i = 0; i < pictureData.length; i++){
					var getPictureName = pictureData[i].pictureName;
					var showPicture = document.querySelector('#imgholder' + pictureData[i].storeNum);
					console.log(getPictureName);
					var li = document.createElement("li");
					var picture = document.createElement("img");
					picture.src = "/project_image/" + getPictureName;
					console.log(picture);	
					if (showPicture.children.length < pictureData.length) {
				        
						li.appendChild(picture);
						showPicture.appendChild(li);
						
						// 추가는 되는데 1번 위치에서만 추가됨
					 	var slideId = "slide" + (showPicture.children.length);
				        var bulletLabel = document.createElement("label");
				        bulletLabel.htmlFor = slideId;
				        bulletLabel.innerHTML = "&nbsp;";

				        var bullets = document.querySelector('#bullets' + pictureData[i].storeNum);
/* 				        bullets.appendChild(bulletLabel); */

				        var slideInput = document.createElement("input");
				        slideInput.type = "radio";
				        slideInput.name = "slide" + storeNum.toString();
				        slideInput.id = slideId;
				        slideInput.checked = true;
				        bullets.parentNode.insertBefore(slideInput, bullets);

				        
					}
					
				};
				
			})
			
			
			
	};
	</c:forEach>
</script>
 
<script>
var storeNum = '${map.storeNum}'; //게시글 번호
 
$('[name=replyInsertBtn]').click(function(){ //댓글 등록 버튼 클릭시 
    var insertData = $('[name=replyInsertForm]').serialize(); //commentInsertForm의 내용을 가져옴
    replyInsert(insertData); //Insert 함수호출(아래)
});
 
 
 
//댓글 목록 
function replyList(){
    $.ajax({
        url : '/reply/list',
        type : 'get',
        data : {'storeNum':storeNum},
        success : function(data){
            var a =''; 
            $.each(data, function(key, value){ 
                a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
                a += '<div class="commentInfo'+value.cno+'">'+'댓글번호 : '+value.cno+' / 작성자 : '+value.writer;
                a += '<a onclick="commentUpdate('+value.cno+',\''+value.content+'\');"> 수정 </a>';
                a += '<a onclick="commentDelete('+value.cno+');"> 삭제 </a> </div>';
                a += '<div class="commentContent'+value.cno+'"> <p> 내용 : '+value.content +'</p>';
                a += '</div></div>';
            });
            
            $(".replyList").html(a);
        }
    });
}
 
//댓글 등록
function insertReply(insertData){
    $.ajax({
        url : '/reply/insert',
        type : 'post',
        data : insertData,
        success : function(data){
            if(data == 1) {
                replyList(); //댓글 작성 후 댓글 목록 reload
                $('[name=replyBody]').val('');
            }
        }
    });
}
 
//댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
function updateReply(replyNum, replyBody){
    var a ='';
    
    a += '<div class="input-group">';
    a += '<input type="text" class="form-control" name="replyBody'+replyNum+'" value="'+replyNum+'"/>';
    a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('+cno+');">수정</button> </span>';
    a += '</div>';
    
    $('.commentContent'+cno).html(a);
    
}
 
//댓글 수정
function commentUpdateProc(cno){
    var updateContent = $('[name=content_'+cno+']').val();
    
    $.ajax({
        url : '/comment/update',
        type : 'post',
        data : {'content' : updateContent, 'cno' : cno},
        success : function(data){
            if(data == 1) commentList(bno); //댓글 수정후 목록 출력 
        }
    });
}
 
//댓글 삭제 
function commentDelete(cno){
    $.ajax({
        url : '/comment/delete/'+cno,
        type : 'post',
        success : function(data){
            if(data == 1) commentList(bno); //댓글 삭제후 목록 출력 
        }
    });
}
 
 
 
 
$(document).ready(function(){
    replyList(); //페이지 로딩시 댓글 목록 출력 
});
 
 
 
</script>





</html>