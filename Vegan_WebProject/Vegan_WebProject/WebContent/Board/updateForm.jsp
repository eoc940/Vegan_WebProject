<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<form action = "boardUpdate.do" method="post" name="boardUpdateForm">
	제목 : <input type="text" name="title">
	내용 : <input type="text" name="content">
	작성자 : ${vo.memberId} <input type="hidden" name="memberId" value="${vo.memberId}">
	<input type="hidden" name="boardId" value="${param.boardId}">
	<input type="submit" value="Update">
</form>
</body>
</html>