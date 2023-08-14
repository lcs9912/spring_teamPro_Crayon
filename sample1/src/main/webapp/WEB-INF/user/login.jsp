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

.idpwdwhere {
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

#loginbox{
	border: 1px solid black;
	border-radius: 30px;
}

.icon {
    position: absolute;
    top: 8px;
    left: 310px; 
    transform: translateY(-50%);
}

</style>

</head>
<%@ include file="../header1.jsp"%>
<%@ include file="../header2.jsp"%>

<body>
<div id="app">
	<header> </header>

	<main class="mainw">
	
		<section class="loginsection">
			<!-- <div class="loginlogo">
				<a href="main.do" class="logo"> <img src="../logoimg/logo.png"></a>
			</div> -->


			<!-- 로그인클릭후 이동파일 -->
			<div id="loginbox">  <!-- 로그인 입력부분 테두리 -->
			
				<div class="idpwdwhere">
					<span class="idpwd" >아이디</span>
				</div>
				<div class="input-container">
					<input type="text" id="id" v-model="uId" autofocus @keyup.enter="fnEnter"  placeholder="아이디" ref="idInput">
					<i class="fa-solid fa-user icon"></i>
				</div>
				<div v-if="idflg">
					<div class="idpwdwhere">
						<span class="idpwd" >비밀번호</span> 
					</div>
					<div  class="input-container">
						<input type="password" id="pwd" v-model="pwd" @keyup="fnbut" @keyup.enter="fnLogin" ref="pwdInput">
						<i class="fa-solid fa-lock icon"></i>
						
					</div>
				</div>
			
			<div class="loginwindownot" v-if="!pwdflg">
				<button class="loginbtn" >로그인</button> 
			</div>
			<div class="loginwindow" v-else>
				<button class="loginbtn"  @click="fnLogin">로그인</button> 
			</div>
			<div class="logindownmenu">
				<ul>

					<span><a href="#">아이디찾기 |</a></span>
					<span><a href="#">비밀번호찾기 |</a></span>
					<span><a href="join.do">회원가입</a></span>

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
		idflg : false, // 아이디 인풋 length
		pwdflg : false, // 아이디 인풋 length
		
	},
	methods : {
		fnEnter : function(){
            var self = this;
           
          if(self.uId.length > 0){
        	  self.idflg = true;
        	  this.$nextTick(() => {
                  this.$refs.pwdInput.focus();
              });
          }else{  
        	  self.idflg = false;
          } 
           
        },
        fnLogin : function(){
			var self = this;
			var param = {uId : self.uId, pwd : self.pwd};
			$.ajax({
                url : "/login.dox",
                dataType:"json",	
                type : "POST",
                data : param,
                success : function(data) { 
                	if(data.success){ 
                		alert(data.message);
                		location.href ="/mypage.do";
                	} else {
                		alert(data.message);
                		self.$nextTick(() => {
                            self.$refs.pwdInput.focus();
                        });
                	}
                	
                }
            }); 
		},
		
		fnbut : function(){
			var self = this;
			if(self.pwd.length>0){
				self.pwdflg = true;
			}else{
				self.pwdflg = false;
			}
		},
        fnjoin : function(){
        	location.href ="/join.do";
        },
        
	},
	created : function() {
		var self = this;
		
	}
})
</script>
