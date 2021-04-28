<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${svo}<br>
${ivo}<br>
${mvo}<br>
이름 : ${svo.name}  좋아요 : ${svo.hit}
이미지경로 : ${ivo.imageUrl}
위도 : ${mvo.latitude}  경도 : ${mvo.longitude}
</body>
</html>