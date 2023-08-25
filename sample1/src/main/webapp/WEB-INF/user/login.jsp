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
	width:100%; height:700px;
}

.loginsection {
	width: 500px;
	heigth: 700px;
	margin: 0 auto;
	background-color: #white;
	padding: 50px;
}

.loginsection h1 {
		text-align: center; display: inline-block;
	    width: 300px; height: 50px; margin-bottom:30px;
        font-size: 50px; 
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
	border: none; border-bottom: 2px solid #A8A5A5;
	width: 100%; font-size:18px; outline:none;
	padding: 8px;
}
/* 로그인 회원가입버튼 */
.loginsection button{
	width: 60%;	padding: 20px; font-size:18px;
	background-color: #ccc; cursor: pointer;
	color: #fff; border-radius: 10px;
	border: 0px; margin-top: 30px; outline:none;
}
.loginsection button:hover {
	cursor: pointer;
	background-color: black;
}


 .loginwindownot {
	text-align: center;
	padding-top: 10px;
}

.loginwindow {
	text-align: center;
}

.loginwindow {
	padding-top: 10px;
}

.loginlogo {
	text-align: center;
}

/* .loginsection input[type="text"]:focus, .loginsection input[type="password"]:focus
	{
	border-bottom-color: #black;
	outline: none;
	width: 70%;
} */

.idpwd {
	padding-left: 50px;
	padding-top: 100px;
}

.idpwdwhere {
	padding:20px 0;
	font-weight: bold;
	color : black;
}

.logindownmenu {
	text-align: center;
	margin-top: 50px;
}

.logindownmenu a:hover {
	font-weight: bold; 
}
.input-container {
    position: relative;
}

#loginbox{
	border: 0px solid #ccc;
	border-radius: 30px;	
}

.icon {
    position: absolute;
    top: 10px;
    left: 400px; 
    transform: translateY(-50%);
}
.fa-square-caret-down{
	cursor: pointer;
	margin:20px 0 20px 400px;	
	}
	

</style>

</head>
<%@ include file="../header/shopheader.jsp"%>

<body>
<div id="app">
	<main class="mainw">
		<section class="loginsection">
			 <div class="loginlogo">
				<h1><a href="mainslider.do">
                       CrayoN
                    </a>
                </h1>            
			</div>
			<!-- 로그인클릭후 이동파일 -->
			<div id="loginbox">  <!-- 로그인 입력부분 테두리 -->
			
				<div class="idpwdwhere">
					아이디
				</div>
				<div class="input-container">
					<input type="text" id="id" v-model="uId" autofocus @keyup.enter="fnEnter" placeholder="아이디" ref="idInput">				
					<i class="fa-solid fa-user icon"></i>
					<i v-if="!idflg" class="fa-solid fa-square-caret-down" @click="fnEnter"></i>
				</div>				
				<div v-if="idflg">
					<div class="idpwdwhere">
						비밀번호 
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
				<p>
					<span><a href="idsearch.do">아이디찾기 |</a></span>
					<span><a href="pwdsearch.do">비밀번호찾기 |</a></span>
					<span><a href="join.do">회원가입</a></span>
				</p>
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
                		location.href ="/mainslider.do";
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
