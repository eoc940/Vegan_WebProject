<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
<title>Insert title here</title>

</head>
<body>
<c:if test="${!empty wrongId}">
	<script>
	alert("아이디가 존재하지 않습니다.");
	location.href="loginForm.jsp";
	</script>
</c:if>
<c:if test="${!empty wrongPassword}">
	<script>
	alert("잘못된 비밀번호 입니다.");
	location.href="loginForm.jsp";
	</script>
</c:if>
</body>
</html>