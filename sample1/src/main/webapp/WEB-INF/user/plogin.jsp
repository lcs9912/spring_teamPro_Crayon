<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
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
.loginsection button {
	width: 60%;
	padding: 20px;
	background-color: #D2CECE;
	color: #fff;
	cursor: pointer;
	border-radius: 10px;
	border: 0px;
	margin-top: 30px;
	margin-right: 40px;
}

.loginsection button:hover {
	background-color: #333;
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

.idpwdwhere {
	padding-top: 30px;
	font-weight: bold;
	color : black;
}

.logindownmenu {
	text-align: center;
	margin-right: 80px;
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



.icon {
    position: absolute;
    top: 8px;
    left: 385px; 
    transform: translateY(-50%);
}
</style>

</head>
<%@ include file="../header.jsp"%>
<%@ include file="../header2.jsp"%>
<%@ include file="../headerlist.jsp"%>

<body>
<div id="app">
	<header> </header>

	<main class="mainw">

		<section class="loginsection">

			<!-- <div class="loginlogo">
				<a href="main.do" class="logo"> <img src="../logoimg/logo.png"></a>
			</div> -->


			<!-- 로그인클릭후 이동파일 -->
			

				<div class="idpwdwhere">
					<span class="idpwd" >아이디</span>
				</div>
				<div class="input-container">
					<input type="text" id="id" v-model="uId" @keyup.enter="fnEnter" autofocus placeholder="아이디" ref="idInput">
					<i class="fa-solid fa-user icon"></i>
				</div>
				<div v-if="flg">
					<div class="idpwdwhere">
						<span class="idpwd" >비밀번호</span>
					</div>
					<div  class="input-container">
						<input type="password" id="pwd" v-model="pwd" @keyup.enter="fnLogin" ref="pwdInput">
						<i class="fa-solid fa-lock icon"></i>
						
					</div>
				</div>
			
			<div class="loginwindow">
				<button class="loginbtn"  @click="fnLogin">로그인</button> 
			</div>
		<div class="logindownmenu">
				<ul>

					<span><a href="#">아이디찾기|</a></span>
					<span><a href="#">비밀번호찾기|</a></span>
					<span><a href="insertuser.do">회원가입</a></span>

				</ul>
			</div>
			</div>

			<!-- 아이디찾기 비밀번호찾기 회원가입 -->
			

		</section>

	</main>
	
</div>

</body>
<%@ include file="../footer.jsp"%>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		uId : "",
		pwd : "",
		flg : false, // 아이디 인풋 length
		
	},
	methods : {
		fnEnter : function(){
            var self = this;
           
          if(self.uId.length > 0){
        	  self.flg = true;
        	  this.$nextTick(() => {
                  this.$refs.pwdInput.focus();
              });
          }else{  
        	  self.flg = false;
          } 
           
        },
        fnLogin : function(){
			var self = this;
			var param = {};
			console.log("로그인 클릭됨");
			$.ajax({
                url : "/login.dox",
                dataType:"json",	
                type : "POST",
                data : param,
                success : function(data) { 
                	
                	
                }
            }); 
		},
        fnjoin : function(){
        	location.href ="/join.do";
        }
        
	},
	created : function() {
		var self = this;
		
	}
})
</script>
