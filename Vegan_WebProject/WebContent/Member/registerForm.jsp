<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

	$(function () {	
	$('input:checkbox[name=areas]').click(function(){
		var areas = $('input:checkbox[name=areas]:checked').length;
		
		 if(areas>3){
			   alert('관심지역은 최대 3개까지 선택 가능합니다.')
			   $(this).prop('checked', false);
			  }
			 });
	 });
	
	function inputIdChk(){
		document.registerForm.idDuplication.value="ID중복확인!!!!"
	}

	function passCheck() {
		//비밀번호가 일치하지 않으면 페이지 이동 안되도록...
		//메세지 띄워주고
		var f = document.registerForm;
		if(f.password.value != f.repassword.value){
			alert("비밀번호가 일치하지 않습니다");
			f.repassword.value="";
			f.repassword.focus();
			return false;
		}
	}//
	
	var xhr;	
	var resultView;
	
	function startRequest() {
		
		var memberId = document.registerForm.memberId.value;
		resultView = document.getElementById("idCheckResult");
		
		//위 if가 true가 아니면은 비동기 통신으로 로직을 전개시킨다.
		
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange = callback;
		xhr.open("post", "idCheck.do", true);
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
		xhr.send("memberId="+memberId);
		
	}
	
	 function callback() {
		if(xhr.readyState==4){
			if(xhr.status==200){
				var flag = xhr.responseText;

				if(flag=='true')
					resultView.innerHTML="<font color='red'><b>해당 ID 사용 불가!!</b></font>";
				else
					resultView.innerHTML="<font color='green'><b>해당 ID 사용 가능!!</b></font>";
			}
		}
	} 
</script>
</head>
<body>
<center>
	<form action = "register.do" method="post" name="registerForm">

		<table width="400" border="1" bordercolor="gray">
				<tr height ="40">
					<td width="150" align="center">ID</td>
					<td width="250"><input type="text" name ="memberId" required="required" onkeydown="inputUdChk()"></td>
					<td><input type="button" value="중복확인" onclick="startRequest()"> </td>
					<input type ="hidden" name="idDuplication" value="idUncheck">
					<span id="idCheckResult"> </span>
				</tr>
			
				<tr height ="40">
					<td width="150" align="center" >PASSWORD</td>
					<td width="250"><input type="password" name ="password" required="required"></td>
					
				</tr>
				
				<tr height ="40">
					<td width="150" align="center" >PASSWORD 확인</td>
					<td width="250"><input type="password" name ="repassword" required="required" onchange="passCheck()" ></td>
				</tr>
				
				<tr height ="40">
					<td width="150" align="center">NAME </td>
					<td width="250"><input type="name" name ="name" required="required"></td>
				</tr>
				
				<tr height ="40">
					<td width="150" align="center">ADDRESS</td>
					<td width="250"><input type="text" name ="address" required="required"></td>
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
				
				<tr height="50">
					<td align = center width="150" colspan="2">
						<input type="submit" value="회원 가입">	
						<input type="reset" value="취소">			
					</td>
				</tr>
			</table>
	</form>
	</center>

</body>
</html>