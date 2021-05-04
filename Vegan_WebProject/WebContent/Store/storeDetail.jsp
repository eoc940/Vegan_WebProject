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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"	integrity="sha512-IQLehpLoVS4fNzl7IfH8Iowfm5+RiMGtHykgZJl9AWMgqx0AmJ6cRWcB+GaGVtIsnC4voMfm8f2vwtY+6oPjpQ=="	crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js"	integrity="sha512-nTHzMQK7lwWt8nL4KF6DhwLHluv6dVq/hNnj2PBN0xMl2KaMm1PM02csx57mmToPAodHmPsipoERRNn4pG7f+Q=="	crossorigin="anonymous"></script>
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
	
	<link href="storeAssets/css/storeDetail.css" rel="stylesheet">

	<title>StoreDetail Main</title>
	<style type="text/css" >
	#btn_like:checked + label svg #heart {
 		 transform: scale(0.2);
 		 animation: animateHeart .3s linear forwards .25s;
	}
	
	</style>
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
					checkHit();
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
	    
	    var heartColor="#btn_like:checked + label svg #heart";
	 	 	
		function checkHit() {
			
			$.ajax({
				url: "checkHit.do",
                type: "POST",
                data: {
                	member:'${vo.memberId}',
					store:'${svo.storeId}'
                },
                success: function (check) {
                	if(check==1) {
                		document.getElementById("heart").setAttribute("fill","#E2264D");
                		document.getElementById('heartColor').style.fill='#AAB8C2';

                	}else if(check==0) {
                		document.getElementById("heart").setAttribute("fill","#AAB8C2");
                		document.getElementById('heartColor').style.fill='#E2264D';

                	}
                },
                error:function() {
           
				}
			})
	    };
	    function checkLogin() {
			if ("${vo}" == "") {
				alert("로그인 하시기 바랍니다.")
				location.href = '../Member/loginForm.jsp';
			}
		}
	    
	    checkLogin();
	    recCount();
	    checkHit();
	    
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
		<!-- ======= 좋아요 ======= -->
					<c:if test="${!empty vo}">
						<div id="main-content">
						    <input type="checkbox" id="btn_like" />
						    <label for="btn_like">
						      <svg id="heart-svg" viewBox="467 392 58 57" xmlns="http://www.w3.org/2000/svg">
							      <g id="Group" fill="none" fill-rule="evenodd" transform="translate(467 392)">
								      <path d="M29.144 20.773c-.063-.13-4.227-8.67-11.44-2.59C7.63 28.795 28.94 43.256 29.143 43.394c.204-.138 21.513-14.6 11.44-25.213-7.214-6.08-11.377 2.46-11.44 2.59z" id="heart" fill="#AAB8C2"/>
								      <circle id="main-circ" fill="#E2264D" opacity="0" cx="29.5" cy="29.5" r="1.5"/>
								      <g id="grp7" opacity="0" transform="translate(7 6)">
									      <circle id="oval1" fill="#9CD8C3" cx="2" cy="6" r="2"/>
									      <circle id="oval2" fill="#8CE8C3" cx="5" cy="2" r="2"/>
								      </g>
								      <g id="grp6" opacity="0" transform="translate(0 28)">
									      <circle id="oval1" fill="#CC8EF5" cx="2" cy="7" r="2"/>
									      <circle id="oval2" fill="#91D2FA" cx="3" cy="2" r="2"/>
								      </g>
								      <g id="grp3" opacity="0" transform="translate(52 28)">
									      <circle id="oval2" fill="#9CD8C3" cx="2" cy="7" r="2"/>
									      <circle id="oval1" fill="#8CE8C3" cx="4" cy="2" r="2"/>
								      </g>
								      <g id="grp2" opacity="0" transform="translate(44 6)" fill="#CC8EF5">
									      <circle id="oval2" transform="matrix(-1 0 0 1 10 0)" cx="5" cy="6" r="2"/>
									      <circle id="oval1" transform="matrix(-1 0 0 1 4 0)" cx="2" cy="2" r="2"/>
								      </g>
								      <g id="grp5" opacity="0" transform="translate(14 50)" fill="#91D2FA">
									      <circle id="oval1" transform="matrix(-1 0 0 1 12 0)" cx="6" cy="5" r="2"/>
									      <circle id="oval2" transform="matrix(-1 0 0 1 4 0)" cx="2" cy="2" r="2"/>
								      </g>
								      <g id="grp4" opacity="0" transform="translate(35 50)" fill="#F48EA7">
									      <circle id="oval1" transform="matrix(-1 0 0 1 12 0)" cx="6" cy="5" r="2"/>
									      <circle id="oval2" transform="matrix(-1 0 0 1 4 0)" cx="2" cy="2" r="2"/>
								      </g>
								      <g id="grp1" opacity="0" transform="translate(24)" fill="#9FC7FA">
									      <circle id="oval1" cx="2.5" cy="3" r="2"/>
									      <circle id="oval2" cx="7.5" cy="2" r="2"/>
								      </g>
							      </g>
						      </svg>
						    </label>
						  

							</div>
						</c:if>
							
								
							
							<!-- 좋아요 총 개수 들어옴 -->
							<c:if test="${!empty vo}">	
								<div style=" float:left; margin-top:15px; font-family: 'Montserrat', sans-serif; font-weight: 500; color:#DD4688">							
								LIKE!!&nbsp;<span class="rec_count"></span>
								</div>
							</c:if>
	
							
		<!-- ======= 음식점 ======= -->
							
							<br>
							<!-- <h2>${storeVO.name}</h2> -->	
							
							</header>
							<img src="../store_img/${foodvo.imageUrl}" alt="" height = "500" width = "780"/></a>

							<div class="description"><br><p>${svo.description}</p><br><p><a href="${svo.url}">${svo.url}</a></p></div>
							
		<!-- ======= Map ======= -->
							


							<div id="map" style="width:740px; height:350px;"></div>


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

					<div class="Listbutton">					
							 <a href="storeList.do">LIST</a>
						</div>
						
</div>					<!-- Sidebar -->
					<div id="sidebar" class="4u">
						<section>
							<header>
								<h2>Information</h2>
								<p>"${svo.address}"</p>
							</header>
							<ul class="style">
								<li>
									<h2>Menu</h2>
									<img src="../store_img/${menuvo.imageUrl}" alt="" width="416.66" height="416.66"/>
								</li>
								<!-- 알고리즘 결과 임시적으로 보여줌(예시) -->

								<p>					

								<br><br><br><h2>가장 가까운 음식점 정보</h2>
								<h6>${closestStore.name}</h6><br>
								${closestStore.address}<br>

								<a href="${closestStore.url}">${closestStore.url} </a>

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
		        <a>Designed by Enocore 1 Team</a>
		      </div>
		    </div>
		  </footer><!-- End Footer -->
		</center>
		

	
		
	</body>
</html>