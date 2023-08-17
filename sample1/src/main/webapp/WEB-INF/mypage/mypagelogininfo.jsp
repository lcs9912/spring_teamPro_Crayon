<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 로그인정보 페이지</title>

<style>
	* {margin:0; padding:0;}

	li {
		list-style:none;
		}
	
	
	a {	
		text-decoration:none;
		color: inherit;
		}
	
	.mypagewrap {
		width:1200px; margin:0 auto;
		}
	.myinfonav {
		float:left; width:200px; color:#000;
		}
		
	.myinfo h2{
			margin-bottom:20px;
		}	
	
		
	.myinfo h3{
			margin:30px 0;
		}	
		
	.myinfo ul li{
		margin:10px 0;
		}	
	
	.editlogininfo{
		width:1000px; float:left;
		}        
	.edithead {
		padding-bottom:15px; border-bottom:3px solid #000;
		}
	.loginedit {
		width:480px; padding-top:10px;
	}

		.editinner h4 {
			margin-bottom:25px; margin-top:30px;
		}
		.editebox {
			width:480px; height:55px; border-bottom: 1px solid #e9e9e9;
		}

		.editebox h6 {
			color:#ccc; margin-top:25px;
		}

		.editebox .editbtn{
			border:1px solid #e9e9e9; background-color: #fff; border-radius: 10px; width:50px; height:30px;	
			color:#777; font-size: 12px;	
		}
		.editinput {
			border:0 solid; font-size:20px; margin-top: 20px; width:421px;
		}

		.agreeelement {
			margin-top:30px; height: 50px; margin-top:50px;
		}
			.agreeelement p {
				display: inline-block; width:250px; color:#555;
			}
			.agreeelement div{
				display: inline-block; color:#555;
			}
			.agreeelement div label{
				margin:0 10px 0 20px;
			}

			.resignbtn {
				border:0px solid #e9e9e9; background-color: #fff; border-radius: 10px; width:70px; height:30px;	
				color:#777; font-size: 15px; margin-top: 30px; text-decoration-line: underline;
			}	
			.spanBut button{
				float: right;
				cursor: pointer;
			}
			
/* 팝업 레이어 */
.popup-overlay {
	display: none;
   	position: fixed;
  	top: 0;
  	left: 0;
  	width: 50%;
    height: 50%;
   	background-color: rgba(0, 0, 0, 0.5);
  	z-index: 1000;
} 

.popup-content {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
}

#popupTitleBox{
	background-color: black;
}

#popupTitleBox i{
	cursor: pointer;
	color: white;
}
#popupTitle{
	color: white;
	
	font-weight: bold;
}
html, body{
    width: 100%;
    height: 100%;
    padding: 0;
    margin: 0;
    
}
body{
    /* background-image: url('./bg.jpg'); */ /* 배경이미지 */
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    
    
}
body.dimmed::before{
    content: '';
    position: fixed;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
    background-color: rgba(0, 0, 0, 0.5); /* 배경을 불투명하게 만듭니다 */
    z-index: 999; /* 레이어 팝업보다 뒤에 위치하도록 z-index 조정 */    
    
}
.popup {
    z-index: 1;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    min-width: 300px;
    max-width: 600px;
    background-color: #fff; 
    border-radius: 15px;
    box-shadow: 0 2px 55px -25px rgb(0 0 0 / 100%);
    
    
}
.popup > .title{
    border-radius: 15px 15px 0 0;
    min-height: 40px;
    color: white;
    background-color: black;
    padding: 10px 15px;
    box-sizing: border-box;
    font-weight: bold;
    text-align: center;
}
.popup > .content {
    padding: 20px;
    box-sizing: border-box;
}
.popup > .cmd {
    bottom: 0;
    min-height: 40px;
    padding: 15px 15px;
    box-sizing: border-box;
    border-radius: 0 0 15px 15px;
    min-height: 40px;
    text-align: right;
    width: 300px;
 
}
.popup > .cmd button {
    border-radius: 8px;
    padding: 5px 10px;
    border: 1px solid #aaa;
    width: 80px;
    color: white;
    background-color: black;
    font-weight: bold;
    cursor: pointer;
   position: relative;
   top : 230px;
   left: 50px;
}
.popup > .cmd button:hover {
    color: #fff;
    background-color: #000;
    border-color: #000;
}
.title i{
	cursor: pointer;
}
.fa-x{
	position: absolute;
	top: 10px;
	right: 10px;
}

