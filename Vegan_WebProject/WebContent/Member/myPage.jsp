<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!--브라우저 스타일 초기화-->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />

	<!-- Favicons -->
	<link href="../assets/img/favicon.png" rel="icon">
	<link href="../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap" rel="stylesheet">
	<link	href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,600,600i,700,700i|Satisfy|Comic+Neue:300,300i,400,400i,700,700i"	rel="stylesheet">
	<link rel="stylesheet" href="//fonts.googleapis.com/earlyaccess/nanumgothic.css">


	<!--GSAP & ScrollToPlugin-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"	integrity="sha512-IQLehpLoVS4fNzl7IfH8Iowfm5+RiMGtHykgZJl9AWMgqx0AmJ6cRWcB+GaGVtIsnC4voMfm8f2vwtY+6oPjpQ=="	crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js"	integrity="sha512-nTHzMQK7lwWt8nL4KF6DhwLHluv6dVq/hNnj2PBN0xMl2KaMm1PM02csx57mmToPAodHmPsipoERRNn4pG7f+Q=="	crossorigin="anonymous"></script>
	<!--Swiper-->
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<!--ScrollMagic-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"></script>
	<!--Lodash-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.20/lodash.min.js"
		integrity="sha512-90vH1Z83AJY9DmlWa8WkjkV79yfS2n2Oxhsi2dZbIv0nC4E6m5AbH8Nh156kkM7JePmqD6tcZsfad1ueoaovww=="	crossorigin="anonymous"></script>



	<!--Google Material Icons-->
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
	<link href="css/myPage.css" rel="stylesheet">



	<title>My Page</title>



<script>

	function check_delete(){
		if(confirm('계정을 삭제하시겠습니까?')){
			location.href='delete.do?memberId=${vo.memberId}&name=${vo.name}';
		}
		else{
			location.href='myPage.do?memberId=${vo.memberId}';
		}
	}
</script>

</head>


<!-- &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& body 시작 &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&-->

