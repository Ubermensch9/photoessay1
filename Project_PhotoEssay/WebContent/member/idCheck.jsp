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

<h2>아이디 중복확인</h2>

<form action="idCheck.do" method="get" name="frm">
아이디 <input type="text" name="userid" value="${userid}">
	<input type="submit" value="중복 체크">
	<br>	
메세지 : ${message}
<br>
결과 값 : ${result}
<br>

<c:if test="${result == 1}">
<!-- 이미 사용중인 아이디 입니다. -->
	<script type="text/javascript" src="script/member.js">
		opener.document.frm.userid.value="";
	</script>
</c:if>

<c:if test="${result == -1}">
<!-- 사용 가능한 아이디 입니다. -->
	<input type="button" value="사용" onclick="idOk()">
</c:if>

</form>


</body>
</html>
