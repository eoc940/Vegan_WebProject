<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board-${board.title}</title>
<script>
function check_delete(){
	if(confirm('게시글을 삭제하시겠습니까?')){
		location.href='boardDelete.do?boardId=${board.boardId}';
	}
	else{
		location.href='boardDetailPage.do?boardId=${board.boardId}';
	}
}

function validate() {
	  
	var content = $('textArea[name=content]').val();
	
    if (!checkExistData(content,"댓글에 내용을 ")) {
        return false;
    }
    return true;
}

// 공백확인 함수
function checkExistData(value, dataName) {
    if (value == "") {
        alert(dataName + " 입력해주세요!");
        return false;
    }
    return true;
}

	
</script>

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
<link href="css/style.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.slim.min.js" integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI=" crossorigin="anonymous"></script>




</head>
<body>


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
			<div id="boardTitle">
			   <h3>${board.title}</h3>
			</div>
	</div>

			
	<div class="boardContainer">
		<div id="boardBar">	
			<h3>작성자 : ${board.memberId} &nbsp;&nbsp; 작성일시 : ${board.date} &nbsp;&nbsp; 조회수 : ${board.viewCount}</h3>
		</div>
		<div id="boardCnt">
			<p>${board.content}</p>
		</div>
			
		<div class="writerArea">
			<c:if test="${board.memberId eq vo.memberId}">			
				<input type="button" value="Revise" onClick="location.href='updateForm.jsp?boardId=${board.boardId}'" id="reviseBtn"> 
				<input type="button" value="Delete" onClick="check_delete()" id="deleteBtn">					

			</c:if>
		</div>
		<div class="commentContainer">
			<div class="commenterArea">
				<!-- 댓글리스트 출력테이블 -->
				<c:if test="${!empty commentList}">
				<table id ="commentList">
						<c:forEach var="comment" items="${commentList}">
							<thead>
								<th colspan="2">작성자: ${comment.memberId} &nbsp;&nbsp; 작성일시: ${comment.date}</th>
							</thead>
							<tbody>
								<tr>
									<td width="90%"> ${comment.content}
									</td>
									<td width="10%">
										<c:if test="${comment.memberId eq vo.memberId}">
												<input type="button" value="Delete" onClick="location.href='deleteComment.do?boardId=${board.boardId}&&commentId=${comment.commentId}'" id="deleteBtn">
										</c:if>
									</td>
									
								</tr>
							</tbody>
						</c:forEach>
				</table>
			</c:if>	
			</div>
			<c:if test="${!empty vo}">
			<div class="commenterArea">
				<!-- 댓글 입력창 -->
				<form action="writeComment.do" method="post"  onsubmit="return validate()">
					<table id = "commentWrt">
						<thead>
							<th colspan="2">작성자 : ${vo.memberId}</th>
						</thead>
						<tbody>
							<tr>
								<input type="hidden" name="boardId" value="${board.boardId}">
								<input type="hidden" name="memberId" value="${vo.memberId}">
								<td width=90%><textarea name="content" placeholder="Comments.."></textarea></td>
								<td width=10%><input type="submit" value = "Write" id="writeBtn"></td>
								
							</tr>
						</tbody>
					</table>
				</form>
			</div>
			</c:if>
			
		</div>
		
		
			<div class="list">
				<input type="button" value="List" onClick="location.href='boardList.do'" id="listBtn">
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