<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<c:if test="${!empty id_duplicate}">
	<script type="text/javascript">
	alert("아이디 중복확인 해주세요");
	history.back();
</script>
</c:if>
<c:if test="${!empty area_null}">
	<script type="text/javascript">
	alert("관심지역을 1개 이상 입력하세요");
	history.back();
</script>
</c:if>
</body>
</html>