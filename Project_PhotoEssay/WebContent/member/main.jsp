<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
  <link rel="stylesheet" type="text/css" href="css/headerfooter.css" />
  <!--<link rel="stylesheet" type="text/css" href="css/search.css" />-->
  <link rel="stylesheet" type="text/css" href="css/content.css" />
  <!--<link rel="stylesheet" type="text/css" href="css/회원가입.css" />	-->
  <link rel="stylesheet" type="text/css" href="css/default.css" />
  <link rel="stylesheet" type="text/css" href="css/reset.css" />
  <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/essay.min.js"></script>
  <script src="js/login.min.js"></script>
</head>

<body>

  <!--header-->
  <header class="header cfixed">
    <div class="Wrap">
      <!-- 헤더1-div1 -->
      <div>

		<a href="index.html" target="_self">
		<img src="image/photo_Essay.png" style="float: left; width: 100px; height: 100px;" />
			</div>
			<br>
			<br>
		  <div>
        <font size="+4" style="color: #062896"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PhotoEssay</strong></font><br>
          <font size="+2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  &nbsp;&nbsp;&nbsp;- 세상 사는 이야기 -</font>
		  </div>
        </a>
      </div>
    </div>
    <!--<div class="topbar" style="background-color: skyblue">
      <!-- 헤더1-div2 -->
      <!--<ul>
        <!--<li><a href="#">MyPage</a></li>
        <li><a href="#">Logout</a></li>
      </ul>
    </div>-->
  </header>
