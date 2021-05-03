<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="utf-8" />
    
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/s 	/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="assets/js/main.js"> </script>
<script src="assets/js/aboutUs.js"> </script>
<link href="assets/css/aboutUs.css" rel="stylesheet">  

 <title>About Us</title>
  
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center header-transparent">

    <div class="container d-flex align-items-center">

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li><a href="index.jsp">Home</a></li>
          <li class="active"><a href="aboutus.jsp">About Us</a></li>
          <li><a href="./Board/boardList.do">Board</a></li>
          <li><a href="./Store/storeList.do">Restaurants</a></li>
          <c:if test="${!empty vo}">
          <li><a href="./Member/myPage.do?memberId=${vo.memberId}">My Page</a></li>
          </c:if>
          <c:if test="${!empty vo}">
          <li class="book-a-table text-center" ><a href="./Member/logout.do">logout</a></li>
		  </c:if>
		  <c:if test="${empty vo}">
          <li class="book-a-table text-center" ><a href="./Member/loginForm.jsp">login</a></li>
		  </c:if>
        </ul>
       </nav><!-- .nav-menu -->
      
     </div>
 
  </header><!-- End Header -->

<div class="aboutus-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="aboutus">
                        <h2 class="aboutus-title">About Us</h2>
                        
                        <p class="aboutus-text"> Our journalistic focus is on the following issues: animal rights, the plant-based, cruelty-free lifestyle, climate change, food justice, health and associated issues like human world hunger and workers’ rights.
								</p>
                        <p class="aboutus-text"> Because we cover animal issues, and animals cannot offer their side of the story, we articulate the needs and rights of animals who would otherwise be utterly voiceless and powerless. This is our mandate: to speak for those who cannot speak for themselves and to report on animal issues often ignored by mainstream media..
                    	 	</p>
                       
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="aboutus-banner">
                        <img src="bg_img/bgimg (3).png" width=550px height= 400px>
                    </div>
                </div>
             
            </div>
       </div>
</div>
    
<hr>
	<div class="level-section">
        <div class="container">
            <div class="row">
            	<div class="col-md-12">
            		<h2 class="level-title">Vegetarian Type</h2>
            	</div>
             	<div class="col-md-6">
                    <div class="level-banner">
                        <img src="assets/icon/type.png" width=550px height= 400px>
                    </div>
              	</div>
                <div class="col-md-6">
                    <div class="level">                    
                       <div id="accordion">
						  <h3>Flexitarian</h3>
						  <div>
						    <p>
						    Cording calls this version of vegetarianism the “safest” because it offers the most flexibility. A flexitarian diet is plant-based, meaning plant foods take center stage, but allows dieters to incorporate meat and other animal products here and there when the mood strikes.</p>                  	
						  </div>
						  <h3>Pescatarian</h3>
						  <div>
						    <p>
						   Pescatarians are people who choose to eat a mostly plant-based diet, but who also incorporate seafood as a source of protein (since they don't eat meat). Many pescatarians also eat dairy and eggs.</p>                     	
						  </div>
						  <h3>Lacto-ovo Vegetarian</h3>
						  <div>
						    <p>
						   One of the most popular (and traditional) forms of vegetarianism: lacto-ovo vegetarianism. Lacto-ovo vegetarians avoid meat, fish, and poultry, but still eat animal products like dairy and eggs.</p>
						  </div>
						  <h3>Ovo Vegetarian</h3>
						  <div>
						    <p>
						  	While ovo vegetarians don’t eat meat, seafood, or dairy products, they do eat eggs and products that contain eggs. Though not as popular as lacto-ovo vegetarian diet or even lacto vegetarian diets, this eating style does offer some flexibility, Cording says.</p>               	
						  </div>
						   <h3>Vegan</h3>
						  <div>
						    <p>
						    The least flexible of the vegetarian diets is veganism. “The whole diet is plant-based,” Cording says. Vegans don't eat any animal products, including meat, fish, poultry, dairy, and eggs.</p>                 
						  </div>
						</div>
                    </div>
                </div>
            </div>
       </div>
</div>
    
	
	
	
	
	
	
	
	<hr>
    <div class="team-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="team">
                        <h2 class="team-title">Team Introduction</h2>
                        
                      
                        <div class="grid-container">
                         <div class="grid-item item1">
                         	<img src="assets/icon/banana.png"><br/>김형근<br>hgk0000@naver.com
                         	<br/>
                         	
                         </div>
						  <div class="grid-item">
						  	<img src="assets/icon/avocado.png"><br/>강수진<br>ksujin98@gmail.com
						  </div>
						  <div class="grid-item">
						  	<img src="assets/icon/carrot.png"><br/>김진철
						  </div>
						  <div class="grid-item">
						  	<img src="assets/icon/tomato.png"><br/>박재영<br>jak994@naver.com
						  </div>  
						  <div class="grid-item">
						  	<img src="assets/icon/apple.png"><br/>원광연
						  </div>
						  <div class="grid-item">
						  	<img src="assets/icon/broccoli.png"><br/>임해리<br>haeri.lim.lhe@gmail.com
						  </div>
						  <div class="grid-item">
						  	<img src="assets/icon/pumpkin.png"><br/>정다솜
						  	
						  </div>  
						  
						</div>
                       
                    </div>
                </div>
                
             
            </div>
        </div>
    </div>
    

    <!-- ======= Footer ======= -->
		 <center>
		  <footer id="footer">
		    <div class="container">
		      <h2>VEGAN PROJECT</h2>
		      <p>All life deserves respect, dignity, and compassion. All life.</p>
		    
		      <div class="copyright">
		        &copy; Copyright <strong><span>VEGAN PROJECT</span></strong>. All Rights Reserved
		      </div>
		      <div class="credits">
		        <a>Designed by Enocore 1 Team</a>
		      </div>
		    </div>
		  </footer><!-- End Footer -->
		</center>    
   

</body>

<!--   core js files    -->
<script src="assets/js/jquery.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.js" type="text/javascript"></script>

<!--  js library for devices recognition -->
<script type="text/javascript" src="assets/js/modernizr.js"></script>

<!--  script for google maps   -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

<!--   file where we handle all the script from the Gaia - Bootstrap Template   -->
<script type="text/javascript" src="assets/js/gaia.js"></script>

</html>
