<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="upload.do" method="post" enctype="multipart/form-data">
글 쓴 이 : <input type="text" name="name"><br>
제   목 : <input type="text" name="title"><br>
파   일 : <input type="file" name="uploadFile"><br>
<input type="submit" value="전송">
</form>



</body>
</html>