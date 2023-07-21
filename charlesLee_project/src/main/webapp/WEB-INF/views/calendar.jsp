<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">


<link rel="stylesheet" href="/calendar/fonts/icomoon/style.css">

<link href='/calendar/fullcalendar/packages/core/main.css'
	rel='stylesheet' />
<link href='/calendar/fullcalendar/packages/daygrid/main.css'
	rel='stylesheet' />


<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/calendar/css/bootstrap.min.css">

<!-- Style -->
<link rel="stylesheet" href="/calendar/css/style.css">

<!-- Css Styles -->
<link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/css/style.css" type="text/css">
<link rel="stylesheet" href="/css/modal.css" type="text/css">


<!-- Js Plugins -->
<script src="/js/jquery-3.3.1.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery-ui.min.js"></script>
<script src="/js/jquery.slicknav.js"></script>
<script src="/js/mixitup.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/main.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




<title>POP UP!</title>

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<%@ include file="header.jsp"%>

	<section class="breadcrumb-section set-bg"
		data-setbg="/img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>팝업스토어 달력</h2>
					</div>
				</div>
			</div>
		</div>

	</section>




	<div class="content" style="display: flex; margin-top: 20px;">
		<div class="filterBox" style="display: flex; margin-top: 40px;">
			<%@ include file="calendarFilter.jsp"%>
		</div>
		<div id='calendar'></div>
		<div id=scrolls>
			<div id=of2 class="overflow-auto bg-light"
				style="max-width: 250px; ">
				<div>
					<c:forEach items="${openStoreList}" var="store">
					<div class="calendar-miniInfo">
						<div><img src="/project_image/${store.pictureName}" alt="img" class="calendar-miniInfo-img"></div> 
						<div class="calendar-miniInfo-p">
						<p>${store.storeTitle}</p><hr>
						<p>${store.storeStart}</p>
						<p>${store.storeEnd}</p>
						</div>
					</div>
					</c:forEach> 
				</div>

			</div>
		</div>
	</div>


	<!-- Footer Section Begin -->
	<%@ include file="footer.jsp"%>
	<!-- Footer Section End -->



	<script src="/calendar/js/jquery-3.3.1.min.js"></script>
	<script src="/calendar/js/popper.min.js"></script>
	<script src="/calendar/js/bootstrap.min.js"></script>

	<script src='/calendar/fullcalendar/packages/core/main.js'></script>
	<script src='/calendar/fullcalendar/packages/interaction/main.js'></script>
	<script src='/calendar/fullcalendar/packages/daygrid/main.js'></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


	<!-- 수정 -->
	<!-- Modal -->








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

    	      <c:forEach items="${filterStoreList}" var="store">
    	        { 
    	          number : '${store.storeNum}',
    	          title: '${store.storeTitle}',
    	          start: '${store.storeStart}T00:00:00',
    	          end: '${store.storeEnd}T23:59:59'
    	        },
    	      </c:forEach>
    	    ],
	    	  eventClick:function(event2) {
	    		alert(event2.event.title);
	  	    	var event = calendar.getEventById(event2.event.extendedProps.number);
	  	    	$(".modal-dialog").load("/calendar/" + event2.event.extendedProps.number);
	  	    	
	  	    	modalClick(event2.event.extendedProps.number);
	  	    	
	  	    	myModal.show();
	  	    	
	  	    	

	          }
    	  });
    	  
    	  calendar.render();
    	  var myModal = new bootstrap.Modal(document.getElementById('exampleModalCenter'), {
	      	  keyboard: false
	      	});
    	});

    </script>
	<script src="/calendar/js/main.js"></script>


	<script>
   	
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
    
    
    </script>

	<!-- Modal -->
	<div class="modal fade bd-example-modal-lg" id="exampleModalCenter"
		tabindex="-10" role="dialog" aria-labelledby="myLargeModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-lg"></div>
	</div>
	
	

</body>
</html>
