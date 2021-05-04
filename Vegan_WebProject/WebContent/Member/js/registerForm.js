	var areas = 0;
	$(function () {	
	$('input:checkbox[name=areas]').click(function(){
	    areas= $('input:checkbox[name=areas]:checked').length;
		
		
		 if(areas>3){
			   alert('관심지역은 최대 3개까지 선택 가능합니다.');
			   $(this).prop('checked', false);
			}
			
			 });
	 });
	
	function inputIdChk(){
		document.registerForm.idDuplication.value="ID중복확인!!!!"
	}
	
	function validation() {
		if(flag=='false'){
			var id = document.registerForm.memberId.value;
		resultView = document.getElementById("idCheckResult");
		if(id.search(/\s/) != -1) {
			alert("아이디에 공백을 사용할 수 없습니다");
			document.registerForm.memberId.value="";
			document.registerForm.memberId.focus();
			resultView.innerHTML="<font color='red'><b>해당 ID 사용 불가!!</b></font>";
			flag='true';
			return false;
		}
		var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/;
		if(special_pattern.test(id) == true) { 
			alert("아이디에 특수문자를 사용할 수 없습니다");
			document.registerForm.memberId.value="";
			document.registerForm.memberId.focus();
			resultView.innerHTML="<font color='red'><b>해당 ID 사용 불가!!</b></font>";
			flag='true';
			return false;
		}
		var pattern1 = /[0-9]/; 
		var pattern2 = /[a-zA-Z]/; 
		
		if(!pattern1.test(id) || !pattern2.test(id) || id.length < 4) {
			alert("아이디는 4자리 이상 영문자, 숫자로 구성하여야 합니다");
			document.registerForm.memberId.value="";
			document.registerForm.memberId.focus();
			resultView.innerHTML="<font color='red'><b>해당 ID 사용 불가!!</b></font>";
			flag='true';
			return false;
		}
		}else{
			alert("아이디 중복체크 해주세요");	
			return false;
		}
		
		if(areas==0) {
			alert("관심지역을 1개이상 선택하세요!!!");
			return false;
		}
	}
	
	function updateValidation() {
		if(areas==0) {
			alert("관심지역을 1개이상 선택하세요!!!");
			return false;
		}
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
		if(f.password.value.search(/\s/) != -1) {
			alert("비밀번호에 공백을 사용할 수 없습니다");
			f.password.value="";
			f.password.focus();
			return false;
		}
		var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/;
		if(special_pattern.test(f.password.value) == true) { 
			alert("비밀번호에 특수문자를 사용할 수 없습니다");
			f.password.value="";
			f.password.focus();
			return false; 
		}
		var pattern1 = /[0-9]/; 
		var pattern2 = /[a-zA-Z]/; 
		
		if(!pattern1.test(f.password.value) || !pattern2.test(f.password.value) || f.password.value.length < 4) {
			alert("비밀번호는 4자리 이상 영문자, 숫자로 구성하여야 합니다");
			f.password.focus();
			return false;
		}

		
	}//
	
	var xhr;	
	var resultView;
	var flag;
	
	function startRequest() {
		
		var id = document.registerForm.memberId.value;
		resultView = document.getElementById("idCheckResult");
		if(id.search(/\s/) != -1) {
			alert("아이디에 공백을 사용할 수 없습니다");
			document.registerForm.memberId.value="";
			document.registerForm.memberId.focus();
			resultView.innerHTML="<font color='red'><b>해당 ID 사용 불가!!</b></font>";
			flag='true';
			return false;
		}
		var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/;
		if(special_pattern.test(id) == true) { 
			alert("아이디에 특수문자를 사용할 수 없습니다");
			document.registerForm.memberId.value="";
			document.registerForm.memberId.focus();
			resultView.innerHTML="<font color='red'><b>해당 ID 사용 불가!!</b></font>";
			flag='true';
			return false;
		}
		var pattern1 = /[0-9]/; 
		var pattern2 = /[a-zA-Z]/; 
		
		if(!pattern1.test(id) || !pattern2.test(id) || id.length < 4) {
			alert("아이디는 4자리 이상 영문자, 숫자로 구성하여야 합니다");
			document.registerForm.memberId.value="";
			document.registerForm.memberId.focus();
			resultView.innerHTML="<font color='red'><b>해당 ID 사용 불가!!</b></font>";
			flag='true';
			return false;
		}
		
		//위 if가 true가 아니면은 비동기 통신으로 로직을 전개시킨다.
		
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange = callback;
		xhr.open("post", "idCheck.do", true);
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
		xhr.send("memberId="+id);
		
	}
	
	 function callback() {
		if(xhr.readyState==4){
			if(xhr.status==200){
				flag = xhr.responseText;

				if(flag=='true')
					resultView.innerHTML="<font color='red'><b>해당 ID 사용 불가!!</b></font>";
				else
					resultView.innerHTML="<font color='green'><b>해당 ID 사용 가능!!</b></font>";
			}
		}
	} 