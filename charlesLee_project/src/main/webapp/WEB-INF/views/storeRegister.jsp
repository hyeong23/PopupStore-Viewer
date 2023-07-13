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

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/picture.css" type="text/css">
   <style>
    /* 주 카테고리 라디오 버튼 스타일 */
    #store_stc input[type="radio"][name="category1"] {
        height: 25px;
        margin: auto;
        
    }
    
    /* 부 카테고리 라디오 버튼 스타일 */
    #store_stc input[type="radio"][name="category2"] {
          height: 25px;
        margin: auto;
    }
   
</style>
  
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
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All departments</span>
                        </div>
                        <ul>
                            <li><a href="#">Fresh Meat</a></li>
                            <li><a href="#">Vegetables</a></li>
                            <li><a href="#">Fruit & Nut Gifts</a></li>
                            <li><a href="#">Fresh Berries</a></li>
                            <li><a href="#">Ocean Foods</a></li>
                            <li><a href="#">Butter & Eggs</a></li>
                            <li><a href="#">Fastfood</a></li>
                            <li><a href="#">Fresh Onion</a></li>
                            <li><a href="#">Papayaya & Crisps</a></li>
                            <li><a href="#">Oatmeal</a></li>
                            <li><a href="#">Fresh Bananas</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+65 11.188.888</h5>
                                <span>support 24/7 time</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Contact Form Begin -->
    <div class="contact-form spad" style="height: auto">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>팝업스토어 등록신청</h2>
                    </div>
                </div>
            </div>
            <form action="/storeRegister" method="POST" enctype="multipart/form-data">
                <div class="row">
                   
                    <div class="col-lg-12 col-md-6">
                        <input type="text" placeholder="제목" name="storeTitle" id="storeTitle">
                    </div>
                     <div class="col-lg-12 col-md-6">
                        <input type="text" placeholder="인트로" name="storeIntro" id="storeIntro">
                    </div>
                     <div class="col-lg-12 col-md-6" >
                        <span>시작일 : </span><input type="date"  name="storeStart" id="storeStart" style="width: auto">
                        <span>종료일 : </span><input type="date"  name="storeEnd" id="storeEnd" style="width: auto">
                        <textarea placeholder="내용" name="storeBody" id="storeBody"></textarea>
                        
                    </div>
                    <div id="store_stc">
    						주 카테고리:
   							 <div id="store_chk">
      							  <input type="radio" id="radio1" name="category1" value="character">캐릭터
  							  </div>    
   							 <div id="store_chk">                            
     							   <input type="radio" id="radio2" name="category1" value="food">식음료
   							 </div>               
   							 <div id="store_chk">
    						    <input type="radio" id="radio3" name="category1" value="media">미디어
  							 </div>    
   							 <div id="store_chk">
   						     <input type="radio" id="radio4" name="category1" value="fashion">패션/뷰티
   							 </div>    
                                <div id="store_chk">
                                    <input type="radio" id="radio5" name="category1" value="other">기타
                                </div>         
                            </div>
                          <br> <br> <br>
                   <div id="store_stc">
                                부 카테고리:
                                <div id="store_chk">
                                    <input type="radio" id="radio6" name="category2" value="character">캐릭터
                                </div>    
                                <div id="store_chk">
                                    <input type="radio" id="radio7" name="category2" value="food">식음료
                                </div>               
                                <div id="store_chk">
                                    <input type="radio" id="radio8" name="category2" value="media">미디어
                                </div>    
                                <div id="store_chk">
                                    <input type="radio" id="radio9" name="category2" value="fashion">패션/뷰티
                                </div>    
                                <div id="store_chk">
                                    <input type="radio" id="radio10" name="category2" value="other">기타
                                </div>         
                            </div>
                          <br> <br> <br>
                    <div class="col-lg-12 col-md-6">
    				<input type="text" placeholder="주소" name="storeLoc" id="storeLoc" readonly style="width: 70%">
    				<button type="button" id="addressButton">주소 검색</button>
					</div>
                    <div class="col-lg-12 col-md-6">
                        <input type="text" placeholder="상세주소" name="storeLocDetail" id="storeLocDetail">
                    </div>
                    <div class="col-lg-12 col-md-6">
                        <input type="text" placeholder="공식 사이트" name="storeSite" id="storeSite">
                    </div>
      				 
                    <div class="picture-content">
         				   <div class="picture-header">
           					     <h2 class="picture-title" id="PictureCenterTitle">썸네일</h2>
                		    </div>
							<div>
  
  				          <div class="thumbnail" >  
            	
                			<input type="file" name="thumbnail" id="thumbnail" onchange="previewImage2(event)" style="margin-bottom: 0px;">
  							<img id="preview" src="#" alt="Preview">
							</div>
           				  </div>

           				  <div class="picture-footer">
                			
                		  </div>
        	       </div>	
                   
                        
      				<div class="picture-content">
         				   <div class="picture-header">
           					     <h2 class="picture-title" id="PictureCenterTitle">사진 추가</h2>
                		    </div>

  				          <div class="slider">  
            	
                			<div class="bullets"></div>
                			<ul id="imgholder" class="imgs"></ul>
           				  </div>

           				  <div class="picture-footer">
                			<div id="fileContainer"></div>             
            			   	<button type="button" onclick="deleteImg()" style="height: 60px; width: 60px; border-radius: 50%">삭제</button><br>
                			<button type="button" onclick="addFileInput()" style="height: 60px; width: 60px; border-radius: 50%">추가</button><br>
                		  </div>
        	       </div>
                        
                       
                        
                         <div id="store_stc" style="margin-top: 150px;">     
                           <input type="submit" value="submit" class="site-btn" id="submit"/>
                         </div>
                 
                </div>  
            </form>
        </div>
    </div>
  
    
    
    <!-- Contact Form End -->

    <!-- Footer Section Begin -->
        <%@ include file="footer.jsp" %>
    <!-- Footer Section End -->
    
    


