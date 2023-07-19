<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      
        <!-- Font online-->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
      
<!--        Animate.css-->
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
                
                                
       
        
        <!-- Google JQuery CDN -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        
       <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
    
    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/main.css" type="text/css" >

    </head>
    <body>
    <!-- Header Section Begin -->
	<%@ include file="header.jsp"%>
	<!-- Header Section End -->
        <div>
           <div class="panel shadow1">
                <form action="/login" class="login-form" method="POST">
                    
                    <h1 class="animated fadeInUp animate1" id="title-login"  style="margin-block: 100px">Welcome</h1>
                    
                    <fieldset id="login-fieldset">
                        <input class="login animated fadeInUp animate2" name="memberId" id="username" type="text"  required   placeholder="Username" value="" >
                        <input class="login animated fadeInUp animate3" name="memberPw" id="password" type="password" required placeholder="Password" value="">
                    </fieldset>
                    
                    <input type="submit" id="login-form-submit" class="login_form button animated fadeInUp animate4" value="Log in" style=" margin-top: 70px;">
                     
                   
                    <p><br><a id="register-link" href="/register" class="animated fadeIn animate5" style="color:white;">register</a></p>
                    
                </form>
            </div>
        </div>
      
    </body>
</html>