<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap" rel="stylesheet">
<link href="css/registerForm.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="js/registerForm.js"> </script>
<script type="text/javascript">

</script>
<title>REGISTER</title>



</head>
<body>
    <div class="main">
        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="../bg_img/bgimg.jpg" alt="">
                </div>
                <div class="signup-form">
                    <form action="register.do" method="POST" class="register-form" id="register-form" name="registerForm">

                        <h2>Register Form</h2>

						<div class="form-group">
                            <label for="memberId">ID :</label>
                            <input type="text" name ="memberId" required="required" />
							<input type="button" value="중복확인" onclick="startRequest()">
							<input type ="hidden" name="idDuplication" value="idUncheck">
							<span id="idCheckResult"> </span>
                        </div>

                        <div class="form-row">
                            <div class="form-group">
                                <label for="password">PASSWORD :</label>
                                <input type="password" name ="password" required="required"/>
                            </div>
                            <div class="form-group">
                                <label for="repassword">CONFIRM :</label>
                                <input type="password" name ="repassword" required="required" onchange="passCheck()"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name">NAME :</label>
                            <input type="name" name ="name" required="required"/>
                        </div>

						 <div class="form-group">
                            <label for="address">ADDRESS :</label>
                            <input type="text" name ="address" required="required"/>
                        </div>
                        
                    <div>
                        	<label for="areas">PREFERENCE LOCATION :</label>
                        </div>
                        <div class="form-container">          					
                        
                        <div class="areas-form">
								<input type="checkbox" name="areas" value="300">종로구
								<input type="checkbox" name="areas" value="301">중구
								<input type="checkbox" name="areas" value="302">용산구
								<input type="checkbox" name="areas" value="303">성동구
								<input type="checkbox" name="areas" value="304">광진구
								<input type="checkbox" name="areas" value="305">동대문구
								<input type="checkbox" name="areas" value="306">중랑구
								<input type="checkbox" name="areas" value="307">성북구
								<input type="checkbox" name="areas" value="308">강북구
						</div>
						<div class="areas-form">								
								<input type="checkbox" name="areas" value="309">도봉구
								<input type="checkbox" name="areas" value="310">노원구
								<input type="checkbox" name="areas" value="311">은평구
								<input type="checkbox" name="areas" value="312">서대문구
								<input type="checkbox" name="areas" value="313">마포구
								<input type="checkbox" name="areas" value="314">양천구
								<input type="checkbox" name="areas" value="315">강서구
								<input type="checkbox" name="areas" value="316">구로구							
						</div>	
						
						<div class="areas-form">																							
								<input type="checkbox" name="areas" value="317">금천구
								<input type="checkbox" name="areas" value="318">영등포구
								<input type="checkbox" name="areas" value="319">동작구
								<input type="checkbox" name="areas" value="320">관악구
								<input type="checkbox" name="areas" value="321">서초구
								<input type="checkbox" name="areas" value="322">강남구
								<input type="checkbox" name="areas" value="323">송차구
								<input type="checkbox" name="areas" value="324">강동구
								
						</div>	
								
					</div>	
                                        
                        <div class="form-submit">
                        <div class="index">
								 <a href="../index.jsp" >HOME</a>
							 </div>
							 
                       		 
							 <div class= "btn">
                            <input type="reset" value="Reset All" class="submit" name="reset" id="reset" />
                            <input type="submit" onclick="return validation();" value="Submit Form" class="submit" name="submit" id="submit" />
                          	</div>
                          	
                          	
						 	
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


</body>
</html>