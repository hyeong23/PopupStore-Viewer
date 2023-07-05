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

   <!-- Header Section Begin -->
   <%@ include file="header.jsp" %>
    <!-- Header Section End -->
  
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

    <script>
      document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid' ],
      defaultDate: new Date(),
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: 'All Day Event',
          start: '2020-02-01'
        },
        {
          title: 'Long Event',
          start: '2023-07-07',
          end: '2023-07-10'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2023-07-09T16:00:00'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2023-07-16T16:00:00'
        },
        {
          title: 'Conference',
          start: '2023-07-11',
          end: '2023-07-13'
        },
        {
          title: 'Meeting',
          start: '2023-07-12T10:30:00',
          end: '2023-07-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2023-07-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2023-07-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2023-07-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2023-07-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2023-07-13T07:00:00'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2023-07-28'
        }
      ]
    });

    calendar.render();
  });

    </script>

    <script src="/calendar/js/main.js"></script>
  </body>
</html>