</style>

</head>
<%@ include file="../header/header1.jsp"%>
<%@ include file="../header/header2.jsp"%>
<body>
	<div id="app">
	<div class="mypagewrap">
		<nav class="myinfonav">
		<div class="myinfo">
			<h2><a href="mypage.do">마이 페이지</a></h2>
			<h3>쇼핑 정보</h3>
			<ul>
				<li><a href="mypagebuylist.do">구매 내역</a></li>
				<li><a href="mypageselllist.do">판매 내역</a></li>
				<li><a href="#">보관 판매</a></li>
				<li><a href="#">관심 상품</a></li>
			</ul>
		</div>
		<div class="myinfo">
			<h3>내 정보</h3>
			<ul>
				<li><a href="mypagelogininfo.do">로그인 정보</a></li>
				<li><a href="#">프로필 관리</a></li>
				<li><a href="#">주소록</a></li>
				<li><a href="#">결제 정보</a></li>
				<li><a href="#">판매 정산 계좌</a></li>
				<li><a href="#">현금영수증 정보</a></li>
				<li><a href="#">포인트</a></li>
			</ul>
		</div>
		</nav>
		<div class="editlogininfo">
			<div class="edithead">
				<h2>로그인 정보</h2>
			</div>
				<div class="loginedit">				
					<div class="editinner">
						<h4>내 계정</h4>
						<div class="editebox spanBut">
							<h6>이메일 주소</h6>
							
								<span class="editinput">{{masked.maskedEmail}}</span>
								<button class="editbtn" @click="fnpopup('email')">변경</button>
						
						</div>
					
						<div class="editebox">
							<h6>비밀번호</h6>
							<div class="pwdedit spanBut">
								<span class="editinput">{{masked.maskedPwd}}</span>
								<!-- <input type="password" placeholder="**********" class="editinput"> -->
								<button class="editbtn" @click="fnpopup('pwd')"><a href="#">변경</a></button>
							</div>
						</div>
					</div>
					<div class="editinner">
						<h4>개인정보</h4>
						<div class="editebox">
							<h6>휴대폰 번호</h6>
							<div class="phonenumedit spanBut">
								<span class="editinput">{{masked.maskedPhone}}</span>
								<button class="editbtn" @click="fnpopup('phone')"><a href="#">변경</a></button>
							</div>
						</div>
						<div class="editebox">
							<h6>신발사이즈</h6>
							<div class="shoessizeedit spanBut">
								<span class="editinput">{{user.userSize}}</span>
								<button class="editbtn" @click="fnpopup('size')"><a href="#">변경</a></button>
							</div>
						</div>
					</div>
				<div class="editinner">
					<h4>광고성 정보 수신</h4>
					<div class="editebox">
						<div class="agreeelement">
							<p>문자 메세지</p>
							<div>
								<label for="dmagree">수신동의</label><input type="radio" id="dmagree" name="dmagree" checked>
								<label for="dmdisagree">수신거부</label><input type="radio" id="dmdisagree"name="dmagree">
							</div>
						</div>
					</div>
					<div class="editebox">
						<div class="agreeelement">
							<p>이메일</p>
							<div>
								<label for="agreemail">수신동의</label><input type="radio" id="agreemail" name="emailagree" checked>
								<label for="disagreemail">수신거부</label><input type="radio" id="disagreemail" name="emailagree">
							</div>
						</div>
					</div>
				</div>
				<button class="resignbtn">회원탈퇴</button>
				</div>
			
		</div>
		</div>
	
	
	<!-- 이메일 변경 팝업 -->
	
	<div class="popup popup-overlay" id="popupOverlay" >
        <div class="title">주소 변경<i class="fa-solid fa-x" id="closePopup"></i></div>
        <div class="content">
        <!-- 이메일 변경 -->
     	<template v-if="keyword == 'email'">
            <p>대충 주소 변경 주의 사항(없어도됨)</p>
            <p>
                <div>기존 이메일 : {{masked.maskedEmail}}</div>
               <div><input placeholder="대충 변경할 이메일" v-model="info.userEmail"></div>
               <div style="color: red;">{{message}}</div>
                <div>
              		<input type="password" v-model="pwd" placeholder="비밀번호 확인">
               		<button @click="fnPwdCheck">인증</button>
               	</div> 
            </p>
        </template>
        
        <!-- 비밀번호 변경 -->
     	<template v-else-if="keyword == 'pwd'">
            <p>대충 비밀번호 변경 주의 사항(없어도됨)</p>
            <p>
                <div>기존 이메일 : {{masked.maskedPwd}}</div>
               <div><input placeholder="대충 변경할 이메일" v-model="info.userEmail"></div>
               <div style="color: red;">{{message}}</div>
                <div>
              		<input type="password" v-model="pwd" placeholder="비밀번호 확인">
               		<button @click="fnPwdCheck">인증</button>
               	</div> 
            </p>
        </template>
        
        <!-- 연락처 변경 -->
     	<template v-else-if="keyword == 'phone'">
            <p>대충 전화번호 변경 주의 사항(없어도됨)</p>
            <p>
                <div>기존 이메일 : {{masked.maskedPwd}}</div>
               <div><input placeholder="대충 변경할 이메일" v-model="info.userEmail"></div>
               <div style="color: red;">{{message}}</div>
                <div>
              		<input type="password" v-model="pwd" placeholder="비밀번호 확인">
               		<button @click="fnPwdCheck">인증</button>
               	</div> 
            </p>
        </template>
        
        <!-- 신발 사이즈 변경 -->
     	<template v-else-if="keyword == 'size'">
            <p>대충 신발 사이즈 변경 주의 사항(없어도됨)</p>
            <p>
                <div>기존 이메일 : {{masked.maskedPwd}}</div>
               <div><input placeholder="대충 변경할 이메일" v-model="info.userEmail"></div>
               <div style="color: red;">{{message}}</div>
                <div>
              		<input type="password" v-model="pwd" placeholder="비밀번호 확인">
               		<button @click="fnPwdCheck">인증</button>
               	</div> 
            </p>
        </template>
        
       
        </div>
        <div class="cmd">
       		<button id="submitPopup" @click="fnSubmitPopup">제출</button>
            
        </div>
    </div>

   
   
