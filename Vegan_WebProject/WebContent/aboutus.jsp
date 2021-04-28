<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
    
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap" rel="stylesheet">
 
 
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
	}
	
.title {
  text-align: center;
  margin-bottom: 50px;
}

.nav-menu, .nav-menu * {
  margin: 0;
  padding: 0;
  list-style: none;
}

.nav-menu > ul > li {
  position: relative;
  white-space: nowrap;
  float: left;
}

.nav-menu a {
  display: block;
  position: relative;
  color: white;
  padding: 9px 14px;
  transition: 0.3s;
  font-size: 15px;
  font-weight: 500;
  font-family: "Poppins", sans-serif;
}

.nav-menu a:hover, .nav-menu .active > a, .nav-menu li:hover > a {
  color: #ffb03b;
  text-decoration: none;
}

.nav-menu .book-a-table a {
  background: #ffb03b;
  color: #fff;
  border-radius: 50px;
  margin: 0 0 0 20px;
  padding: 10px 25px;
  text-transform: uppercase;
  font-size: 13px;
  font-weight: 500;
  letter-spacing: 1px;
  transition: 0.3s;
}

.nav-menu .book-a-table a:hover {
  background: #ffa012;
  color: #fff;
}


.text-gray {
  color: #777777;
}





.section .title-area {
  max-width: 100%;
  margin: 0 auto ;
  display: block;
  padding: 15px;
  text-align: center;
}

.section .title-area .description {
  font-size: 16px;
  color: #777777;
}


.section .text-area .description,
.section .text-area .description p {
  font-size: 16px;
  color: #777777;
  
  
}

.section-header-freebie {
  padding: 0;
}

table{
size:150px;

margin-left: 30px;
margin-right: 30px;
}


.image-clients {
  width: 20px;
  margin: 0 auto;
  margin-right: 8px;
  margin-left: 8px;
}

.image-clients img{
 	width: 90px;
 	height: 90px;
}

hr{
	width: 90%;
	background-color: 
	
}

#footer{
	background: rgba(0, 0, 0, 0.7);
	font-size:15px;
	padding-bottom: 50px;
	padding-top: 50px;
	color: rgba(255, 255, 255, 0.7);
	
}

#footer .container h2{
	color: #5EC75E;
	font-size: 1.7em;


}

</style>
<body>
   
 <title>About Us</title>
  
</head>


    <header id="header" >
    <div class="container d-flex align-items-center">

      <nav class="nav-menu d-none d-lg-block">
        <ul>
       	 <a href="../index.jsp" class="navbar-brand">
                    VEGAN PROJECT
         </a>
          <li class="active"><a href="index.html">Home</a></li>
          <li><a href="#about">About Us</a></li>
          <li><a href="#menu">Board</a></li>
          <li><a href="#specials">Restautants</a></li>
          <li><a href="#events">My Page</a></li>
 
          <li class="book-a-table text-center" ><a href="./Member/loginForm.jsp">Login</a></li>
        </ul>


      </nav><!-- .nav-menu -->
 
    </div>
</header><!-- End Header -->
        </div>
    </nav>


    <div class="section">
        <div class="container">
            <div class="row">
                <div class="title-area"><br/>
             		<h2>Our Services</h2>
                    <table class="description">
                    	<tr>
                    		<td>
                    			<img alt="" src="bg_img/bgimg (3).png" width=750px height= 500px; >
                    		</td>
                    		<td id ="index">
                    			Our journalistic focus is on the following issues: animal rights, the plant-based, cruelty-free lifestyle, climate change, food justice, health and associated issues like human world hunger and workers’ rights.
								<br/><br/>Because we cover animal issues, and animals cannot offer their side of the story, we articulate the needs and rights of animals who would otherwise be utterly voiceless and powerless. This is our mandate: to speak for those who cannot speak for themselves and to report on animal issues often ignored by mainstream media..
                    	 	</td>
                    	</tr>
                    </table>
                </div>
            </div>
           
        </div>
    </div>

	<hr>


    <div class="section section-our-clients-freebie">
        <div class="container">
            <div class="title-area">
            	<h5 class="subtitle text-gray">Who We Are</h5> 
             <h2>Team Introduction</h2>
            </div>

            <ul class="nav nav-text" role="tablist">
                
                    
                        <span class="image-clients">
                            <img alt="..." class="img-circle" src="bg_img/tomato.png"/>
                        </span>
                  
                   
                        <span class="image-clients">
                            <img alt="..." class="img-circle" src="bg_img/tomato.png"/>
                        </span>
                    
                        <span class="image-clients">
                            <img alt="..." class="img-circle" src="bg_img/tomato.png"/>
                        </span>
                  
                
            </ul>


           

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
