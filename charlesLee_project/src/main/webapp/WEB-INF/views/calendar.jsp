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




<title>Calendar #9</title>

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




	<div class="content">
		<div class="filterBox" style="margin-top: 90px;">
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
	  	    	//$("#exampleModalCenter").modal(); 
	  	    	/*$.ajax({
		        		type : 'post',
		        		url : '<c:url value="store2" />',
		        		data : {
		            		id : event.id,
		            	},
		            	success : function(data){
		            		console.log('test');
		            	},error : function(status, error) {
		      				
		      				console.log(status, error);
		      			}
		  			}); */
	  	    	//myModal.show();
	  	    	//var title = $(".modal-header #exampleModalCenterTitle");
			        //title.val("gtt");
			        //var body = $(".col-lg-12 col-md-6 #storeBody");
			        //body.text("test");
			        //$(".col-lg-12 #storeBody").text(${openStoreList[0].storeNum});
	  	    	myModal.show();
	  	    	
	  	    	//alert(${openStoreList[0].storeNum});
	  	    	//alert(event);
	  	    	//alert(event2.event.extendedProps.department);
	  	    	//alert(event2.event.test1);
		    	    /*
			        var title = $(".modal-header #exampleModalCenterTitle");
			        title.val(event2.event.extendedProps.title);
			        var title2 = $(".col-lg-12 col-md-6 #storeTitle");
			        title2.val(event2.event.extendedProps.title);
			        var intro = $(".col-lg-12 col-md-6 #storeIntro");
			        intro.val(event2.event.extendedProps.intro);
			        var body = $(".col-lg-12 col-md-6 #storeBody");
			        body.val(event2.event.extendedProps.body);
			        var loc = $(".col-lg-12 col-md-6 #storeLoc");
			        loc.val(event2.event.extendedProps.loc);
			        var site = $(".col-lg-12 col-md-6 #storeSite");
			        site.val(event2.event.extendedProps.site);*/
	  	    	//var resourceIds = resources.map(function(resource) { return resource.id });
	  	    	//alert(resources);
	  	    	///alert(event.id + ' ' + event.title + ' ' + '${openStoreList[2].storeTitle}');
	  	    	//myModal.show();
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
   	
    function tempClick(titleHtml){
    	alert(titleHtml); 
    }
    
    
    </script>

	<!-- Modal -->
	<div class="modal fade bd-example-modal-lg" id="exampleModalCenter"
		tabindex="-10" role="dialog" aria-labelledby="myLargeModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-lg"></div>
	</div>
	
	

</body>
</html>