</div>
</body>
<%@ include file="../header/footer.jsp"%>
</html>
<script>
	var app = new Vue({
		el : '#app',
		data : {
			masked : {},
			user : {},
			maskedinfo : {},
			sessionId : "${sessionId}",
			message : "",
			keyword : "",
			pwd : "",
			pwdFlg : false,
			info : {
				userEmail : "",
				userPhone : "",
				userPwd : "",
				userSize : "",
				receiveMessage : "",
				receiveEmail : "",
			}
		},// data
		methods : {
			fnGetInfo : function() {
				var self = this;
				var param = {uId : self.sessionId};
				$.ajax({
					url : "/user/selectMasked.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						
						self.user = data.maskedinfo.user;
						self.masked = data.maskedinfo.masked;
						
					}
				});
			},
			// 레이어 팝업창 띄우기
			fnpopup : function(keyword){
				var self = this;
				console.log(keyword);
				self.keyword = keyword;
				document.getElementById("popupOverlay").style.display = "block";
			},
			// 레이어 팝업창 제출
			fnSubmitPopup : function(){
				var self = this;
				
				const regexEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
				if(!regexEmail.test(self.info.userEmail)){
					console.log(self.info.userEmail);
					self.message = "이메일 형식에 맞게 입력하시오";
					return;
				}else {
					self.message = "";
				};
				if(!self.pwdFlg){
					alert("비밀번호를 확인하시오");
					return;
				};
				var param = self.info;
					param.uId = self.sessionId;
					console.log(self.info.userPwd);
				 $.ajax({
					url : "/user/editInfo.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						alert("대충 수정됐다 라는 엘럿창");
						document.getElementById("popupOverlay").style.display = "none";
						self.fnGetInfo();
					}
				}); 
				
			},
			fnPwdCheck : function(){
				var self = this;
				var param = {uId : self.sessionId, pwd : self.pwd};
				$.ajax({
					url : "/login.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						if(data.success){ 
	                		alert(data.message);
	                		self.pwdFlg = true;
	                	} else {
	                		alert(data.message);
	                		self.pwdFlg = false;
	                		
	                	}
						
					}
				});
			},

		}, // methods
		created : function() {
			var self = this;
			if(self.sessionId !=""){
				self.fnGetInfo();
			}else{
				alert("로그인 이후 이용이 가능합니다");
				location.href="login.do";
			}
		}// created
	});
	
	 // 레이어 팝업창 닫기
	document.getElementById("closePopup").addEventListener("click", function() {
		document.getElementById("popupOverlay").style.display = "none";
	});
</script>