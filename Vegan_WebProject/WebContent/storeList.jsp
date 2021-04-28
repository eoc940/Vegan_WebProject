<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>음식점 리스트</h2>
<div>
<h3>음식점 검색</h3>
	<form action = "findByStoreName.do">
		<fieldset>
			<legend>검색분류</legend>
			<select name="f">
				<label>검색어</label>
				<input type = "text" name = "storename" value ="">
				<input type = "submit" value="검색"/>
			</select>
		</fieldset>
	</form>
</div>
<form action ="findByStoreArea.do">
<input type="text" name="area">
<input type="submit" value="검색">
</form>

<table align='center'>
	<tbody>
	<c:forEach items="${list}" var="store">
	<tr>
		<td>
		${store.storeId}
		</td>	
		</c:forEach>
	</tr>
	</tbody>
</table>
</body>
</html>