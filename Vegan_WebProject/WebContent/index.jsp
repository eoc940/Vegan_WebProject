<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">


<head> 

  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title> 채식주의(菜食主義, 영어: vegetarianism)</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!--브라우저 스타일 초기화-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" /> 

  <!-- Favicons -->
  <link href="./assets/img/favicon.png" rel="icon">
  <link href="./assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,600,600i,700,700i|Satisfy|Comic+Neue:300,300i,400,400i,700,700i" rel="stylesheet">
  <link rel="stylesheet" href="//fonts.googleapis.com/earlyaccess/nanumgothic.css">


  <!-- Vendor CSS Files -->
  <link href="./assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="./assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="./assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="./assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="./assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="./assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  
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

 


  <!--Google Material Icons-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
  
  
  <!-- Template Main CSS File -->
  <link href="./assets/css/style.css" rel="stylesheet">
  
  <!-- youtu link js -->
  <script defer src="./assets/js/youtube.js"></script>
  <script defer src="./assets/js/sb_main_v1.js"></script>

  <!-- Vendor JS Files -->
  <script src="./assets/vendor/jquery/jquery.min.js"></script>
  <script src="./assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="./assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="./assets/vendor/jquery-sticky/jquery.sticky.js"></script>
  <script src="./assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="./assets/vendor/venobox/venobox.min.js"></script>
  <script src="./assets/vendor/owl.carousel/owl.carousel.min.js"></script>

  <!-- Template Main JS File -->
  <script src="./assets/js/main.js"></script>
  

  
  <!--ScrollMagic-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"></script>
  <!--Lodash-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.20/lodash.min.js" integrity="sha512-90vH1Z83AJY9DmlWa8WkjkV79yfS2n2Oxhsi2dZbIv0nC4E6m5AbH8Nh156kkM7JePmqD6tcZsfad1ueoaovww==" crossorigin="anonymous"></script>
 


   

  <script>
	
    var arr = [['food_img/1.JPG','비건빵'],
      ['food_img/2.JPG','브루스게타'],
      ['food_img/3.JPG','부추전'],
      ['food_img/4.JPG','비건버거'],
      ['food_img/5.JPG','콩고기 커틀렛'],
      ['food_img/6.JPG','가지볶음'],
      ['food_img/7.JPG','파인애플 볶음밥'],
      ['food_img/8.JPG','야채피자'],
      ['food_img/9.JPG','샐러드'],
      ['food_img/10.JPG','야채 쌀국수'],
      ['food_img/11.JPG','단호박 수프'],
      ['food_img/12.JPG','두부 김치'],
      ['food_img/13.jpg','건두부 볶음'],
      ['food_img/14.png','잔치국수'],
      ['food_img/15.jpg','야채김밥'],
      ['food_img/16.jpg','도토리묵'],
      ['food_img/17.png','리조또'],
      ['food_img/18.png','비빔밥'],
      ['food_img/19.png','빵'],
      ['food_img/20.png','샌드위치'],
      ['food_img/21.jpg','샐러드'],
      ['food_img/22.png','스튜'],
      ['food_img/23.jpg','야채죽'],
      ['food_img/24.png','커리'],
      ['food_img/25.png','파스타'],
      ['food_img/26.png','구절판']]
    
    function showMenu(){
      var randomNum=Math.floor(Math.random() * arr.length);
      var img_url=arr[randomNum][0];
      var name=arr[randomNum][1];
      document.getElementById("menu_img").innerHTML="<img src="+img_url+" width =400px height=300px>  "+name;
      
    }
    var xhr;
    function showBestNine(){
      xhr=new XMLHttpRequest();
      xhr.onreadystatechange=callback;
      xhr.open("post","bestNine.do",true);
      xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
      xhr.send();
    }
    
    function callback(){
      if(xhr.readyState==4){
        if(xhr.status==200){
          var list=JSON.parse(xhr.responseText);
          var resultView=document.getElementById("bestNine");
          if(list!=null)
          for(var i=0;i<9;i++)
          {resultView.innerHTML+=list[i].name+" <img src=store_img/"+list[i].imageUrl+" width =400px height=300px > <br/> ";}		
        }
      }
    }
    $(document).ready(function(){
      showMenu();
      showBestNine();
    });
  
  </script>






</head>


<!-- ************************ BODY ************************************************************************************** -->
<!-- ************************ BODY ************************************************************************************** -->

<body>


