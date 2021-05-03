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
		function check_delete() {
			if (confirm('정말 탈퇴 하시겠습니까?')) {
				location.href = 'delete.do?memberId=${vo.memberId}&name=${vo.name}';
			} else {
				location.href = 'myPage.do?memberId=${vo.memberId}';
			}
		}

		function showBestNine() {
			xhr = new XMLHttpRequest();
			xhr.onreadystatechange = callback;
			xhr.open("post", "bestNine.do", true);
			xhr.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded;charset=utf-8");
			xhr.send();
		}

		function callback() {
			if (xhr.readyState == 4) {
				if (xhr.status == 200) {
					var list = JSON.parse(xhr.responseText);
					var resultView = document.getElementById("bestNine");
					var resultList;
					if (list != null)
						for (var i = 0; i < 9; i++) {
							// $("#bestNine").append("<div class='swiper-slide'> <img src=./store_img/"+list[i].imageUrl+" width=819 height =819/> <a href='javascript:void(0)' class='btn'>"+list[i].name+"</a> </div> ");
							// resultView.innerHTML+="<div class='swiper-slide'> <img src=./store_img/"+list[i].imageUrl+" width=819 height =819/> <a href='javascript:void(0)' class='btn'>"+list[i].name+"</a> </div> ";
							resultList += "<div class='swiper-slide'> <img src=./store_img/" + list[i].imageUrl +
								" width=819 height =819/> <a href='./Store/storeDetail.do?storeId=" +
								list[i].storeId +
								"' class='btn'>" +
								list[i].name + "</a> </div>";

						}
					$("#bestNine").html(resultList);
					new Swiper('.promotion .swiper-container', {
						// direction: 'horizontal', // 수평 슬라이드
						autoplay: { // 자동 재생 여부
							delay: 5000
							// 5초마다 슬라이드 바뀜
						},
						loop: true, // 반복 재생 여부
						slidesPerView: 3, // 한 번에 보여줄 슬라이드 개수
						spaceBetween: 10, // 슬라이드 사이 여백
						centeredSlides: true, // 1번 슬라이드가 가운데 보이기
						pagination: { // 페이지 번호 사용 여부
							el: '.promotion .swiper-pagination', // 페이지 번호 요소 선택자
							clickable: true
							// 사용자의 페이지 번호 요소 제어 가능 여부
						},
						navigation: { // 슬라이드 이전/다음 버튼 사용 여부
							prevEl: '.promotion .swiper-prev', // 이전 버튼 선택자
							nextEl: '.promotion .swiper-next' // 다음 버튼 선택자
						}
					})
				}
			}
		}

		$(document).ready(function () {
			showMenu();
			showBestNine();
		});

		var mySwiper = new Swiper('.swiper-container', {

			// 여기에 옵션을 넣어야 합니다.

		});
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
						<li><a href="../Member/myPage.do?memberId=${vo.memberId}">My Page</a></li>
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
				<img src="../assets/img/banana.png" width=100px> <br /> <br />
				NAME : ${vo.name}<br /> ID : ${vo.memberId}<br /> <br /> <br />
				<br /> Preference<br /> Location<br /> <br />

				<div class="preference">
					<c:forEach items="${listA}" var="area">
						<div>${area.name}</div>
					</c:forEach>
				</div>
				<br /> <input type="button" value="Modify" onClick="location.href='updateForm.jsp'" id="modifyButton">
				<br /> <br /> <input type="button" value="Delete Account" onClick="check_delete()" id="withdraw">

			</div>

			<!-- =================== contents ================================== -->

			<div class="contents">


				<c:forEach items="${listB}" var="board">
					<div class="post">
						- My Post : ${board.title}
						<div class="myPostbox">

							<div class="contentbox">${board.content}</div>
						</div>
					</div>
				</c:forEach>

			</div>

		</div>
	</form>


	<!-- ===================== like pic ============================== -->


	<!--   <section class="notice">
  
    <div class="promotion">


      <div class="swiper-container">
        <div class="swiper-wrapper" id="bestNine"></div>
      </div>

      <div class="swiper-pagination"></div>

      <div class="swiper-prev">
        <span class="material-icons">arrow_back</span>
      </div>
      <div class="swiper-next">
        <span class="material-icons">arrow_forward</span>
      </div>

    </div>
   
  </section> -->



	<section class="like">
		<div>I LIKE♥</div>
		<div>
			<table>
				<tr>
					<c:forEach items="${listSI}" var="storeIamge">
						<td>
							<a href="../Store/storeDetail.jsp?storeId=${storeIamge.storeId}">
								<img alt=${storeIamge.name} src="../store_img/${storeIamge.imageUrl}" width="200px"
									height="200px">
							</a>
						</td>
					</c:forEach>
				</tr>
			</table>
		</div>

	</section>


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