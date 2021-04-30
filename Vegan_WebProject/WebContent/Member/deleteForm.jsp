<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Delete</title>
<link href="css/deleteForm.css" rel="stylesheet">
<script type="text/javascript">

</script>
</head>
<body>

	  <div class="main">
        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="../bg_img/bgimg (13).jpg" alt="">
                </div>
                <div class="signup-form">
                    <form action="delete.do" method="POST" class="register-form" id="register-form" name="registerForm">

                        <h2>회원정보 삭제</h2>

						<div class="form-group">
                            <label for="memberId">ID :</label>
                            <input type="text" name ="memberId" value="${vo.memberId}" readonly="readonly"/>
							
                        </div>

                       
                            <div class="form-group">
                                <label for="password">PASSWORD :</label>
                                <input type="password" name ="password"  value="${vo.password}" readonly="readonly"/>
                            </div>
                           
                    
                        <div class="form-group">
                            <label for="name">NAME :</label>
                            <input type="name" name ="name" value="${vo.name}"  readonly="readonly"/>
                        </div>

						 <div class="form-group">
                            <label for="address">ADDRESS :</label>
                            <input type="text" name ="address" value="${vo.address}" readonly="readonly"/>
                        </div>
                        
                        <div class="form-submit">
							 <input type="submit" value = "회원삭제하기"  class="submit">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>