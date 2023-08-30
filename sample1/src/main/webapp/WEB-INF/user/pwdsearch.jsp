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
	width:100%; height:800px;
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
	background-color: #333;
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

.select {
	text-align: center;
}

.head1 {
	text-align: left;
}

.loginlogo {
	text-align: center;
}

.idpwd {
	padding-left: 50px;
	padding-top: 100px;
}

.emailpwdwhere {
	padding-top: 30px; font-weight: bold;
	
}

.logindownmenu {
	text-align: center;
	margin-right: 4px;
	margin-top: 50px;
}


.logindownmenu a:hover {
	font-weight: bold;
}
.input-container {
    position: relative;
}

#searchidbox{
	width:100%
}

.icon {
    position: absolute;
    top: 8px;
    left: 310px; 
    transform: translateY(-50%);
}
#pwdhint{
	text-align:center; margin-bottom: 15px; padding:2px;
	margin-left:43px; border: 1px solid #ccc; border-radius:5px;
	color: #555;
}
/* 팝업 레이어 */
						
				.popup-overlay {
					display: none; position: absolute;
				  	top: 0; left: 0; width: 100%; height: 1600px;
				   	background-color: rgba(51,51,51,0.3);
				  	z-index: 3000;
				} 
				.content {
				    width:500px; border-radius:15px; padding-bottom:40px;
				    margin:10% auto; background:#fff;
				}		
				
				.title{
				    min-height: 40px; margin-bottom:10px; border-radius:15px 15px 0 0;
				    color: white; background-color: #ccc; padding: 10px 15px;
				    box-sizing: border-box; font-weight: bold; 
				    text-align: center; position:relative; 
				}
					
						.fa-x{position: absolute; top: 15px; right: 15px; cursor: pointer;}
						/*이메일변경 CSS 시작*/
						.nowemail {width:500px; height:50px; margin-top:30px; font-size:16px;}
						.nowemail h3{width:500px; height:50px; text-align:center;}
						.emailinput{width: 400px; height : 70px;margin-left:60px; border-bottom:1px solid #ccc;}
							.emailinput input{width: 300px; height : 60px; outline:none; border:0px solid; font-size:16px;}
							.emailpwd{background-color:white; border : 1px solid #a2a2a2; font-size:13px;
								width : 90px; height : 25px; cursor: pointer; margin-top:10px; border-radius:5px;
							} 
							.hiddenmessege {color:red; width:500px; text-align:center; margin:20px 0;}
								
							#submitPopup {
							    border-radius: 15px; padding: 10px 30px; margin:20px 175px 0 175px;
							    border: 1px solid #aaa; width: 150px;
							    color: white; background-color: black;
							    font-weight: bold; cursor: pointer;			    			    
							}
							#submitPopup:hover {color:#333; background:#fff; border:1px solid #ccc;}
							/*이메일변경 CSS 종료*/
				
				.passwordckwrap {
					width:500px; text-align:center;
					}
					.passwordckwrap input{display:inline-block; width:300px; height:40px; outline:none; 
									border:0 solid; border-bottom:1px solid #ccc; margin-top:10px;}
					.passwordckwrap button{border-radius: 8px; margin:10px 0 0 10px;
							    border: 1px solid #aaa; width: 70px; height:30px; color: white; background-color: black;
							    font-weight: bold; cursor: pointer;	}	
							    .passwordckwrap button:hover {color:#333; background:#fff; border:1px solid #ccc;}
					.passwordckwrap select {width:225px; height:40px; outline:none; margin:30px 10px; border:0px solid; border-bottom:1px solid #ccc;}
					
					.pwdquestion {font-size:12px; margin-left:10px;}
						.passwordckwrap>#newpassword{text-align:left;}
						.passwordckwrap>#newpassword>input{margin-left:58px;}
				
				.phonewrap {
					width:500px; text-align:left;
				}		
					.phonewrap input{
						display:inline-block; width:350px; height:40px; outline:none; margin-left:50px;
									border:0 solid; border-bottom:1px solid #ccc; margin-top:10px;
					}
					.phonewrap button{border-radius: 8px; margin:10px 0 0 10px;
							    border: 1px solid #aaa; width: 70px; height:30px; color: white; background-color: black;
							    font-weight: bold; cursor: pointer;					
					}
						.phonewrap button:hover {color:#333; background:#fff; border:1px solid #ccc;}
						#phonePopup {border-radius: 15px; margin:20px 0 10px 175px;
							    border: 1px solid #aaa; width: 150px; height:40px; color: white; background-color: black;
							    font-weight: bold; cursor: pointer;				
						}
						#phonePopup:hover {color:#333; background:#fff; border:1px solid #ccc;}
						#memberPopup{border-radius: 15px; margin:20px 0 10px 175px;
							    border: 1px solid #aaa; width: 150px; height:40px; color: white; background-color: black;
							    font-weight: bold; cursor: pointer;}
						#memberPopup:hover {color:#333; background:#fff; border:1px solid #ccc;}

</style>

</head>
<%@ include file="../header/shopheader.jsp"%>
<body>
<div id="app">
	<header> </header>

	<main class="mainw">
	
		<section class="loginsection">
			<div class="loginlogo">
				<h1>
					<a href="login.do">CrayoN</a>
                </h1>    
			</div>

			<!-- 로그인클릭후 이동파일 -->
			<div id="searchidbox">  <!-- 로그인 입력부분 테두리 -->
			
				<div class="emailpwdwhere">
					아이디
				</div>
				<div class="input-container">
					<input type="text" id="id"  autofocus v-model="userId"  placeholder="아이디" ref="idInput">
				</div>
				<div>
					<div class="emailpwdwhere">
						이름
					</div>
					<div class="input-container">
					<input type="text" id="name" autofocus v-model="userName"  placeholder="이름" ref="idInput">

				</div>
				<div>
					<div class="emailpwdwhere">
						비밀번호찾기 질문
						<select name="language" id="pwdhint" class="passwordhint" name="passwordhint" v-model="userPwdHint">
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
					</div>
					<div class="input-container">
					<input type="text" id="birth" autofocus v-model="pwdAnswer"  placeholder="비밀번호찾기 정답" ref="idInput">

				</div>

				</div>
			
			<div class="loginwindownot">
				<button class="loginbtn"  @click="fnPwdCheck">비밀번호 찾기</button> 
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

	</main><!-- 레이어 팝업 -->
	<div class="popup popup-overlay" id="popupOverlay" >
		        <div class="content">
		        <div class="title"><h3>변경</h3><i class="fa-solid fa-x" id="closePopup"></i></div>
			        <!-- 이메일 변경 -->
											     		            
		                <div class="nowemail"><h3>회원님의 비밀번호입니다</h3></div>
		                <div class="emailinput">비밀번호 : {{userPwd}}</div>
		                	            	 
		    		
		        
		    
	       </div>
	        </div> <!-- 레이어 팝업 -->	
	
</div>

</body>
<%@ include file="../header/footer.jsp"%>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		list : [],
		userId : "",
		userName : "",
		userPwdHint : "",
		pwdAnswer : "",
		
		userPwd : "",
	},// data
	methods : {
		fnPwdCheck : function(){
            var self = this;
            var nparmap = {uId : self.userId, uName : self.userName, pwdHint : self.userPwdHint, pwdAnswer : self.pwdAnswer};
            $.ajax({
                url : "/userPwdSearch.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.info = data.info;
                	if(data.info != "" && data.info != null){
                		self.userPwd = data.info.userPwd;
                		
                		self.fnpopup();
                        
                	}else{
                		alert("다시 확인해주세요");
                	};
                	
                }
            }); 
        },
    	 // 레이어 팝업창 띄우기
		fnpopup : function(){
			var self = this;
			document.getElementById("popupOverlay").style.display = "block";
		},
	}, // methods
	created : function() {
		var self = this;
		
	}// created
});
//레이어 팝업창 닫기
document.getElementById("closePopup").addEventListener("click", function() {
document.getElementById("popupOverlay").style.display = "none";
});

</script>
