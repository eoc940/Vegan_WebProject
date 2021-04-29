<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${stores}" var ="store">
	${store.name}
</c:forEach>
<c:forEach items="${images}" var="image">
	${image.imageUrl}
</c:forEach>
</body>
</html>