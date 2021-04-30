<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap" rel="stylesheet">
<link href="//fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet" type="text/css">


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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="storeAssets/js/main.js"> </script>
<script src="storeAssets/js/storeList.js"> </script>
<link href="storeAssets/css/storeList.css" rel="stylesheet">


<title>Store Main</title>

</head>
<body>


<!-- ======= Header ======= -->


<form action="storeList.do"></form>

<header id="header" class="fixed-top d-flex align-items-center header-transparent">

  <div class="container d-flex align-items-center">

    <nav class="nav-menu d-none d-lg-block">
      <ul>
        <li class="active"><a href="../index.jsp">Home</a></li>
        <li><a href="../aboutus.jsp">About Us</a></li>
       <li><a href="../Board/boardList.do">Board</a></li>
        <li><a href="storeList.do">Restaurants</a></li>
        <li><a href="../Member/myPage.jsp">My Page</a></li>

        <li class="book-a-table text-center" ><a href="../Member/loginForm.jsp">login</a></li>
      </ul>
     </nav><!-- .nav-menu -->
    
   </div>

</header><!-- End Header -->


 <!-- ======= Works Section ======= -->
    <section class="section site-portfolio">
      <div>
            
      	<div class = "header">
            <h3>Restaurants for VEGAN</h3>
            	<div class="container-1">
            		<span class="icon"><i class="fa fa-search"></i></span>
      				<input type="search" id="search" placeholder="Search..." />
        		</div>
        </div>
        
        	
		        <div  data-aos="fade-up" data-aos-delay="100">
		            <div id="filters" class="filters" >
		              <a href="#" data-filter="*" class="active" >All</a>
		              <c:forEach items="${areaList}" var="a">
		              	<a href="#" data-filter=".${a.name}" class="active" >${a.name}</a>
		              </c:forEach>
		            </div>
		          </div>
		     
		       
        
        
        
        <div id="portfolio-grid" class="row no-gutter" data-aos="fade-up" data-aos-delay="200">
	        <c:forEach items="${storeShowList}" var="store">
	          <div class="item ${store.area} ">
	            <a href="storeDetail.jsp" class="item-wrap fancybox">
	              <div class="work-info">
	    			 <h3>${store.area}</h3>
	                <span>${store.area} &nbsp; ${store.name}</span>
	              </div>
	              <img class="img-fluid" src="../store_img/${store.imageUrl}">
	            </a>
	          </div>
	        </c:forEach>
	        
        </div>
        
      </div>
    
     
    </section>
    
   <div class = "center">
    <div class="pagination">
	  <a href="#">&laquo;</a>
	  <a href="#">1</a>
	  <a href="#">2</a>
	  <a href="#">3</a>
	  <a href="#">&raquo;</a>
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
		        Designed by Enocore 1 Team</a>
		      </div>
		    </div>
		  </footer><!-- End Footer -->
		</center>  
    
     <!-- Vendor JS Files -->
  <script src="storeAssets/vendor/jquery/jquery.min.js"></script><!-- 레이아웃 -->
   <script src="storeAssets/vendor/aos/aos.js"></script> <!-- 이름 덧씌우기 -->
  <script src="storeAssets/vendor/isotope-layout/isotope.pkgd.min.js"></script> <!-- 레이아웃 -->


  <!-- Template Main JS File -->
  <script src="storeAssets/js/storeMain.js"></script> <!-- 레이아웃 -->
</body>
</html>