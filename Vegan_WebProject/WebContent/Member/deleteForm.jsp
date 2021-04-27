<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<form action="delete.do" method="post">
			<table width="300" border="1">
			<tr height="40">
				<td width="120">아이디 :</td>
				<td width="180"><input type = "text" name ="memberId" value="${vo.memberId}" readonly="readonly"></td>
			</tr>
			
			<tr height="40">
				<td width="120">패스워드</td>
				<td width="180"><input type="password" name="password" value="${vo.password}" readonly="readonly"></td>
				
			</tr>
			<tr height="40">
				<td width="120">이름</td>
				<td width="180"><input type="text" name="name" value="${vo.name}" readonly ="readonly"></td>
			</tr>
			<tr height="40">
				<td width="120">주소</td>
				<td width="180"><input type="text" name="address" value="${vo.address}" readonly="readonly"></td>
			</tr>
	
			<tr height="40">
				<td  align = "center" colspan="2"><input type="submit" value = "회원삭제하기"></td>
			</tr>
			</table>
		</form>
		
	</center>
</body>
</html>