<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" 
crossorigin="anonymous" referrerpolicy="no-referrer" /> <!-- 아이디인풋 아이콘 -->
<meta charset="UTF-8">
<title>로그인</title>
<style>
main {
	padding: 20px;
}

.loginsection {
	width: 500px;
	heigth: 700px;
	margin: 150px auto;
	background-color: #white;
	padding: 50px;
}

.loginsection h1 {
	text-align: center;
}

.loginsection form {
	margin-top: 20px;
}

.loginsection div {
	margin-bottom: 10px;
}

.loginsection label {
	display: inline-block;
	width: 100px;
	font-weight: bold;
}

.loginsection input[type="text"], .loginsection input[type="password"] {
	border: none;
	border-bottom: 2px solid #A8A5A5;
	width: 70%;
	padding: 5px;
	margin-left: 50px;
}
/* 로그인 회원가입버튼 */
.loginsection button{
	width: 60%;
	padding: 20px;
	background-color: #D2CECE;
	color: #fff;
	border-radius: 10px;
	border: 0px;
	margin-top: 30px;
	margin-right: 22px;
}
.loginwindow button {
	cursor: pointer;
	background-color: #333;
}


.loginwindow button:hover {
	background-color: #333;
}



.loginwindownot {
	text-align: center;
	padding-top: 10px;
}

.loginwindow {
	text-align: center;
}


.loginsection input[type="text"]:hover, .loginsection input[type="password"]:hover
	{
	border-bottom-color: #555;
	width: 70%;
}

.loginwindow {
	padding-top: 10px;
}

.select {
	text-align: center;
}

.head1 {
	text-align: left;
}

.loginlogo {
	text-align: center;
}

.loginsection input[type="text"]:focus, .loginsection input[type="password"]:focus
	{
	border-bottom-color: #black;
	outline: none;
	width: 70%;
}

.idpwd {
	padding-left: 50px;
	padding-top: 100px;
}

.emailpwdwhere {
	padding-top: 30px;
	font-weight: bold;
	color : black;
}

.logindownmenu {
	text-align: center;
	margin-right: 4px;
	margin-top: 50px;
}

.logindownmenu a {
	text-decoration: none;
	color: black;
}

.logindownmenu a:hover {
	font-weight: bold;
}
.input-container {
    position: relative;
}

#searchidbox{
	border: 1px solid black;
	border-radius: 30px;
}

.icon {
    position: absolute;
    top: 8px;
    left: 310px; 
    transform: translateY(-50%);
}
#pwdhint{
text-align:center;
margin-left: 20%;
margin-bottom: 15px;
border: 1px solid #ccc;
color: #A8A5A5;
}
.hintinput{
text-align:center;

}
</style>

</head>
<%@ include file="../header/header1.jsp"%>
<%@ include file="../header/header2.jsp"%>

<body>
<div id="app">
	<header> </header>

	<main class="mainw">
	
		<section class="loginsection">
			<!-- <div class="loginlogo">
				<a href="main.do" class="logo"> <img src="../logoimg/logo.png"></a>
			</div> -->


			<!-- 로그인클릭후 이동파일 -->
			<div id="searchidbox">  <!-- 로그인 입력부분 테두리 -->
			
				<div class="emailpwdwhere">
					<span class="idpwd">아이디</span>
				</div>
				<div class="input-container">
					<input type="text" id="id"  autofocus @keyup.enter="fnEnter"  placeholder="아이디" ref="idInput">

				</div>
				<div>
					<div class="emailpwdwhere">
						<span class="idpwd" >이름</span> 
					</div>
					<div class="input-container">
					<input type="text" id="name" autofocus @keyup.enter="fnEnter"  placeholder="이름" ref="idInput">

				</div>
				<div>
					<div class="emailpwdwhere">
						<span class="idpwd" >비밀번호찾기 질문</span> 
					</div>
					<tr class="hintinput">
				<td>
					<select name="language" id="pwdhint" class="passwordhint" name="passwordhint" v-model="user.userPwdHint">
				<option disabled selected>비밀번호 찾기 질문</option>
				  <option value="1">가장 좋아하는 동물은?</option>
				  <option value="2">가장 좋아하는 음식은?</option>
				  <option value="3">가장 좋아하는 색은?</option>
				  <option value="4">가장 좋아하는 운동선수이름은?</option>
				  <option value="5">자신의 취미나 특기는?</option>
				  <option value="6">가장 좋아하는 운동은?</option>
				  <option value="7">가장 좋아하는 티비프로그램은?</option>
				  <option value="8">가장 좋아하는 책은?</option>
				  <option value="9">가장 좋아하는 영화는?</option>
					</select>
				</td>
			</tr>
					<div class="input-container">
					<input type="text" id="birth" autofocus @keyup.enter="fnEnter"  placeholder="비밀번호찾기 정답" ref="idInput">

				</div>

				</div>
			
			<div class="loginwindownot">
				<button class="loginbtn" @keyup.enter="fnEnter" onclick="openPopup('pwdresult.do')">비밀번호 찾기</button> 
			</div>
			<div class="logindownmenu">
				<ul>

					<span><a href="idsearch.do">아이디찾기</a> |</span>
					<span><a href="pwdsearch.do" style="font-weight: bold;">비밀번호찾기</a> |</span>
					<span><a href="join.do">회원가입</a></span>

				</ul>
			</div>
		</div>

			<!-- 아이디찾기 비밀번호찾기 회원가입 -->
			

		</section>

	</main>
	
</div>

</body>
<%@ include file="../header/footer.jsp"%>
</html>
<script>
function openPopup(url) {
    const popup = window.open(url, 'popupWindow', 'width=600,height=300,scrollbars=yes');
    popup.focus();
}
document.addEventListener("DOMContentLoaded", function() {
    const pwdHintSelect = document.getElementById("pwdhint");
    pwdHintSelect.selectedIndex = 0;
});
</script>
