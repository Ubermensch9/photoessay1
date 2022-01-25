<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
메인 페이지 입니다.
인증된 회원 입니다.
<!--로그아웃--><!-- 회원정보 수정 -->
<form action="logout.do">
<table>
<tr>
	<td>
		어서오세요. ${logibUser.name}(${loginUser.userid})님
	</td>
	</tr>
	<tr>
	<td>
		<input type="submit" value="로그아웃"> &nbsp;&nbsp;
		<input type="button" value="회원정보변경" 
		onclick="location.href='memberUpdate.do?userid=${loginUser.userid}'">
		</td>
		</tr>
		
	
</table>

</form>

</body>
</html>