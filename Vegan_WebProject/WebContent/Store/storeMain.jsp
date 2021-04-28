<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<style>

body {
  font-family: 'Montserrat', sans-serif;
  font-size: 25px;
  color: #0d1e2d;
}
a {
  color: #777;
}

a:hover {
  color: #000;
}

.section {
  padding: 7rem 0;
}

.item {
 border: none;
  margin-bottom: 30px;
  margin-left: 30px;
}

.item .item-wrap {
  display: block;
  position: relative;
  overflow: hidden;
}

.item .item-wrap:after {
  z-index: 2;
  position: absolute;
  content: "";
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(0, 0, 0, 0.4);
  visibility: hidden;
  opacity: 0;
  transition: .3s all ease-in-out;
}


.item .item-wrap > .work-info {
  position: absolute;
  top: 50%;
  width: 100%;
  text-align: center;
  z-index: 3;
  transform: translateY(-50%);
  color: #fff;
  opacity: 0;
  visibility: hidden;
  margin-top: 20px;
  transition: .3s all ease;
}

.item .item-wrap > .work-info h3 {
  font-size: 20px;
  margin-bottom: 0;
}

.item .item-wrap > .work-info span {
  font-size: 14px;
  text-transform: uppercase;
  letter-spacing: .2rem;
}

.item .item-wrap:hover {
  text-decoration: none;
}



.item .item-wrap:hover:after {
  opacity: 1;
  visibility: visible;
}

.item .item-wrap:hover .work-info {
  margin-top: 0px;
  opacity: 1;
  visibility: visible;
}

.img-fluid{
	width:300px;
	height:300px;

}

.header{
	padding: 20px;
	margin: 30px;

}

#portfolio-grid{
	padding: 20px;
	margin: 30px;
	center : center;
}

.container-1{
  width: 300px;
  vertical-align: middle;
  position: relative;
  float: right;
  padding-right:30px;
  padding-bottom: 10px;
}

.container-1 input#search{
  width: 300px;
  height: 30px;
  background: white;
  font-size: 10pt;
  float: right;
  padding-right: 45px;
  border-radius: 40px;
  background-color: rgba(255, 255, 255, 0.7);
  outline: none;
  box-shadow: none;
  
}

.container-1 input#search::-webkit-input-placeholder {
   color: gray;
}

.container-1 .icon{
  position: absolute;
  top: 10%;
  margin-left: 250px;
  z-index: 1;
  color: #5EC75E;
}

.filters{
	padding: 20px 50px 50px; 70px;
	word-spacing: 1em;
	align-content:space-around;
	margin: 30px;
	font-size: 15px;
	line-height: 30px;
	

}


a:focus{
	outline: none;

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
<title>Store Main</title>

</head>
<body>
<form action="storeList.do"></form>
 <!-- ======= Works Section ======= -->
    <section class="section site-portfolio">
      <div class="container">
      	<div "진철님 여기 네비게이션이요~!~!></div>
       
      	<div class = "header">
            <h3>Restaurants for VEGAN</h3>
            	<div class="container-1">
            		<span class="icon"><i class="fa fa-search"></i></span>
      				<input type="search" id="search" placeholder="Search..." />
        		</div>
        </div>
        
        	<c:forEach items="${areas}" var="a">
		        <div class="col-md-12 col-lg-6 text-left text-lg-right" data-aos="fade-up" data-aos-delay="100">
		            <div id="filters" class="filters" position="flex">
		              <a href="#" data-filter="*" class="active" >All</a>
		              <a href="#" data-filter=".${a.areaId}" >${a.areaId}</a>
		              <a href="#" data-filter=".301" >중구</a>
		              <a href="#" data-filter=".302" >용산구</a>
		              <a href="#" data-filter=".303" >성동구</a>
		              <a href="#" data-filter=".304" >광진구</a>
		              <a href="#" data-filter=".305" >동대문구</a>
		              <a href="#" data-filter=".306" >중랑구</a>
		              <a href="#" data-filter=".307" >성북구</a>
		              <a href="#" data-filter=".308" >강북구</a>
		              <a href="#" data-filter=".309"  >도봉구</a>
		              <a href="#" data-filter=".310" >노원구</a>
		              <a href="#" data-filter=".311" >은평구</a>
		              <a href="#" data-filter=".312">서대문구</a>
		              <a href="#" data-filter=".313" >마포구</a>
		              <a href="#" data-filter=".314" >양천구</a>
		              <a href="#" data-filter=".315" >강서구</a>
		              <a href="#" data-filter=".316" >구로구</a>
		              <a href="#" data-filter=".317" >금천구</a>
		              <a href="#" data-filter=".318" >영등포구</a>
		              <a href="#" data-filter=".319" >동작구</a>
		              <a href="#" data-filter=".320" >관악구</a>
		              <a href="#" data-filter=".321" >서초구</a>
		              <a href="#" data-filter=".322" >강남구</a>
		              <a href="#" data-filter=".323" >송파구</a>
		              <a href="#" data-filter=".324" >강동구</a>
		            </div>
		          </div>
		         </c:forEach>
		       
        
        
        
        <div id="portfolio-grid" class="row no-gutter" data-aos="fade-up" data-aos-delay="200">
          <div class="item 300 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="storeDetail.jsp" class="item-wrap fancybox">
              <div class="work-info">
                <h3>종로구</h3>
                <span>종로구 식당이름</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
           <div class="item 300 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="${pageContext.request.contextPath}/" class="item-wrap fancybox">
              <div class="work-info">
                <h3>종로구</h3>
                <span>종로구 식당이름1</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
           <div class="item 300 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="${pageContext.request.contextPath}/" class="item-wrap fancybox">
              <div class="work-info">
                <h3>종로구</h3>
                <span>종로구 식당이름2</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
           <div class="item 300 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="${pageContext.request.contextPath}/" class="item-wrap fancybox">
              <div class="work-info">
                <h3>종로구</h3>
                <span>종로구 식당이름3</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 301 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>중구</h3>
                <span>중구 식당이름1</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 302 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>종로구</h3>
                <span>Branding</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 303 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Nike Shoe</h3>
                <span>Design</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 304 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Kitchen Sink</h3>
                <span>Photography</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          <div class="item 305 col-sm-6 col-md-4 col-lg-4 mb-4">
            <a href="work-single.html" class="item-wrap fancybox">
              <div class="work-info">
                <h3>Amazon</h3>
                <span>brandingn</span>
              </div>
              <img class="img-fluid" src="../bg_img/bgimg (10).jpg">
            </a>
          </div>
          
        </div>
      </div>
    
     
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
    
     <!-- Vendor JS Files -->
  <script src="storeAssets/vendor/jquery/jquery.min.js"></script><!-- 레이아웃 -->
   <script src="storeAssets/vendor/aos/aos.js"></script> <!-- 이름 덧씌우기 -->
  <script src="storeAssets/vendor/isotope-layout/isotope.pkgd.min.js"></script> <!-- 레이아웃 -->


  <!-- Template Main JS File -->
  <script src="storeAssets/js/storeMain.js"></script> <!-- 레이아웃 -->
</body>
</html>