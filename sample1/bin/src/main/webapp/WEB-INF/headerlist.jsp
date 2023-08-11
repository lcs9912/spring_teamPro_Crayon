<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
header {
	color: #fff;
	padding: 10px, 20px;
}


nav li {
	padding-top: 20px;
	padding-left: 35px;
}

nav ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	font-weight: bold;
}

nav ul li {
	display: inline-block;
	margin-right: 10px;
}

nav ul li a {
	text-align: right;
	color: black;
	text-decoration: none;
}



.signupbtn a {
	float: right;
	font-weight: bold;
}




.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #black;
}

.headerKindList li {
	position: relative;
}

.headerKindList li .dropdown-content {
	display: none;
	position: absolute;
	background-color: #white;
	min-width: 160px;
	box-shadow: 0px 5px 12px 0px rgba(0, 0, 0, 0.2);
	left: -30px;
}
/* 5.악세사리 7.고객센터의 출력되는 리스트 위치 */
.headerKindList li:nth-child(5) .dropdown-content, .headerKindList li:nth-child(7) .dropdown-content
	{
	left: auto;
	right: -50px;
}

.headerKindList li:hover .dropdown-content {
	display: block;
}

.dropdown-content a {
	color: black;
	padding: 12px 0px;
	text-decoration: none;
	display: block;
	text-align: center;
}

/* 리스트 출력할때 커서를 올렸을때 색이 바뀌는 코드 */
.dropdown-content a:hover {
	background-color: #black;
	color: #D24C75;
}
/* 리스트 출력할때 메뉴 색깔코드 */
.headerKindList li:hover>a {
	color: #D24C75;
}

.headerKindList li:hover .submenu {
	display: block;
}

.dropdown-content.notice-content {
	left: 0;
	top: 100%;
}

/* 헤더 밑 밑줄 */
  .headerEnd:after {
    content: "";
    display: block;
    width: 100%;
    height: 1px;
    background-color: #ccc; 
    margin: 20px 0; 
    margin-top : 30px;
  }
</style>
</head>

<header>
	<nav>
		<div>
			<ul class="headerKindList">
				<!-- 헤더 종류별 리스트 -->

				<li><a href="#">랭킹</a></li>

				<li><a href="#">남성</a>
					<div class="dropdown-content">
						<a href="#">상의</a> <a href="#">하의</a> <a href="#">아우터</a> <a
							href="#">신발</a>
					</div></li>

				<li><a href="#">여성</a>
					<div class="dropdown-content">
						<a href="#">상의</a> <a href="#">하의</a> <a href="#">아우터</a> <a
							href="#">신발</a>
					</div></li>

				<li><a href="#">신발</a>
					<div class="dropdown-content">
						<span class="drct-ac"> <a href="#">스니커즈</a> <a href="#">부츠</a>
							<a href="#">플랫</a> <a href="#">로퍼</a>
						</span>
					</div></li>

				<li><a href="#">악세사리</a>
					<div class="dropdown-content">
						<a href="#">가방</a> <a href="#">지갑</a> <a href="#">시계</a> <a
							href="#">모자</a>
					</div></li>

				<li><a href="#">리뷰</a></li>
				<li><a href="#">고객센터</a>
					<div class="dropdown-content">
						<!-- 고객센터 -->
						<a href="#">공지사항</a> <a href="#">자주묻는 질문</a> <a href="#">검수기준</a>
						<a href="#">1:1문의</a>
					</div></li>

			</ul>
		</div>
	</nav>
</header>
<div class="headerEnd"></div>
<body>
</body>
</html>