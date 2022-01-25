<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
  <title>PhotoEssay login</title>
  <link rel="short icon" href="img/photo_Essay.png">
  <link  rel="stylesheet" type= "text/css" href="css/회원가입.css">
  <link rel="stylesheet" type="text/css" href="css/default.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/essay.min.js"></script>
  <script src="js/login.min.js"></script>
</head>

<body>
  <header>
    <div>
      <a href="Index.jsp" target="_self">
      <img src="image/photo_Essay.png" alt="logo" />
		  <br></br>
		  <br></br>
	      
      <!--<h1 class="sec-tit-sm"><strong>
            <sh>Photo Essay</sh>
          </strong></h1>-->
      <h1 text size=60px><strong>PhotoEssay</strong></h1>
      </a>
    </div>
	</header>
    <div class="info">
      <!--<ul>
        <li><a href="#">Join</a></li>
        <li><a href="#">Login</a></li>
      </ul>-->
    </div>
	<div id="wrap">
    <header class="header"> </header>
<!--<br>--> 
<!--<hr class="divider">-->

  <div id="wrapper">
    <!-- content-->
  <div id="content">
  <div class="centered">
      <br>
	  <br>
	  &nbsp;&nbsp;&nbsp;<h2 text style="color: gray" align="center">&nbsp;&nbsp;&nbsp;&nbsp;로그인</h2>
<form action="login.do" method="post", name="frm">
	<!--<table>-->
	<br>
	<tr>
		
		<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이디</th>
		<td><input type="text" name="userid" value="${userid}"></td>
		</tr>
		<br>
		<br>
		<tr>
		<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;암&nbsp;&nbsp;호</th>
		<td><input type="password" name="pwd" size="20"></td>
		</tr>
		<br>
		<tr>
		<br>
		<td colspan="2" align="center">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="submit" value="로그인" onclick="return loginCheck()">&nbsp;&nbsp;
			<input type="reset" value="취소">&nbsp;&nbsp; 
			<input type="button" value="회원가입" onclick="location.href='join.do'">
			</td>
		</tr></br>
	<!--</table>-->

</form>
        
	  </div>
	  </div>
      </div>
	  </div>
	<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

</body>
  
<footer>
    <div class="footer">
                  <p class="copyright">Address. 서울특별시 영등포구 영중로8길 6 6층|TEL. 02-3667-3688|E-Mail.humanec@naver.com|</br> 
		                           <br>CEO. 계현진 권욱현 김기역 김성환 김소진 김태규</br>
	                               <br>© 2022.PhotoEssay(세상 사는 이야기).All Rights Reserved.</br>
	
      <ul class="">
        <li><a href="#">서비스 소개</a></li>
        <li><a href="#">이용정보처리방침</a></li>
        <li><a href="#">개인정보처리방침</a></li>	 
		  </footer> 
</div>
</html>
