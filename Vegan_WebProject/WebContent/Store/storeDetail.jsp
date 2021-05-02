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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"
		integrity="sha512-IQLehpLoVS4fNzl7IfH8Iowfm5+RiMGtHykgZJl9AWMgqx0AmJ6cRWcB+GaGVtIsnC4voMfm8f2vwtY+6oPjpQ=="
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js"
		integrity="sha512-nTHzMQK7lwWt8nL4KF6DhwLHluv6dVq/hNnj2PBN0xMl2KaMm1PM02csx57mmToPAodHmPsipoERRNn4pG7f+Q=="
		crossorigin="anonymous"></script>
	<!--Swiper-->
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<!--ScrollMagic-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"></script>
	<!--Lodash-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.20/lodash.min.js"
		integrity="sha512-90vH1Z83AJY9DmlWa8WkjkV79yfS2n2Oxhsi2dZbIv0nC4E6m5AbH8Nh156kkM7JePmqD6tcZsfad1ueoaovww=="
		crossorigin="anonymous"></script>

	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/s 	/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="storeAssets/js/main.js"> </script>
	<script src="storeAssets/js/storeList.js"> </script>
	
	<link href="storeAssets/css/storeDetail.css" rel="stylesheet">

	<title>StoreDetail Main</title>
	
	<!-- 좋아요 토글 스크립트 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
	$(function() {
		$("#btn_like").click(function() {
			$.ajax({
				url:"updateHit.do",
				type:"POST",
				data:{
					member:'${vo.memberId}',
					store:'${svo.storeId}'
				},
				success: function() {
					recCount();
				},
				error:function() {
				}
			})//ajax
			
			
		});//click
		function recCount() {
			
			$.ajax({
				url: "recordCount.do",
                type: "POST",
                data: {
                	"store":${svo.storeId}
                },
                success: function (count) {
                	$(".rec_count").html(count);
                },
                error:function() {
           
				}
			})
	    };
	    recCount();
	    
	});//ready
	
	</script>

</head>

	<body>

		<!-- Header -->
		<header id="header" class="fixed-top d-flex align-items-center header-transparent">

			<div class="container d-flex align-items-center">
	
				<nav class="nav-menu d-none d-lg-block">
					<ul>
						<li><a href="../index.jsp">Home</a></li>
						<li><a href="../aboutus.jsp">About Us</a></li>
						<li><a href="../Board/boardList.do">Board</a></li>
						<li class="active"><a href="storeList.do">Restaurants</a></li>
						<c:if test="${!empty vo}">
							<li><a href="../Member/myPage.do?memberId=${vo.memberId}">My Page</a></li>
						</c:if>
						<c:if test="${!empty vo}">
							<li class="book-a-table text-center"><a href="../Member/logout.do">logout</a></li>
						</c:if>
						<c:if test="${empty vo}">
							<li class="book-a-table text-center"><a href="../Member/loginForm.jsp">login</a></li>
						</c:if>
					</ul>
				</nav><!-- .nav-menu -->
	
			</div>
	
		</header><!-- End Header -->

		<!-- Main -->
		<div id="main">
			<div class="container">
				<div class="row"> 

					<!-- Content -->
					<div id="content" class="8u skel-cell-important">
						<section>
						
							<header>
							
							<h2>${svo.name}</h2>
							<!-- 좋아요 버튼 -->
							<c:if test="${!empty vo}">
								<input type="button" id="btn_like" value="좋아요">
							</c:if>
							<!-- 좋아요 총 개수 들어옴 -->
								좋아요 수 :&nbsp;<span class="rec_count"></span>
							
							<br>
							<!-- <h2>${storeVO.name}</h2> -->	
							
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
						
</div>					<!-- Sidebar -->
					<div id="sidebar" class="4u">
						<section>
							<header>
								<h2>매장정보</h2>
								<p>"${svo.address}"</p>
							</header>
							<ul class="style">
								<li>
									<p>메뉴사진 들어갈자리</p>
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