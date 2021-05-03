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
<link href="css/login.css" rel="stylesheet">
  
  
<title>Login Page</title>

</head>
<body class="img js-fullheight">
<form action="login.do" class="signin-form" method="post">

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
	
	
	           

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>
     