<script>


function addFileInput() {
    var fileInput = document.createElement("input");
    var imgholder = document.getElementById("imgholder");
    var fileContainer = document.getElementById("fileContainer");

    // 이미 10개 이상의 파일이 업로드되었을 경우 종료
    if (imgholder.children.length >= 10) {
        return;
    }

    fileInput.type = "file";
    fileInput.name = "picture";
    fileInput.id = "imageInput";
    fileInput.style.width = "auto";
    fileInput.hidden="true"
    fileInput.onchange = function(event) {
        previewImage(event);
    };

    imgholder.parentNode.style.display = "block";

    fileInput.click();

    // fileContainer에 파일 입력란 추가
    fileContainer.appendChild(fileInput);
}

function previewImage(event) {
    var input = event.target;
    var reader = new FileReader();

    reader.onload = function() {
        var imgholder = document.getElementById("imgholder");
        var li = document.createElement("li");
        var preview = document.createElement("img");
        var deleteButton = document.createElement("button");

        preview.src = reader.result;
        preview.style.display = 'block';
        

        li.appendChild(preview);
        imgholder.appendChild(li);

        var slideId = "slide" + (imgholder.children.length);
        var bulletLabel = document.createElement("label");
        bulletLabel.htmlFor = slideId;
        bulletLabel.innerHTML = "&nbsp;";

        var bullets = document.querySelector(".bullets");
        bullets.appendChild(bulletLabel);

        var slideInput = document.createElement("input");
        slideInput.type = "radio";
        slideInput.name = "slide";
        slideInput.id = slideId;
        slideInput.checked = true;
        bullets.parentNode.insertBefore(slideInput, bullets);
    };

    if (input.files && input.files[0]) {
        reader.readAsDataURL(input.files[0]);
    }
}

function deleteImg() {
    var imgholder = document.getElementById("imgholder");
    var imageInput = document.getElementById("imageInput");
    var bullets = document.querySelector(".bullets");
	
    
    // 이미지가 존재하지 않으면 종료
    if (imgholder.children.length === 0) {
        return;
    }

    var lastImg = imgholder.lastElementChild;
    imgholder.removeChild(lastImg);

    var lastBullet = bullets.lastElementChild;
    bullets.removeChild(lastBullet);
    
   
    var lastSlideInput = bullets.previousElementSibling;
    lastSlideInput.parentNode.removeChild(lastSlideInput);
    
    imageInput.parentNode.removeChild(imageInput);
    
    
}


</script>


<script>
function previewImage2(event) {
  var input = event.target;
  var preview = document.getElementById("preview");

  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
      preview.src = e.target.result;
    };
    reader.readAsDataURL(input.files[0]);
  }
}
</script>



	      
    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    <script>
 /*  $(document).ready(function() {
    // 버튼 클릭 이벤트 처리
    $('#submit').on('click', function(event) {
      if (!$('#check1').is(':checked')) {
        // 체크되지 않은 상태에서 버튼 클릭 시 동작
        alert('이용 약관에 동의해주세요');
        event.preventDefault(); // submit 동작 막기
      }
    });
  }); */
</script>
 
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
window.onload = function(){
    document.getElementById("addressButton").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("storeLoc").value = data.address; // 주소 넣기
            }
        }).open();
    });
}
</script>

      	 
	      
	      

</body>

</html>