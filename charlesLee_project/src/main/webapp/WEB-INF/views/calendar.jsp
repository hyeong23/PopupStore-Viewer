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
  
<!-- 모달 창 열기 버튼 -->
    <div id="container">
        <button id="btn-modal">모달 창 열기 버튼</button>
    </div>
    <div id="modal" class="modal-overlay">
    <%@ include file="modal-content.jsp" %>
        
    </div>
  
    <!-- Footer Section Begin -->
    <%@ include file="footer.jsp" %>
    <!-- Footer Section End -->
    
<%-- <c:forEach items="${openStoreList}" var="store">
  <!-- 정보를 사용하여 동적으로 HTML 표시 -->
  <div>
    <p>${store.storeTitle}</p>
    <p>${store.storeIntro}</p>
    <p>${store.storeStart}</p>
    <p>${store.storeEnd}</p>
  </div>
</c:forEach> --%>

    <script src="/calendar/js/jquery-3.3.1.min.js"></script>
    <script src="/calendar/js/popper.min.js"></script>
    <script src="/calendar/js/bootstrap.min.js"></script>

    <script src='/calendar/fullcalendar/packages/core/main.js'></script>
    <script src='/calendar/fullcalendar/packages/interaction/main.js'></script>
    <script src='/calendar/fullcalendar/packages/daygrid/main.js'></script>

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
    const modal = document.getElementById("modal")
    function modalOn() {
        modal.style.display = "flex"
    }
    function isModalOn() {
        return modal.style.display === "flex"
    }
    function modalOff() {
        modal.style.display = "none"
    }
    const btnModal = document.getElementById("btn-modal")
    btnModal.addEventListener("click", e => {
        modalOn()
    })
    const closeBtn = modal.querySelector(".close-area")
    closeBtn.addEventListener("click", e => {
        modalOff()
    })
    modal.addEventListener("click", e => {
        const evTarget = e.target
        if(evTarget.classList.contains("modal-overlay")) {
            modalOff()
        }
    })
    window.addEventListener("keyup", e => {
        if(isModalOn() && e.key === "Escape") {
            modalOff()
        }
    })
    
    modalOff();
    </script>
  </body>
</html>
