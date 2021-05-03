
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