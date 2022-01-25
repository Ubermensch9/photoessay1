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
  <script type="text/javascript" src="script/member.js"></script>
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
    <div im>
      <a href="join.do" target="_self"><img src="image/photo_Essay.png" alt="logo"/>
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
 
      <br>
	  <br>
	<h2 text style="color: gray" align="center">&nbsp;&nbsp;&nbsp;회원 가입</h2>
	<br>
	<h4 text style="color:red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;'*' 필수 입력 사항</h4>
<form action="join.do" method="post" name="frm">
	<!--<table>-->
	<br>
		<tr>
			<th style="color: blue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이&nbsp;&nbsp;름</th>&nbsp;&nbsp;&nbsp;
			<td><input type="text" name="name" size="20" align="center">*</td>
		</tr>
		<br>
		<br>
		<tr>
			<th text style="color:green">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이디</th>&nbsp;&nbsp;&nbsp;
			<td><input type="text" name="userid" size="20" align="center">*
			    <input type="button" value="중복체크" onclick="idCheck()">
			    </td>
		</tr>
		<br>
		<br>
		<tr>
			<th text style="color:darkred">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;비밀번호</th>
			<td><input type="password" name="pwd" size="20" align="center">*</td>
		</tr>
		<br>
		<br>
		<tr>
			<th text style="color:hotpink">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;닉네임</th>&nbsp;&nbsp;&nbsp;
			<td><input type="text" name="nick" size="20" align="center">*
				<input type="button" value="중복체크" onclick="nickCheck()">
			</td>
		</tr>
		<br>
		<br>
		<tr>
			<th text style="color:orange">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이메일&nbsp;&nbsp;&nbsp;</th>
			<td><input type="text" name="email" size="20" align="center">@
			<select name="url">
				            <option value="0" selected>선      택</option>
							<option value="naver.com">naver.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="nate.com">nate.com</option>
							<option value="gmail.com">gmail.com</option>
					        </select>*</td>
		</tr>
		
		
		<tr>
			<!--  <td>전화번호</td>
			<td><input type="text" name="phone" size="11"></td>
		</tr>-->
		<br>
		<br>
		<tr>
		
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;등&nbsp;&nbsp;&nbsp;급&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>
				<!--<input type="radio" name="admin" value="1"> 관리자-->
				<input type="radio" name="admin" value="0" 
						checked="checked"> 일반회원
			</td>
		</tr>
		<br>
		<br>
		<tr>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<th><input type="submit" value="확 인"></th>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<th><input type="reset" value="취 소"></th>
		</tr>	
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
	
      <ul text align="center">
        <li><a href="#">서비스 소개</a></li>
        <li><a href="#">이용정보처리방침</a></li>
        <li><a href="#">개인정보처리방침</a></li>	 
		  </footer> 
</div>
</html>
