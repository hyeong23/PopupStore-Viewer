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
        <link rel="stylesheet" href="css/axios.css" >
        
        <!-- Google JQuery CDN -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>


    </head>
    <body>
        <div>
           <div class="panel shadow1">
                <form action="/business" class="login-form" method="POST" onsubmit = "return formChecking()"  >
                    
                    <h1 class="animated fadeInUp animate1" id="title-login">Business</h1>
                    
                    <fieldset id="login-fieldset">
                        <input class="login animated fadeInUp animate1" name="memberId" id= memberId type="text"  required   placeholder="ID"  >
                        	<br/>
                        		<span class=login_id id = "memberIdMsg" style="font-size:8pt"></span>
                        <input class="login animated fadeInUp animate2" name="memberPw" id="password" type="password" required placeholder="Password">
                        	<br/>
                        <input class="login animated fadeInUp animate3" name="memberEmail" id="memberEmail" type="text"  required   placeholder="Email">
                        	<br/>
                        		<span class=login_email id = "memberEmailMsg" style="font-size:8pt"></span>
                        <input class="login animated fadeInUp animate4" name="memberCompanyName" id="memberCompanyName" type="text"  required   placeholder="CompanyName" >
                        	<br/>
                        		<span class=login_company_name id = "memberCompanyNameMsg" style="font-size:8pt"></span>
                        <input class="login animated fadeInUp animate5" name="memberCompanyNum" id="memberCompanyNum" type="number"  required   placeholder="Business Number" >
                   			<br/>
                   				<div class="login animated fadeInUp animate5">
	                        		<span class=login_company_input_num id = "memberCompanyNumMsg2" style="font-size:8pt"></span>                    			
                   				</div>
                        		<span class=login_company_num id = "memberCompanyNumMsg" style="font-size:8pt"></span>
                        	<br/>
                    </fieldset>
                    
                    <input type="submit" id="login-form-submit" class="login_form button animated fadeInUp animate4" value="SIGN UP" style=" margin-top: 70px;">
                     		
                   <p><br><a id="login-link" href="/register" class="animated fadeIn animate5">back to register</a></p>
                    
                </form>
            </div>
        </div>
      
    <script type="text/javascript">
	
    var checkId = 0;
    var checkEmail = 0;
    var checkComName = 0;
    var checkComNum = 0;
    
    
 	const inputMemberId = document.getElementById('memberId'); //객체생성
	const memberIdMsg = document.getElementById("memberIdMsg");
	inputMemberId.addEventListener('blur', () => {
		if(inputMemberId.value == "" || inputMemberId.value == null){
			checkId = 0;
			memberIdMsg.innerHTML = '';
		}else{
			axios.get('http://localhost:8081/api/member/' + inputMemberId.value)
				.then(response => {
					console.log(response.data);
					if(response.data == true){
						checkId = 0;
						memberIdMsg.innerHTML = '중복된 아이디입니다.';
					}else{
						checkId = 1;
						memberIdMsg.innerHTML = '사용가능한 아이디입니다.';
					}
				
			})
		// 여기서 컨트롤러에서 보낸 errorMsg 받는것인지
			.catch(error => {
				memberIdMsg.innerHTML = error.response.data;
			})
		}});
	
	const inputMemberEmail = document.getElementById('memberEmail'); //객체생성
	const memberEmailMsg = document.getElementById("memberEmailMsg"); 
	inputMemberEmail.addEventListener('blur', () => {
		if(inputMemberEmail.value == "" || inputMemberEmail.value == null){
			checkEmail = 0;
			memberEmailMsg.innerHTML = '';	
		}else if(inputMemberEmail.value.indexOf("@") == -1 && inputMemberEmail.value.indexOf(".com") == -1){
			checkEmail = 2;
			memberEmailMsg.innerHTML = '이메일 양식에 맞춰서 입력해주십시오.';
		}else{axios.get('http://localhost:8081/api/email/' + inputMemberEmail.value)
			.then(response => {
				console.log(response.data);
				if(response.data == true){
					checkEmail = 0;
					memberEmailMsg.innerHTML = '중복된 이메일입니다.';
				}else{
					checkEmail = 1;
					memberEmailMsg.innerHTML = '사용가능한 이메일입니다.';
				}
		})
		// 여기서 컨트롤러에서 보낸 errorMsg 받는것인지
		.catch(error => {
			memberEmailMsg.innerHTML = error.response.data;
		})
		}});
	const inputMemberCompanyName = document.getElementById('memberCompanyName'); //객체생성
	const memberCompanyNameMsg = document.getElementById("memberCompanyNameMsg"); 
	inputMemberCompanyName.addEventListener('blur', () => {
		if(inputMemberCompanyName.value == "" || inputMemberCompanyName.value == null){
			checkComName = 0;
			memberCompanyNameMsg.innerHTML = '';	
		}else{axios.get('http://localhost:8081/api/companyName/' + inputMemberCompanyName.value)
			.then(response => {
				console.log(response.data);
				if(response.data == true){
					checkComName = 0;
					memberCompanyNameMsg.innerHTML = '이미 등록된 사업체입니다.';
				}else{
					checkComName = 1;
					memberCompanyNameMsg.innerHTML = '사용가능합니다.';
				}
		})
		// 여기서 컨트롤러에서 보낸 errorMsg 받는것인지
		.catch(error => {
			memberCompanyNameMsg.innerHTML = error.response.data;
		})
		}});
	
	const inputMemberCompanyNum = document.getElementById('memberCompanyNum'); //객체생성
	const inputMemberCompanyNum2 = document.getElementById('memberCompanyNum'); //객체생성
	const memberCompanyNumMsg = document.getElementById("memberCompanyNumMsg"); 
	const memberCompanyNumMsg2 = document.getElementById("memberCompanyNumMsg2");
	memberCompanyNumMsg2.innerHTML = '숫자로 입력해주십시오.';
	inputMemberCompanyNum.addEventListener('blur', () => {
		if(inputMemberCompanyNum.value == "" || inputMemberCompanyNum.value == null){
			checkComNum = 0;
			memberCompanyNumMsg.innerHTML = '';	
		}else{axios.get('http://localhost:8081/api/companyNum/' + inputMemberCompanyNum.value)
			.then(response => {
				console.log(response.data);
				if(response.data == true){
					checkComNum = 0;
					memberCompanyNumMsg.innerHTML = '이미 존재하는 사업자 번호 입니다.';
					memberCompanyNumMsg2.innerHTML = '';
				}else{
					checkComNum = 1;
					memberCompanyNumMsg.innerHTML = '사용가능합니다.';
					memberCompanyNumMsg2.innerHTML = '';
				}
		})
		// 여기서 컨트롤러에서 보낸 errorMsg 받는것인지
		.catch(error => {
			memberCompanyNumMsg.innerHTML = error.response.data;
		})
		}});	
	
	
	

	function formChecking(){
		if(checkId == 0){
			alert("중복된 아이디입니다. 다시 입력해주십시오.")
			return false;		
		}
		if(checkEmail == 0){
			alert("중복된 이메일입니다. 다시 입력해주십시오.")
			return false;		
		}else if(checkEmail == 2){
			alert("이메일의 양식에 맞춰서 입력해주십시오.")
			return false;
		}
		if(checkComName == 0 || checkComNum == 0){
			alert("이미 등록된 회사입니다. 중복 가입은 불가합니다.")
			return false;		
		}		
		
		return true;
	};
	
	
	</script> 
      
      
    </body>
</html>