<!-- =============================== Header ========================================== -->

  <header id="header" class="fixed-top d-flex align-items-center header-transparent">
    
    <!-- nav-menu start ------------------------>
    <div class="container d-flex align-items-center">

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="index.jsp">Home</a></li>
          <li><a href="aboutus.jsp">About Us</a></li>
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
      </nav>
 
    </div>
    <!-- nav-menu end ------------------------>

    <!--BADGES---------------------------->
    <div class="badges">
  
      <div class="badge">
        <img src="./assets/img/badge/badge1.jpg" width="150" alt="Badge" />
      </div>

    
    </div> 
  </header><!-- End Header -->

  <!-- ======= 슬라이드 부분 Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <!-- Slide 1 -->
          <div class="carousel-item active" style="background: url(./assets/img/slide/slide-1.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">For<span> Veganism</span></h2>
                <p class="animate__animated animate__fadeInUp">Veganism, the natural extension of vegetarianism, is an integral component of a true cruelty-free lifestyle. Living vegan provides numerous benefits to animals’ lives, to the environment, and to our own health–through a healthy diet and lifestyle.</p>
                <!-- <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Today's Menu</a>
                  <a href="#book-a-table" class="btn-book animate__animated animate__fadeInUp scrollto">Best Restaurant</a>
                </div> -->
              </div>
            </div>
          </div>

          <!-- Slide 2 -->
          <div class="carousel-item" style="background: url(./assets/img/slide/slide-2.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">Try <span>Vegan</span> Diet</h2>
                <p class="animate__animated animate__fadeInUp">The Academy of Nutrition and Dietetics states that an appropriately planned vegan diet is healthful for all stages of life. They further advise that plant-based diets may provide a variety of preventative health benefits. Of course, as with any diet, a poorly planned vegan diet could be dangerous or unhealthful. </p>
                <!-- <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Today's Menu</a>
                  <a href="#book-a-table" class="btn-book animate__animated animate__fadeInUp scrollto">Best Restaurant</a>
                </div> -->
              </div>
            </div>
          </div>

          <!-- Slide 3 -->
          <div class="carousel-item" style="background: url(./assets/img/slide/slide-3.jpg);">
            <div class="carousel-background"><img src="./assets/img/slide/slide-3.jpg" alt=""></div>
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">Try <span>Vegan</span> Diet</h2>
                <p class="animate__animated animate__fadeInUp">The Academy of Nutrition and Dietetics states that an appropriately planned vegan diet is healthful for all stages of life. They further advise that plant-based diets may provide a variety of preventative health benefits. Of course, as with any diet, a poorly planned vegan diet could be dangerous or unhealthful. </p>
             	<!-- <div>
                  <a href="#recommend_menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Today's Menu</a>
                  <a href="#bestNine" class="btn-book animate__animated animate__fadeInUp scrollto">Best Restaurant</a>
              </div> -->
              </div>
            </div>
          </div>

        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon icofont-simple-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>

        <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon icofont-simple-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>

      </div>
    </div>
  </section><!-- End Hero -->




	<!--RESERVE STORE-->
  <section class="reserve-store">
    <div class="inner">

      <div class="medal">
        <div class="front">
          <img  src="./assets/img/reserve_store_medal_back.png" height="300" alt="R">
        </div>
        <div class="back" id="menu_img">
          <img src="bgimg/bg img(8).jpg" height="300" alt="돌려돌려 음식판">
        </div>
        
      </div>
      <div>
      <a class="btn" onclick="showMenu()">
        <br>
        <br>
          <h2>▶   오늘은 무엇을 먹을까?? 클릭후 마우스를 위로!! </h2>
      </a>
      </div>
      
    </div>


   
  </section>
  
    <section class="notice">
    <div class="promotion">

      <div class="swiper-container">
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <img src="./store_img/2-1.jpg" width="819" height ="819" alt="맛있는 식당1" />
            <a href="javascript:void(0)" class="btn"> - 자세히 보기 - </a>
          </div>
          <div class="swiper-slide">
            <img src="./store_img/3-1.jpg" width="819" height ="819" alt="맛있는 식당2" />
            <a href="javascript:void(0)" class="btn"> - 자세히 보기 - </a>
          </div>
          <div class="swiper-slide">
            <img src="./store_img/4-1.jpg" width="819" height ="819" alt="맛있는 식당3" />
            <a href="javascript:void(0)" class="btn"> - 자세히 보기 - </a>
          </div>
          <div class="swiper-slide">
            <img src="./store_img/5-1.jpg" width="819" height ="819" alt="맛있는 식당4" />
            <a href="javascript:void(0)" class="btn"> - 자세히 보기 - </a>
          </div>
          <div class="swiper-slide">
            <img src="./store_img/6-1.jpg" width="819" height ="819" alt="맛있는 식당5" />
            <a href="javascript:void(0)" class="btn"> - 자세히 보기 - </a>
          </div>
        </div>
      </div>

            <div class="swiper-pagination"></div>

      <div class="swiper-prev">
        <span class="material-icons">arrow_back</span>
      </div>
      <div class="swiper-next">
        <span class="material-icons">arrow_forward</span>
      </div>

    </div>
      </section><!-- End PROMOTION Section -->


      
  <!--YOUTUBE VIDEO-->
  <section class="youtube">
    <div class="youtube__area">
      <div id="player"></div>
    </div>
    <div class="youtube__cover"></div>

  </section>



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
          Designed by Enocore 1 Team</a>
        </div>
      </div>
  </footer><!-- End Footer -->
  </center>


  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>


</div>


</body>

</html>