<body>


	<header id="header" class="fixed-top d-flex align-items-center header-transparent">

		<div class="container d-flex align-items-center">

			<nav class="nav-menu d-none d-lg-block">
				<ul>
					<li><a href="../index.jsp">Home</a></li>
					<li><a href="../aboutus.jsp">About Us</a></li>
					<li><a href="../Board/boardList.do">Board</a></li>
					<li><a href="../Store/storeList.do">Restaurants</a></li>
					<c:if test="${!empty vo}">
						<li class="active"><a href="../Member/myPage.do?memberId=${vo.memberId}">My Page</a></li>
					</c:if>
					<c:if test="${!empty vo}">
						<li class="book-a-table text-center"><a href="logout.do">logout</a></li>
					</c:if>
					<c:if test="${empty vo}">
						<li class="book-a-table text-center"><a href="loginForm.jsp">login</a></li>
					</c:if>
				</ul>
			</nav>
			<!-- .nav-menu -->

		</div>

	</header>
	<!-- End Header -->


	<form action="myPage.do">
		<!-- ======= top ======= -->

		<div class="top">
			<h1>My Page</h1>
		</div>

		<!-- ======= main ======= -->


		<div class="main">

			<!-- =============== side ================================= -->

			<div class="side">
				<img src="../assets/img/mypagelogo.png" width=150px> <br /> <br /><br />
				NAME&nbsp;&nbsp;&nbsp;${vo.name}<br /> ID&nbsp;&nbsp;&nbsp;${vo.memberId}<br />
				<br /> Preference Location<br /> <br />

				<div class="preference">
					<c:forEach items="${listA}" var="area">
						<ul><a href="../Store/storeList.do?area=${area.areaId}">${area.name}</a></ul>
					</c:forEach>
				</div>
				<br /> <input type="button" value="Modify" onClick="location.href='updateForm.jsp'" id="modifyButton">

			</div>

			<!-- =================== contents ================================== -->

			<div class="contents">


				<c:forEach items="${listB}" var="board">
					<div class="post">
						My Post _ ${board.title}
						<div class="myPostbox">
							<a href="../Board/boardDetailPage.do?boardId=${board.boardId}">
							<div class="contentbox">${board.content}</div>
							</a>
						</div>
					</div>
				</c:forEach>

			</div>

		</div>
	</form>


	<!-- ===================== like pic ============================== -->

    
	<!-- table div 요소로 변경 아래로 밀리게 -->
	<section class="like">
		
		<div class="anima">
		<svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">    <path d="M21.1,-21.7C27.9,-14.3,34.5,-7.1,36.1,1.7C37.8,10.4,34.5,20.9,27.7,27.6C20.9,34.3,10.4,37.4,1.6,35.7C-7.2,34.1,-14.4,27.9,-19.6,21.1C-24.8,14.4,-27.9,7.2,-28.4,-0.5C-28.8,-8.1,-26.6,-16.2,-21.4,-23.6C-16.2,-31.1,-8.1,-37.8,-0.5,-37.3C7.1,-36.8,14.3,-29.1,21.1,-21.7Z" width="100%" height="100%" transform="translate(50 50)" stroke-width="0" style="transition: all 0.3s ease 0s;" stroke="url(#sw-gradient)"></path></svg>
		<svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">    <path d="M30,-28.9C37.3,-22.7,40.6,-11.4,38.4,-2.1C36.3,7.2,28.9,14.3,21.6,21.2C14.3,28.1,7.2,34.7,-0.2,34.9C-7.5,35,-15,28.7,-20.2,21.9C-25.4,15,-28.3,7.5,-30.1,-1.8C-31.9,-11.2,-32.7,-22.3,-27.5,-28.4C-22.3,-34.6,-11.2,-35.6,0.1,-35.8C11.4,-35.9,22.7,-35,30,-28.9Z" width="100%" height="100%" transform="translate(50 50)"></path></svg>
		<svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">    <path d="M24,-23C29.9,-18,32.8,-9,32.1,-0.7C31.4,7.6,27,15.2,21.1,20.5C15.2,25.9,7.6,29.1,-0.4,29.5C-8.4,29.9,-16.7,27.5,-23,22.1C-29.3,16.7,-33.5,8.4,-33.2,0.3C-33,-7.9,-28.3,-15.7,-22,-20.6C-15.7,-25.6,-7.9,-27.5,0.6,-28.1C9,-28.7,18,-27.9,24,-23Z" width="100%" height="100%" transform="translate(50 50)" stroke-width="0"></path></svg>
		<svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">    <path d="M20.6,-19.3C26.9,-14.4,32.3,-7.2,32.9,0.6C33.5,8.4,29.3,16.8,23,24.1C16.8,31.5,8.4,37.9,0.4,37.5C-7.7,37.1,-15.3,30,-22.4,22.7C-29.4,15.3,-35.9,7.7,-36.4,-0.5C-37,-8.7,-31.5,-17.4,-24.5,-22.4C-17.4,-27.3,-8.7,-28.5,-0.8,-27.7C7.2,-27,14.4,-24.3,20.6,-19.3Z" width="100%" height="100%" transform="translate(50 50)" stroke-width="0" style="transition: all 0.3s ease 0s;" stroke="url(#sw-gradient)"></path></svg>
		
		</div>
		
		<div class="L_title">I LIKE ♥</div>
		
		<div>
			<div class="L_img">
			
				<c:forEach items="${listSI}" var="storeIamge">
					
						<a href="../Store/storeDetail.do?storeId=${storeIamge.storeId}" >
							
							<img alt=${storeIamge.name} src="../store_img/${storeIamge.imageUrl}" >
						</a>
					
				</c:forEach>
				
			</div>
		</div>

	</section>
	
	<div class="delete">
   		<input type="button" value="Delete Account" onClick="check_delete()" id="withdraw">
    </div>
   
	<!-- ======= Footer ======= -->

	<footer id="footer">
		<div class="container">
			<h2>VEGAN PROJECT</h2>
			<p>All life deserves respect, dignity, and compassion. All life.</p>

			<div class="copyright">
				&copy; Copyright <strong><span>VEGAN PROJECT</span></strong>. All
				Rights Reserved
			</div>
			<div class="credits">
				<a>Designed by Enocore 1 Team</a>
			</div>
		</div>
	</footer>
	<!-- End Footer -->


</body>

</html>