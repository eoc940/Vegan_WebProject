
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
<h2>My Page</h2><br/>
<div>
NAME : ${vo.name}<br/>
ID : ${vo.memberId}<br/>
Preference Location<br/>
<table>
<c:forEach items="${listA}" var="area">
	<tr>
		<td>
			${area.name}
		</td>
	</tr>
</c:forEach>
</table>
<input type="button" value="Modify" onClick="location.href='updateForm.jsp'">
</div>
<div>
<table>
<c:forEach items="${listB}" var="board">
	<tr>
		<td>
			${board.title}
		</td>
	</tr>
	<tr>
		<td>
			${board.content}
		</td>
	</tr>
</c:forEach>
</table>
</div>
<h2> I LIKE♥</h2>
<div>
<table>
	<tr>
		<c:forEach items="${listSI}" var="storeIamge">
			<td>
				<a href="../Store/storeDetail.jsp?storeId=${storeIamge.storeId}"><img alt=${storeIamge.name} src="../store_img/${storeIamge.imageUrl}" width="200px" height="200px"></a>
			</td>
		</c:forEach>
	</tr>
</table>
</div>
<input type="button" value="회원 탈퇴" onClick="location.href='deleteForm.jsp'">
</body>
</html>