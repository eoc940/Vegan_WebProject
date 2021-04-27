<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
$(function () {	
	$('input:checkbox[name=areas]').click(function(){
		var areas = $('input:checkbox[name=areas]:checked').length;
		
		 if(areas>3){
			   alert('관심지역은 최대 3개까지 선택 가능합니다.')
			   $(this).prop('checked', false);
			  }
			 });
	 });
	 
   function passCheck() {
	//비밀번호가 일치하지 않으면 페이지 이동 안되도록...
	//메세지 띄워주고
	var f = document.updateForm;
	if(f.password.value != f.repassword.value){
		alert("비밀번호가 일치하지 않습니다");
		f.repassword.value="";
		f.repassword.focus();
		return false;
	}
}//


</script>
</head>
<body>
<center>
	
		<h2>회원 정보 수정하기</h2>
		<form action="update.do" method="post" name="updateForm">
			<table width="300" border="1">
			<tr height="40">
				<td width="120">아이디 :</td>
				<td width="180"><input type = "text" name ="memberId" value="${vo.memberId}" readonly="readonly"></td>
			</tr>
			
			<tr height="40">
				<td width="120">패스워드</td>
				<td width="180"><input type="password" name="password"></td>
				
			</tr>
			
			<tr height ="40">
					<td width="150" align="center" >PASSWORD 확인</td>
					<td width="250"><input type="password" name ="repassword" required="required" onchange="passCheck()" ></td>
			</tr>
				
			<tr height="40">
				<td width="120">이름</td>
				<td width="180"><input type="text" name="name" value="${vo.name}"></td>
			</tr>
			<tr height="40">
				<td width="120">주소</td>
				<td width="180"><input type="text" name="address" value="${vo.address}"></td>
			</tr>
			
			<tr height = "40">
					<td width="150" align="center">area</td>
					<td width="250">
					<input type="checkbox" name="areas" value="100">1
					<input type="checkbox" name="areas" value="200">2
					<input type="checkbox" name="areas" value="300">3
					<input type="checkbox" name="areas" value="400">4
					</td>
				</tr>
			
			<tr height="40">
				<td  align = "center" colspan="2"><input type="submit" value = "회원수정하기"></td>
			</tr>
			</table>
		</form>
		
	</center>


</body>
</html>