<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">


<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap" rel="stylesheet">

<title>Login Page</title>

<style>

body {
	 font-family: 'Montserrat', sans-serif;
	 font-size: 25px;
	  line-height: 1.8;
	  font-weight: normal;
	  color: gray;
	  position: relative;
	  z-index: 0;
	  padding: 0; 
	  background-image: url("../bg_img/bgimg (7).jpg");}
  
  body:after {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    content: '';
     background-color: #212121;
    background-size: 100%;
    opacity: .5;
    z-index: -1;
    }

.header{
	font-size: 40px;
	font-stretch:wider;
	font-weight: 100;
}

h1, h2, h3, h4, h5,
.h1, .h2, .h3, .h4, .h5 {
  line-height: 1.5;
  font-size: xx-large;
  font-family: 'Montserrat', sans-serif;
  font-weight: 400;
  color: #000; }

.bg-primary {
  background: #fbceb5 !important; }

.ftco-section {
  padding: 250px 250px; }


.img {
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center center; }

.login-wrap { 

   }
  .login-wrap h3 {
    font-weight: 400;
    color: #fff; }
  
        

.form-group {
  position: relative;
   }



.form-control {
  background: transparent;
  border: none;
  height: 50px;
  width:350px;
  padding-left:20px;
  padding-right:20px;
  color: white !important;
  border: none;
   font-style: bold;
  font-size:20px;
  text-align: left;
  background: rgba(255, 255, 255, 0.2);
  border-radius: 40px;
  margin-top: 20px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s; 
  center: center;}
  
  input::placeholder {
  color: rgba(255, 255, 255, 0.7);
  font-style: bold;
  font-size:20px;
  text-align: left;
}
  
  button{
    background: #5EC75E !important;
    border: 1px solid #5EC75E !important;
    border: none;
    height: 50px;
    width:400px;
    padding-left:35px;
  	padding-right:35px;
    font-family: 'Montserrat', sans-serif;
    font-size: 20px;
    font-weight: 100;
	color: white;
	border-radius: 40px;
	margin-top: 20px;
	-webkit-transition: 0.3s;
    -o-transition: 0.3s;
	transition: 0.3s; 
	center: center; }

	a{
	 margin-top: 15px;
	 padding-top:20px;
	 font-family: 'Montserrat', sans-serif;
	 color: rgba(255, 255, 255, 0.7);
	  font-size: 20px;
	  center: center;
	   font-weight: 400;
	}


	a:hover{
	 color:#D9B0A7
	
	}

  .index{
	 padding-right: 65px;
  
  }
  .registerForm{
  	padding-left : 65px;
  
  }
  
  
</style>
</head>
<body class="img js-fullheight">
<form action="login.do" class="signin-form" method="post">
<center>
<section class="ftco-section">
<div class="container">
	
			<div class="login-wrap p-0">
		      	<h3 class="header"><b>Have an account?</b></h3>
			      	
			      		<div class="form-group">
			      			<input type="text" name="memberId" class="form-control" placeholder="Username" required >
			      		</div>
		            	<div class="form-group">
		             		 <input id="password" type="password" class="form-control" name="password"  placeholder="Password" required>
		            	</div>
		          
	          </div>
		</div>	
	 <button type="submit" >Sign In</button><br/>
	 	<span class="index">
			 <a href="../index.jsp" >HOME</a>
		 </span>
		 <span class = "registerForm">
	 		<a href="registerForm.jsp" >REGISTER</a> 
		 </span>
	</section>
</form>
	
	
	           
</center>
	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>
     