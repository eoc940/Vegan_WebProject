<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no"
>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css"
/>
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
	rel="stylesheet"
>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap"
	rel="stylesheet"
>


<!--Google Material Icons-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons"
/>
<!--GSAP & ScrollToPlugin-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"
	integrity="sha512-IQLehpLoVS4fNzl7IfH8Iowfm5+RiMGtHykgZJl9AWMgqx0AmJ6cRWcB+GaGVtIsnC4voMfm8f2vwtY+6oPjpQ=="
	crossorigin="anonymous"
></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js"
	integrity="sha512-nTHzMQK7lwWt8nL4KF6DhwLHluv6dVq/hNnj2PBN0xMl2KaMm1PM02csx57mmToPAodHmPsipoERRNn4pG7f+Q=="
	crossorigin="anonymous"
></script>
<!--Swiper-->
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css"
/>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<!--ScrollMagic-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"
></script>
<!--Lodash-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.20/lodash.min.js"
	integrity="sha512-90vH1Z83AJY9DmlWa8WkjkV79yfS2n2Oxhsi2dZbIv0nC4E6m5AbH8Nh156kkM7JePmqD6tcZsfad1ueoaovww=="
	crossorigin="anonymous"
></script>

<!-- &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& css 시작 &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&-->

<script src="js/main.js"></script>
<link href="css/boardList.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">


<title>Board</title>
<script>
	function check_write() {
		if ("${vo}" != "") {
			location.href = 'registerForm.jsp';
		} else {
			alert("로그인 하시기 바랍니다.")
			location.href = '../Member/loginForm.jsp';
		}
	}
</script>
</head>
<body>

<form action="storeList.do"></form>

<header id="header" class="fixed-top d-flex align-items-center header-transparent">

  <div class="container d-flex align-items-center">

    <nav class="nav-menu d-none d-lg-block">
      <ul>
        <li><a href="../index.jsp">Home</a></li>
        <li><a href="../aboutus.jsp">About Us</a></li>
        <li class="active"><a href="boardList.do">Board</a></li>
        <li><a href="../Store/storeList.do">Restaurants</a></li>
        <c:if test="${!empty vo}">
        <li><a href="../Member/myPage.do?memberId=${vo.memberId}">My Page</a></li>
        </c:if>
		<c:if test="${!empty vo}">
        <li class="book-a-table text-center" ><a href="../Member/logout.do">logout</a></li>
		</c:if>
		<c:if test="${empty vo}">
        <li class="book-a-table text-center" ><a href="../Member/loginForm.jsp">login</a></li>
        </c:if>
      </ul>
     </nav><!-- .nav-menu -->
    
   </div>

</header><!-- End Header -->
	
	<div class = "header">
    	<h3>Board</h3>
	 </div>
<div id="container">

	
	<div class="boardMenu">
		<div id="write">
	
			<input type="button" value="Write" onClick="check_write()" id="writeButton">
		</div>
		<div class="search">
			<form action="searchBoard.do">
		    	<select name="opt">
		            <option value="0">제목</option>
		            <option value="1">내용</option>
		            <option value="2">작성자</option>
		        </select>
		        <input type="text" size="20" name="contents" id="searchContext"/>
		        <input type="submit" value="검색" id="searchButton"/>
		    </form> 
		</div>

	</div>
	<div id="container">



			<c:forEach items="${list}" var="board">
				<div class ="icon-boxes">
					<div data-aos="zoom-in" data-aos-delay="200">
						<div class="grid-container">
							<div class="grid-item icon-box">
					            <div class="icon"><a href="boardDetailPage.do?boardId=${board.boardId}"><h5>No. ${board.boardId}</h5></a><h6>DATE ${board.date}</h6></div>
						            <h4 class="title"><a href="boardDetailPage.do?boardId=${board.boardId}">${board.title}</a></h4><h6>Writer_ ${board.memberId}</h6>
						            <p class="description">${board.content}</p>
						            <h6>VIEWS_ ${board.viewCount}</h6>
						    
								</div>
							</div>
						</div>	
				</div>
			</c:forEach>
		
	</div>
	<div class="center">
		<div class="paging">
			<!-- 카운트가 0이상일떄만 -->
			<c:if test="${count > 0}">
				<c:set var="pageCount"
					value="${count / pageSize + ( count % pageSize == 0 ? 0 : 1)}" />
				<c:set var="startPage" value="${pageGroupSize*(numPageGroup-1)+1}" />
				<c:set var="endPage" value="${startPage + pageGroupSize-1}" />
				<c:if test="${endPage > pageCount}">
					<c:set var="endPage" value="${pageCount}" />
				</c:if>


				<!-- << 처음으로 < 이전으로 -->
				<c:if test="${numPageGroup > 1}">
					<a href="boardList.do?pageNum=1">&laquo;</a>
					<a href="boardList.do?pageNum=${(numPageGroup-2)*pageGroupSize+1 }">&lt;</a>
				</c:if>


				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<a href="boardList.do?pageNum=${i}"> <font color="#000000" />
						<c:if test="${currentPage == i}">
							<font color="#bbbbbb" />
						</c:if> ${i} </font>
					</a>
				</c:forEach>

				<!-- 소수점 형태이므로 인트형태로 변경  -->
				<fmt:parseNumber var="maxPage" value="${pageCount}" />

				<!-- >> 맨뒤로 > 다음으로 -->
				<c:if test="${numPageGroup < pageGroupCount}">
					<a href="boardList.do?pageNum=${numPageGroup*pageGroupSize+1}">&gt;</a>
					<a href="boardList.do?pageNum=${maxPage}">&raquo;</a>
				</c:if>
			</c:if>

		</div>
	</div>


 <!-- ======= Footer ======= -->

	<footer class="boardfooter">
		    <div id="container">
		      <h2>VEGAN PROJECT</h2>
		      <p>All life deserves respect, dignity, and compassion. All life.</p>
		    
		      <div class="copyright">
		        &copy; Copyright <strong><span>VEGAN PROJECT</span></strong>. All Rights Reserved
		     
		      <div class="credits">
		        Designed by Enocore 1 Team</a>
		      </div>
		    </div>
	 </footer><!-- End Footer -->



</body>
</html>