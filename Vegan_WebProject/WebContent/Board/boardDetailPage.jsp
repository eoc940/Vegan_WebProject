<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
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
<link href="css/boardDetail.css" rel="stylesheet">

<title>Board-${board.title}</title>

</head>
<body>


<header id="header" class="fixed-top d-flex align-items-center header-transparent">

  <div class="container d-flex align-items-center">

    <nav class="nav-menu d-none d-lg-block">
      <ul>
        <li class="active"><a href="../index.jsp">Home</a></li>
        <li><a href="../aboutus.jsp">About Us</a></li>
       <li><a href="boardList.do">Board</a></li>
        <li><a href="../Store/storeList.do">Restautants</a></li>
        <li><a href="../Member/myPage.jsp">My Page</a></li>

        <li class="book-a-table text-center" ><a href="../Member/loginForm.jsp">login</a></li>
      </ul>
     </nav><!-- .nav-menu -->
    
   </div>

</header><!-- End Header -->
	
	<div>
		<h2>${board.title}</h2>
		작성자 : ${board.memberId} 작성일시 : ${board.date}
	</div>
	<div>내용 : ${board.content}</div>
	
<div>
	<c:if test="${board.memberId eq vo.memberId}">			
		<input type="button" value="수정" onClick="location.href='updateForm.jsp?boardId=${board.boardId}'"> <input type="button" value="삭제" onClick="location.href='boardDelete.do?boardId=${board.boardId}'">					
	</c:if>
</div>

	<div>
		<!-- 댓글리스트 출력테이블 -->
		<table bgcolor='lightgray' >
			<c:if test="${!empty commentList}">
				<c:forEach var="comment" items="${commentList}">
					<tr>
						<td>작성자: ${comment.memberId}</td>
						<td>작성일시: ${comment.date}</td>
					</tr>
					<tr>
						<td>내 용: ${comment.content}</td>
						<c:if test="${comment.memberId eq vo.memberId}">
							<td>
								<input type="button" value="delete" onClick="location.href='deleteComment.do?boardId=${board.boardId}&&commentId=${comment.commentId}'">
							</td>
						</c:if>
					</tr>
				</c:forEach>

			</c:if>
		</table>
	</div>
	<div>
		<!-- 댓글 입력창 -->
		<form action="writeComment.do" method="post">
			<table>
			<tr >
				<td>작성자: ${vo.memberId}</td>
				<td>내 용: <textarea  name="content"></textarea></td>
				<td><input type="submit" value = "Write"></td>
				<input type="hidden" name="boardId" value="${board.boardId}">
				<input type="hidden" name="memberId" value="${vo.memberId}">
			</tr>
			</table>
		</form>
	</div>

	<div>
		<input type="button" value="목록" onClick="location.href='boardList.do'">
	</div>

</body>
</html>