<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>No.</th> <th>게시판 제목</th><th>No.</th> <th>게시판 제목</th> <th>작성자</th><th>작성일시</th><th>조회수</th>

			</tr>
		</thead>
		<tbody>
			
			<c:forEach items="${list}" var="board">
				<tr>
					<td>
					${board.boardId}
					</td>
					<td>
					<a href="boardDetailPage.do?boardId=${board.boardId}">${board.title}</a>
					</td>
					<td>
					${board.memberId}/
					</td>
					<td>
					${board.date}/
					</td>
					<td>
					${board.viewCount}/
					</td>
					<td>
					${board.viewCount}
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<div>
		<input type="button" value="글 작성" onClick="location.href='registerForm.jsp'">
	</div>
</body>
</html>