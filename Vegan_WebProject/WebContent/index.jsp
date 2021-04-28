<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	var arr = [['food_img/1.JPG','비건빵'],
		['food_img/2.JPG','브루스게타'],
		['food_img/3.JPG','부추전'],
		['food_img/4.JPG','비건버거'],
		['food_img/5.JPG','콩고기 커틀렛'],
		['food_img/6.JPG','가지볶음'],
		['food_img/7.JPG','파인애플 볶음밥'],
		['food_img/8.JPG','야채피자'],
		['food_img/9.JPG','샐러드'],
		['food_img/10.JPG','야채 쌀국수'],
		['food_img/11.JPG','단호박 수프'],
		['food_img/12.JPG','두부 김치'],
		['food_img/13.jpg','건두부 볶음'],
		['food_img/14.png','잔치국수'],
		['food_img/15.jpg','야채김밥'],
		['food_img/16.jpg','도토리묵'],
		['food_img/17.png','리조또'],
		['food_img/18.png','비빔밥'],
		['food_img/19.png','빵'],
		['food_img/20.png','샌드위치'],
		['food_img/21.jpg','샐러드'],
		['food_img/22.png','스튜'],
		['food_img/23.jpg','야채죽'],
		['food_img/24.png','커리'],
		['food_img/25.png','파스타'],
		['food_img/26.png','구절판']]
	
	function showMenu(){
		var randomNum=Math.floor(Math.random() * arr.length);
		var img_url=arr[randomNum][0];
		var name=arr[randomNum][1];
		document.getElementById("menu_img").innerHTML="<img src="+img_url+" width=300px>  "+name;
		
	}
	var xhr;
	function showBestNine(){
		xhr=new XMLHttpRequest();
		xhr.onreadystatechange=callback;
		xhr.open("post","bestNine.do",true);
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
		xhr.send();
	}
	
	function callback(){
		if(xhr.readyState==4){
			if(xhr.status==200){
				var list=JSON.parse(xhr.responseText);
				var resultView=document.getElementById("bestNine");
				if(list!=null)
				for(var i=0;i<9;i++)
				{resultView.innerHTML+=list[i].name+" <img src="+"store_img/"+list[i].imageUrl+" width=300px> <br/> ";}		
			}
		}
	}
	window.onload=function(){
		showMenu();
		showBestNine();
	}
	
</script>

</head>
<body>

<a href = "Member/registerForm.jsp">회원가입하기</a>
<a href ="Member/loginForm.jsp">로그인하기</a>
<a href ="Member/updateForm.jsp">회원수정하기</a>
<a href ="Member/deleteForm.jsp">회원삭제하기</a>
<a href ="Member/logout.do">로그아웃하기</a>

<!-- dskds -->

<a href = "StoreList.do">음식점</a>

<a href = "Board/boardList.do">게시판</a>



<div class="menu_recommend">
<h2>Today's MENU is ....</h2>
	<div id="menu_img"></div>
	<input type="button" value="reset" onclick="showMenu()"><br><br>
</div>
<a href="storeDetail.do?storeId=25">식당보기</a>
<div id="bestNine">
<h2>BEST 10 Restaurants</h2>


</div>

</body>
</html>

