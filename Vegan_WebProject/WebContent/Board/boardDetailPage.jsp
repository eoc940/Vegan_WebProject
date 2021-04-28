<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<h2>${board.title}</h2>  작성자 : ${board.memberId} 작성일시 : ${board.date}
</div>

<div>
	내용 : ${board.content}
</div>

<div>
	<input type="button" value="수정" onClick="location.href='updateForm.jsp?boardId=${board.boardId}'"> <input type="button" value="삭제" onClick="location.href='boardDelete.do?boardId=${board.boardId}'">
</div>
</body>
</html>