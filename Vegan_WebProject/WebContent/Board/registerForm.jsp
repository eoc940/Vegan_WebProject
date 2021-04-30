<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap" rel="stylesheet">


<!--Google Material Icons-->
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<!--GSAP & ScrollToPlugin-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js" integrity="sha512-IQLehpLoVS4fNzl7IfH8Iowfm5+RiMGtHykgZJl9AWMgqx0AmJ6cRWcB+GaGVtIsnC4voMfm8f2vwtY+6oPjpQ==" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js" integrity="sha512-nTHzMQK7lwWt8nL4KF6DhwLHluv6dVq/hNnj2PBN0xMl2KaMm1PM02csx57mmToPAodHmPsipoERRNn4pG7f+Q==" crossorigin="anonymous"></script>
<!--Swiper-->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<!--ScrollMagic-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"></script>
<!--Lodash-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.20/lodash.min.js" integrity="sha512-90vH1Z83AJY9DmlWa8WkjkV79yfS2n2Oxhsi2dZbIv0nC4E6m5AbH8Nh156kkM7JePmqD6tcZsfad1ueoaovww==" crossorigin="anonymous"></script>

<script src="js/main.js"> </script>
<link href="css/registerForm.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">


<title>Register</title>
<style>

</style>
</head>
<body>
<header id="header" class="fixed-top d-flex align-items-center header-transparent">

  <div class="container d-flex align-items-center">

    <nav class="nav-menu d-none d-lg-block">
      <ul>
        <li class="active"><a href="../index.jsp">Home</a></li>
        <li><a href="../aboutus.jsp">About Us</a></li>
       <li><a href="boardList.do">Board</a></li>
        <li><a href="../Store/storeList.do">Restautants</a></li>
        <li><a href="../Member/myPage.jsp">My Page</a></li>

        <li class="book-a-table text-center" ><a href="../Member/loginForm.jsp">login</a></li>
      </ul>
     </nav><!-- .nav-menu -->
    
   </div>

</header><!-- End Header -->
	
<form action = "boardRegister.do" method="post" name="boardRegisterForm">
	제목 : <input type="text" name="title">
	내용 : <input type="text" name="content">
	작성자 : ${vo.memberId} <input type="hidden" name="memberId" value="${vo.memberId}">
	<input type="submit" value="Regiser">
</form>
</body>
</html>