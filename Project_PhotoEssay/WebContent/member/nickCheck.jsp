<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>

<h2>닉네임 중복확인</h2>

<form action="nickCheck.do" method="get" name="frm">
닉네임 <input type="text" name="nick" value="${nick}">
	<input type="submit" value="중복 체크">
	<br>	
메세지 : ${message}
<br>
결과 값 : ${result}
<br>

<c:if test="${result == 1}">
<!-- 이미 사용중인 닉네임 입니다. -->
	<script type="text/javascript" src="script/member.js">
		opener.document.frm.nick.value="";
	</script>
</c:if>

<c:if test="${result == -1}">
<!-- 사용 가능한 닉네임 입니다. -->
	<input type="button" value="사용" onclick="nickOk()">
</c:if>

</form>


</body>
</html>
