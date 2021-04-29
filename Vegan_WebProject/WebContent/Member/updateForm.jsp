<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap" rel="stylesheet">



<title>REGISTER</title>

<style>
/* @extend display-flex; */
display-flex, .signup-content, .form-row, .form-radio, .select-icon, .select-icon i {
  display: flex;
  display: -webkit-flex; }


a:focus, a:active {
  text-decoration: none;
  outline: none;
  transition: all 300ms ease 0s;
  -moz-transition: all 300ms ease 0s;
  -webkit-transition: all 300ms ease 0s;
  -o-transition: all 300ms ease 0s;
  -ms-transition: all 300ms ease 0s; }

input, select, textarea {
  border-radius: 45px;
  outline: none;
  appearance: unset !important;
  -moz-appearance: unset !important;
  -webkit-appearance: unset !important;
  -o-appearance: unset !important;
  -ms-appearance: unset !important; }

input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
  appearance: none !important;
  -moz-appearance: none !important;
  -webkit-appearance: none !important;
  -o-appearance: none !important;
  -ms-appearance: none !important;
  margin: 0; }

input:focus, select:focus, textarea:focus {
  outline: none;
  box-shadow: none !important;
  -moz-box-shadow: none !important;
  -webkit-box-shadow: none !important;
  -o-box-shadow: none !important;
  -ms-box-shadow: none !important; }

input[type=checkbox] {
  appearance: checkbox !important;
  -moz-appearance: checkbox !important;
  -webkit-appearance: checkbox !important;
  -o-appearance: checkbox !important;
  -ms-appearance: checkbox !important;
   position: relative;
        top: 21px;
   }


img {
  max-width: 100%;
  height: 1100px;
  }

figure {
  margin: 0; }

input[type=number] {
  -moz-appearance: textfield !important;
  appearance: none !important;
  -webkit-appearance: none !important; }

input:-webkit-autofill {
  box-shadow: 0 0 0 30px transparent inset;
  -moz-box-shadow: 0 0 0 30px transparent inset;
  -webkit-box-shadow: 0 0 0 30px transparent inset;
  -o-box-shadow: 0 0 0 30px transparent inset;
  -ms-box-shadow: 0 0 0 30px transparent inset; }

h2 {
  line-height: 1.66;
  margin: 0;
  padding: 0;
  font-weight: 700;
  color: #222;
  font-family: 'Montserrat', sans-serif;
  font-size: 20px;
  text-transform: uppercase;
  margin-bottom: 32px; }

.clear {
  clear: both; }

body {
  font-size: 13px;
  line-height: 1.8;
  color: #222;
  font-weight: 400;
  background: #282828;
  padding: 90px 0; }

.container {
  width: 1400px;
  position: relative;
  margin: 0 auto;
  background: #fff; }

.form-container{
font-family: 'Nanum Gothic', sans-serif;
display: flex;
flex-wrap:nowrap;
flex-basis: auto;
width: 700px;
position: relative;
margin: 0 auto;
font-weight: 400;
font-size: 13px;
font-weight:bold

}
.areas-form{
width: 30%;
}
.signup-img, .signup-form {
  width: 50%; }

.signup-img {
	
   }

.register-form {
  padding: 50px 100px 50px 70px; 
  }

.form-row {
  margin: 0 -15px; }
  .form-row .form-group {
    width: 50%;
    padding: 0 15px; }

.form-group {
  margin-bottom: 23px;
  position: relative; }

input, select {
  display: block;
  width: 100%;
  border: 1px solid #ebebeb;
  padding: 11px 20px;
  box-sizing: border-box;
  font-family: 'Montserrat', sans-serif;
  font-weight: 500;
font-size: 20px; }
  input:focus, select:focus {
    border: 1px solid #5EC75E; }

label {
  font-size: 14px;
  font-weight: bold;
  font-family: 'Montserrat', sans-serif;
  margin-bottom: 2px;
  display: block; }


.form-submit {
  text-align: right;
  padding-top: 27px; }

.submit {
  width: 140px;
  height: 40px;
  display: inline-block;
  font-family: 'Poppins';
  font-weight: 400;
  font-size: 13px;
  padding: 10px;
  border: none;
  cursor: pointer; }

#reset {
  background: #f8f8f8;
  color: #999;
  margin-right: 8px; }
  #reset:hover {
    background: #5EC75E;
    color: #fff; }

#submit {
  background: #5EC75E;
  color: #fff; }
  #submit:hover {
    background-color: #5EC75E; }

@media screen and (max-width: 992px) {
  .container {
    width: calc(100% - 40px);
    max-width: 100%; }

  .signup-content {
    flex-direction: column;
    -moz-flex-direction: column;
    -webkit-flex-direction: column;
    -o-flex-direction: column;
    -ms-flex-direction: column; }

  .signup-img, .signup-form {
    width: 100%; } }
@media screen and (max-width: 768px) {
  .register-form {
    padding: 50px 40px 50px 40px; } }
@media screen and (max-width: 575px) {
  .form-row {
    flex-direction: column;
    -moz-flex-direction: column;
    -webkit-flex-direction: column;
    -o-flex-direction: column;
    -ms-flex-direction: column;
    margin: 0px; }

  .form-row .form-group {
    width: 100%;
    padding: 0px; }

 

  .submit {
    width: 100%; }

  #reset {
    margin-right: 0px;
    margin-bottom: 10px; } }


