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
                
                                
        <link rel="stylesheet" href="css/main.css" >
        
        <!-- Google JQuery CDN -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        
       

    </head>
    <body>
        <div>
           <div class="panel shadow1">
                <form action="/business" class="login-form" method="POST">
                    
                    <h1 class="animated fadeInUp animate1" id="title-login">Business</h1>
                    
                    <fieldset id="login-fieldset">
                        <input class="login animated fadeInUp animate1" name="member_id" id="username" type="text"  required   placeholder="Username" value="" >
                        <input class="login animated fadeInUp animate2" name="member_pw" id="password" type="password" required placeholder="Password" value="">
                        <input class="login animated fadeInUp animate3" name="member_email" id="member_email" type="text"  required   placeholder="Email" value="" >
                        <input class="login animated fadeInUp animate4" name="member_company_name" id="member_company_name" type="text"  required   placeholder="Company_name" value="" >
                        <input class="login animated fadeInUp animate5" name="member_company_num" id="member_company_num" type="text"  required   placeholder="Business Number" value="" >
                    </fieldset>
                    
                    <input type="submit" id="login-form-submit" class="login_form button animated fadeInUp animate4" value="SIGN UP" style=" margin-top: 70px;">
                     
                   <p><br><br><a id="login-link" href="/register" class="animated fadeIn animate5">back to register</a></p>
                    
                </form>
            </div>
        </div>
      
    </body>
</html>