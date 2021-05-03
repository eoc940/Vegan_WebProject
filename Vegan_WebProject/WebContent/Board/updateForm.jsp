<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap" rel="stylesheet">


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

<script src="js/main.js"> </script>
<link href="css/updateForm.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<title>Insert title here</title>
<script>
	function check_update(){
		var title = $('input:text[name=title]').length;
		if(title==0){
			
		}
		if(confirm('게시글을 수정하시겠습니까?')){
			boardUpdateForm.submit();
		}
		else{
			location.href='updateForm.jsp';
		}
	}
</script>
</head>
<body>

<header id="header" class="fixed-top d-flex align-items-center header-transparent">

  <div class="container d-flex align-items-center">

    <nav class="nav-menu d-none d-lg-block">
      <ul>
        <li class="active"><a href="../index.jsp">Home</a></li>
        <li><a href="../aboutus.jsp">About Us</a></li>
       <li><a href="boardList.do">Board</a></li>
        <li><a href="../Store/storeList.do">Restaurants</a></li>
        <li><a href="../Member/myPage.jsp">My Page</a></li>
		<c:if test="${!empty vo}">
        <li class="book-a-table text-center" ><a href="../Member/logout.do">logout</a></li>
        </c:if>
      </ul>
     </nav><!-- .nav-menu -->
    
   </div>

</header><!-- End Header -->

<div class = "header">
			<div id="boardTitle">
			   <h3>Board Update</h3>
			</div>
</div>

<form action = "boardUpdate.do" method="post" name="boardUpdateForm">
	<div class = "boardContainer">
		<table>
			<thead>
				<tr>
					<th width="10%">Title</th>
					<th width="70%">
						<input type="text" name="title" id="ttl">
					</th>
					<th width="10%">Writer</th>
					<th width="10%" id="mid">${vo.memberId}<input type="hidden" name="memberId" value="${vo.memberId}"></th>
				</tr>
				<tr>
					<th colspan="4"></th>
				</tr>
			</thead>
			<tbody>
				<tr id="tbodyrow">
					<td colspan="4"> <input type="text" name="content" placeholder="Context..."></td>
				</tr>
			</tbody>
		</table>
		<div id="postRegister">
		
			<input type="hidden" name="boardId" value="${param.boardId}">
			<input type="button" value="Update" onclick="check_update()" id="registerBtn">
			
		</div>
	</div>


	
</form>

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