<div id="wrapper" style="display:flex; ">
    <!-- 이 구간에 본문 작성 -->
    <div class="sidebar" style="flex:0.3">
		
		<!--<div class="masthead clearfix">-->
			  
        
      <!--<i class='bx bx-menu' id="button"></i>-->
      <ul class="nav_list">
        <!--<li>
          <!--<a href="#" <i class='bx bx-search'></i>
            <input type="text" placeholder="Search...">
          </a>-->
          <!--<span class="links_name">homepage</span>
        </li>-->
        <li>
	
          <a href="index.do"> <i class='bx bx-home'></i>
            <span class="link_name">Homepage</span>
		  </a>
          <!--<span class="links_name">homepage</span> -->
        </li>
        
	  
	  <li>
		  
          <a href="notice.html"> <i class='bx bx-import'></i>
            <span class="link_name">Notice</span>
	      </a>
          <!--<span class="links_name">homepage</span> -->
        </li>
        <li>
          <a href="travel.html"> <i class='bx bxs-map'></i>
            <span class="link_name">Travel</span>
          </a>
          <!--<span class="links_name">homepage</span> -->
        </li>
        <li>
          <a href="baby.html"> <i class='bx bxs-baby-carriage'></i>
            <span class="link_name">Baby</span>
          </a>
          <!--<span class="links_name">homepage</span> -->
        </li>
        <li>
          <a href="life.html"> <i class='bx bxs-sun'></i>
            <span class="links_name">Life</span>
          </a>
          <!--<span class="links_name">homepage</span> -->
        </li>
        <li>
          <a href="pet.html"> <i class='bx bx-bone'></i>
            <span class="link_name">Pet</span>
          </a>
          <!--<span class="links_name">homepage</span> -->
        </li>
		<li>
			<a href="mypage.html">
			<span class="mypage.html" style="color: hotpink">Mypage</a> 
            <a href="index.html">
			<span class="index.html" style="color:aqua">Logout</a> 
          
        </li>
    </div>

    <!--<div class="sidebar-right">-->
      <div class="like-content">
      <!--<hr class="divider">-->
		  <!--<br>
        <font size="+3"> 인기 게시물 </font><br>
      <hr class="divider"> 
		<br>
        <div id="wrap">
          <div class="img-with-text1">
            <div class="box_content1">
			  <div class="box_content1_img1">
	    		<div>
					<article class="slider">
				    <a href="image/1.png" target="_self">
						<img src="image/1.png" width="1080" height="1440" alt="best_1"/>
				    <a href="image/2.png" target="_self">
						<img src="image/2.png" width="1080" height="1440" alt="best_2"/>
					<a href="image/3.png" target="_self">
					<img src="image/3.png" alt="best_3" width="1080" height="1440"/></article>
						</a>
						</div>
						</br>
						
				<!--<div>
				<section class="promotion-section">
                <div class="container">
                    <li>
                        <a href="image/1.png" target="_self"><img src="image/1.png" alt=""/>
                            <div class="info">
								
								<h1><strong>Best_1</strong></h1>							
								<sh_b><h1><span></span></h1></sh_b>
                                
                            </div>
                            
                    </li>
                            <!--<img src="image/1.png" alt="best_1"/>
							<a href="image/1.png" target="_self"></a>-->
			     
				<!--<img src="img/1.png" alt="인기게시물 1"/></a>
                <!--<img src='img/1.png' alt="" class="img-1">-->
   
               <!--<div class="box_content1_text1">-->
          
				  <!--<p>인기 게시물 1</p>-->
             <!-- </div>
            </div>
            <div class="box_content2">
              <div class="box_content2_img1">
                <img src='img/2.png' alt="" class="img-2">
              </div>
              <div class="box_content2_text1">
                <!--<p>인기 게시물 2</p>
              </div>
            </div>
            <div class="box_content3">
              <div class="box_content3_img1">
                <img src='img/3.png' alt="" class="img-3">
              </div>
              <div class="box_content3_text1">
                <p>인기 게시물 3</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="content-gally">
      <hr>-->
		 <hr class="divider">
            <section class="post-section">
              <div class="container">
                <font size="+2" style="color: darkolivegreen">인기 게시물</font>
                 <br>
				  <br>
				  <br>
				  <ul class="blog-list">
					  <li> 
					  <a href="image/1.png" style="width: 30%;" target="_self">
	                    <img src="image/1.png" alt="" style="width:25%;"/>
						<!--<br><font size="+1">인기 게시물_1</font>-->
						 	
						<a href="image/2.png" target="_self">
	                    <img src="image/2.png" alt="" style="width:25%;"/>
							
						<a href="image/3.png" target="_self">
	                    <img src="image/3.png" alt="" style="width:25%;"/>
							
						<!--<a href="image/태종대.jpg" target="_self"/>
	                    <img src="image/태종대.jpg" alt="" style="width:25%;"/>-->
							
						</li>	
							
							
				<hr class="divider">
            <section class="post-section">
              <div class="container">
                <font size="+2" style="color: darkolivegreen">신규 게시물</font>	
				  
				  <br>
				  <br>
				  <br>
				  <ul class="blog-list">
					  <li> 
					 
						<a href="image/태종대.jpg" target="_self"/>
	                    <img src="image/태종대.jpg" alt="" style="width:25%;"/>
						  
						<a href="image/태종대.jpg" target="_self"/>
	                    <img src="image/태종대.jpg" alt="" style="width:25%;"/>  
							
						</li>	
							
                      <!--<li>
                          <a href="image/1.png"><img src="image/1.png" alt="best_1" style="width:25%;/></a>
                          <a href=""><font size="+1" style="color: #575757">
						  <br>인기 게시물_1</font></a></br>
                          </i>
				  
                         
						 <a href="image/2.png"><img src="image/2.png" alt="best_2" style="width:25%;/></a>                    
                         <a href=""><font size="+1" style="color: #575757">
						 <br>인기 게시물_2</font></a></br>
                      <!--</li>-->
                      
					  <!--<li>
						  <a href="image/3.png"><img src="image/3.png" alt="best_3" style="width:30%;/></a>
							  <a href=""><font size="+1" style="color: #575757">
								  <br>인기 게시물_3</h3></a></br>
                      
                      </li>
                  </ul>-->
                </div>
            </section>
		<br>
	    <br>
		<hr class="divider"> 				
        <br>
		<font size="+3"> 갤러리 </font>

        <div class="img-with-text2" style="">
            <!--<hr>-->
          <div class="new_box_content">
            <div class="new_box_content_img">
              <img src='img/1.png' alt="" class="new_box_img">
            </div>
            <div class="new_box_content_text">
              <p>Travel </p>
            </div>
          </div>
            <br>
			<!--<hr>-->
          <div class="new_box_content">
            <div class="new_box_content_img">
              <img src='img/2.png' alt="" class="new_box_img">
            </div>
            <div class="new_box_content_text">
              <p>Baby</p>
            </div>
          </div>
            <!--<hr>-->
          <div class="new_box_content">
            <div class="new_box_content_img">
              <img src='img/3.png' alt="" class="new_box_img">
            </div>
            <div class="new_box_content_text">
              <p>Life</p>
            </div>
          </div>
            <!--<hr>-->
          <div class="new_box_content">
            <div class="new_box_content_img">
              <img src='img/4.png' alt="" class="new_box_img">
            </div>
            <div class="new_box_content_text">
              <p>Pet</p>
          </div>
            <!--<hr>
			  
          <div class="new_box_content">
            <div class="new_box_content_img">
              <img src='img/5.png' alt="" class="new_box_img">
            </div>
            <div class="new_box_content_text">
              <p>갤러리 이미지 5</p>
            </div>
          </div>
            <hr>
          <div class="new_box_content">
            <div class="new_box_content_img">
              <img src='img/6.png' alt="" class="new_box_img">
            </div>
            <div class="new_box_content_text">
              <p>갤러리 이미지 6</p>
            </div>
          </div>>

      </div>
      <!--<div class="section3">
        <hr>
		  <br>
        <!--<div class="list_paging">-->
              <!--<ul>
                  <li><a href="#">&lt;&lt;</a></li>
                  <li><a href="#">&lt;</a></li>
                  <li><a href="#"><strong style="color: red;">1</strong></a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#">6</a></li>
                  <li><a href="#">7</a></li>
                  <li><a href="#">8</a></li>
                  <li><a href="#">9</a></li>
                  <li><a href="#">10</a></li>
                  <li><a href="#">&gt;</a></li>
                  <li><a href="#">&gt;&gt;</a></li>
              </ul>
        </div>
          <div class="searching2">
              <table>
                  <tr>
                      <td>
                        <input type="button" class="postbutton"
                          <select class="selectBox" name="searchField">
                              <option>전체</option>
                              <option>제목</option>
                              <option>내용</option>
                          </select>
                      </td>
                      <td>
                          <input type="text" class="inputBox" placeholder="" name="searchText" maxlength="100">
                      </td>
                      <td>
                          <button type="submit" class="buttonBox">검색</button>
                      </td>
                  </tr>
              </table>
          </div>
      </div>

    </div>-->

</body>


</div>
	</div>
	  </div>
      </div>
	  </div>
<!-- Footer-->
<footer>
    <div class="footer">
		<br>
                  <p class="copyright">Address. 서울특별시 영등포구 영중로8길 6 6층|TEL. 02-3667-3688|E-Mail.humanec@naver.com|</br> 
		                           <br>CEO. 계현진 권욱현 김기역 김성환 김소진 김태규</br>
	                               <br>© 2022.PhotoEssay(세상 사는 이야기).All Rights Reserved.</br>
	
      <ul class="">
        <li><a href="#">서비스 소개</a></li>
        <li><a href="#">이용정보처리방침</a></li>
        <li><a href="#">개인정보처리방침</a></li>
		  
		  </footer>




</html>
