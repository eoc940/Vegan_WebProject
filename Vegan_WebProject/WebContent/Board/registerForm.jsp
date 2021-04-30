<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function check_register(){
		if(confirm('게시글을 작성하시겠습니까?')){
			boardRegisterForm.submit();
		}
		else{
			location.href='registerForm.jsp';
		}
	}
</script>
</head>
<body>
<form action = "boardRegister.do" method="post" name="boardRegisterForm">
	제목 : <input type="text" name="title">
	내용 : <input type="text" name="content">
	작성자 : ${vo.memberId} <input type="hidden" name="memberId" value="${vo.memberId}">
	<input type="button" value="Regiser" onclick="check_register()">
</form>
</body>
</html>