</style>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

$(function () {	
	$('input:checkbox[name=areas]').click(function(){
		var areas = $('input:checkbox[name=areas]:checked').length;
		
		 if(areas>3){
			   alert('관심지역은 최대 3개까지 선택 가능합니다.')
			   $(this).prop('checked', false);
			  }
			 });
	 });
	 
   function passCheck() {
	//비밀번호가 일치하지 않으면 페이지 이동 안되도록...
	//메세지 띄워주고
	var f = document.registerForm;
	if(f.password.value != f.repassword.value){
		alert("비밀번호가 일치하지 않습니다");
		f.repassword.value="";
		f.repassword.focus();
		return false;
	}
}//


</script>
</head>
<body>
    <div class="main">
        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="../bg_img/bgimg.jpg" alt="">
                </div>
                <div class="signup-form">
                    <form action="update.do" method="POST" class="register-form" id="register-form" name="registerForm">

                        <h2>회원정보 수정</h2>

						<div class="form-group">
                            <label for="memberId">ID :</label>
                            <input type="text" name ="memberId" value="${vo.memberId}" readonly="readonly"/>
							
                        </div>

                        <div class="form-row">
                            <div class="form-group">
                                <label for="password">PASSWORD :</label>
                                <input type="password" name ="password" required="required"/>
                            </div>
                            <div class="form-group">
                                <label for="repassword">CONFIRM :</label>
                                <input type="password" name ="repassword" required="required" onchange="passCheck()"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name">NAME :</label>
                            <input type="name" name ="name" value="${vo.name}" required="required"/>
                        </div>

						 <div class="form-group">
                            <label for="address">ADDRESS :</label>
                            <input type="text" name ="address" value="${vo.address}" required="required"/>
                        </div>
                        
                    <div>
                        	<label for="areas">PREFERENCE LOCATION :</label>
                        </div>
                        <div class="form-container">          					
                        
                        <div class="areas-form">
								<input type="checkbox" name="areas" value="300">종로구
								<input type="checkbox" name="areas" value="301">중구
								<input type="checkbox" name="areas" value="302">용산구
								<input type="checkbox" name="areas" value="303">성동구
								<input type="checkbox" name="areas" value="304">광진구
								<input type="checkbox" name="areas" value="305">동대문구
								<input type="checkbox" name="areas" value="306">중랑구
								<input type="checkbox" name="areas" value="307">성북구
								<input type="checkbox" name="areas" value="308">강북구
						</div>
						<div class="areas-form">								
								<input type="checkbox" name="areas" value="309">도봉구
								<input type="checkbox" name="areas" value="310">노원구
								<input type="checkbox" name="areas" value="311">은평구
								<input type="checkbox" name="areas" value="312">서대문구
								<input type="checkbox" name="areas" value="313">마포구
								<input type="checkbox" name="areas" value="314">양천구
								<input type="checkbox" name="areas" value="315">강서구
								<input type="checkbox" name="areas" value="316">구로구							
						</div>	
						
						<div class="areas-form">																							
								<input type="checkbox" name="areas" value="317">금천구
								<input type="checkbox" name="areas" value="318">영등포구
								<input type="checkbox" name="areas" value="319">동작구
								<input type="checkbox" name="areas" value="320">관악구
								<input type="checkbox" name="areas" value="321">서초구
								<input type="checkbox" name="areas" value="322">강남구
								<input type="checkbox" name="areas" value="323">송차구
								<input type="checkbox" name="areas" value="324">강동구
								
						</div>	
								
					</div>	
                                        
                        <div class="form-submit">
                       		 <span class="index">
								 <a href="../index.jsp" >HOME</a>
							 </span>
                            <input type="submit" value="Reset All" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Confirm" class="submit" name="submit" id="submit" />
                          
						 	
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


</body>

</html>