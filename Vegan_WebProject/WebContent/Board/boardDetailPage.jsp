<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div>
		<h2>${board.title}</h2>
		작성자 : ${board.memberId} 작성일시 : ${board.date}
	</div>

	<div>내용 : ${board.content}</div>
	<div>
	<input type="button" value="수정" onClick="location.href='updateForm.jsp'"> <input type="button" value="삭제" onClick="location.href='boardDelete.do'">
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
								<input type="button" value="delete" onClick="location.href='deleteComment.do?commentId=${comment.commentId}'">
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
</body>
</html>