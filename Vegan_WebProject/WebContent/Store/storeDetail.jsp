<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
	<head>
	
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
			 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
			<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
			<link rel="preconnect" href="https://fonts.gstatic.com">
			<link href="//fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet" type="text/css">
			<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap" rel="stylesheet">
			<link href="storeAssets/css/storeDetail.css" rel="stylesheet">
			
		<title>Store Detail Page</title>

		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>
		

	</head>
	<body>
	
		<!-- Header -->
	
    
   </div>	 
		
		
		<div id="header">
			<div class="container"> 
				
				<!-- Logo -->
				<div id="logo">
					<h1><a>Restaurants for VEGAN</a></h1>
					<span>encore 1team</span>
				</div>
			</div>
		</div>

		<!-- Main -->
		<div id="main">
			<div class="container">
				<div class="row"> 

					<!-- Content -->
					<div id="content" class="8u skel-cell-important">
						<section>
						
							<header>
							
							<h2>${svo.name}</h2>
							<br>
							<!-- <h2>${storeVO.name}</h2> -->	
								<span>${svo.hit}</span>
							</header>
							<img src="../store_img/${foodvo.imageUrl}" alt="" height = "500" width = "780"/></a>
						<!--<img src="${storeVO.url}" alt="" /></a>  -->							
							<p>${svo.description}</p>
							<div id="map" style="width:780px; height:350px;"></div>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5bf49455bd52ffe815d6b4b7e706d467"></script>
	<script>
		var lat = ${mvo.latitude};
	  	var lon = ${mvo.longitude};
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(lat, lon),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		var markerPosition = new kakao.maps.LatLng(lat,lon);
		var marker = new kakao.maps.Marker({
			position: markerPosition
		});
		
		marker.setMap(map);
	</script>



</section>
						<div class="button">
								 <a href="storeMain.jsp" >List</a>
						</div>
						
</div>					<!-- Sidebar -->
					<div id="sidebar" class="4u">
						<section>
							<header>
								<h2>매장정보</h2>
								<p>"${svo.address}"</p>
							</header>
							<ul class="style">
								<li>								
									<img src="../store_img/${menuvo.imageUrl}" alt="" width="416.66" height="416.66"/>
								</li>
								<!-- 알고리즘 결과 임시적으로 보여줌(예시) -->
								<p>
								가장 가까운 음식점 정보<br>
								이름:${closestStore.name}<br>
								주소:${closestStore.address}
								</p>
						
							</ul>
						</section>
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
		        Designed by Enocore 1 Team</a>
		      </div>
		    </div>
		  </footer><!-- End Footer -->
		</center>  




	
		
	</body>
</html>