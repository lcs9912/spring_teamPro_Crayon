<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 로그인정보 페이지</title>

<style>
		
	.mypagewrap {width:1200px; margin:50px auto;}
	.myinfonav {float:left; width:200px; color:#000;}
	.myinfo h2{margin-bottom:20px;}	
	.myinfo h3{margin:30px 0;}	
	.myinfo ul li{margin:10px 0;}	
		.editlogininfo{width:1000px; float:left; margin-bottom:100px;}        
		
		.edithead {padding-bottom:15px; border-bottom:3px solid #000;}
		
		.loginedit {width:480px; padding-top:10px;}	
			
			.editinner h4 {margin-bottom:25px; margin-top:30px;}
			
			.editebox {width:480px; height:55px; border-bottom: 1px solid #e9e9e9;}
	
			.editebox h6 {color:#ccc; margin-top:25px;}
	
			.editebox .editbtn{border:1px solid #e9e9e9; background-color: #fff; 
						border-radius: 10px; width:50px; height:30px; color:#777; font-size: 12px;}
			
			.editinput {border:0 solid; font-size:20px; margin-top: 19px; width:421px;}
				.editinput>span {display:inline-block; height:31px; }
					#selectSize {margin-left:290px; background-color: #fff; border-radius: 10px; text-align:center;
								 border:1px solid #e9e9e9; width:90px; height:27px; outline:none; font-size:15px;}
								 
			.agreeelement {margin-top:30px; height: 50px; margin-top:50px;}
				
				.agreeelement p {display: inline-block; width:250px; color:#555;}
				
				.agreeelement div{display: inline-block; color:#555;}
				
				.agreeelement div label{margin:0 10px 0 20px;}
	
				.resignbtn {border:0px solid #e9e9e9; background-color: #fff; border-radius: 10px; width:70px; height:30px;	
							color:#777; font-size: 15px; margin-top: 30px; text-decoration-line: underline;}	 
				
				.spanBut button{float: right; cursor: pointer;}
					
				
				
				
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
	<div class="mypagewrap">
		<nav class="myinfonav">
		<div class="myinfo">
			<h2><a href="mypage.do">마이 페이지</a></h2>
			<h3>쇼핑 정보</h3>
			<ul>
				<li><a href="mypagebuylist.do">구매 내역</a></li>
				<li><a href="mypageselllist.do">판매 내역</a></li>				
				<li><a href="mypageproductinter.do">관심 상품</a></li>
			</ul>
		</div>
		<div class="myinfo">
			<h3>내 정보</h3>
			<ul>
				<li style="font-weight:bold; color:#FF6868"><a href="mypagelogininfo.do">로그인 정보</a></li>
				<li><a href="mypageprofile.do">프로필 관리</a></li>
				<li><a href="mypageaddr.do">주소록</a></li>
				<li><a href="mypagepaylist.do">결제 정보</a></li>
				<li><a href="mypagebank.do">판매 정산 계좌</a></li>				
				<li><a href="mypageaddpoint.do">포인트 충전</a></li>
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
								<button class="editbtn" @click="fnpopup('pwd')">변경</button>
							</div>
						</div>
					</div>
					<div class="editinner">
						<h4>개인정보</h4>
						<div class="editebox">
							<h6>휴대폰 번호</h6>
							<div class="phonenumedit spanBut">
								<span class="editinput">{{masked.maskedPhone}}</span>
								<button class="editbtn" @click="fnpopup('phone')">변경</button>
							</div>
						</div>
						<div class="editebox">
							<h6>신발사이즈</h6>
							<div class="shoessizeedit spanBut">
								<span class="editinput">
								{{userSize.size}} 
									<span v-if="sizeFlg">
										<select id="selectSize" v-model="productSize">
											<option v-for="item in sizeList" :value="item.productSize">{{item.size}}</option>
										</select>										
									</span>
									<button @click="fnSizeEdit" v-if="sizeFlg" class="editbtn">확인</button>
									<button class="editbtn" v-if="!sizeFlg" @click="sizeFlg = !sizeFlg">변경</button>
								</span>
								
							</div>
						</div>
					</div>
				<div class="editinner">
					<h4>광고성 정보 수신</h4>
					<div class="editebox">
						<div class="agreeelement">
							<p>문자 메세지</p>
							<div>	
								<label for="dmagree">수신동의</label><input type="radio" id="dmagree" name="dmagree" 
									v-model="user.receiveMessage" value="Y" @change="fnMessageRadio">
								<label for="dmdisagree">수신거부</label><input type="radio" id="dmdisagree"name="dmagree"
									v-model="user.receiveMessage" value="N" @change="fnMessageRadio">
							</div>								
						</div>		
					</div>			
					<div class="editebox">
						<div class="agreeelement">
							<p>이메일</p>
							<div>	
								<label for="agreemail">수신동의</label><input type="radio" id="agreemail" name="emailagree"
									v-model="user.receiveEmail" value="Y" @change="fnEmailRadio">
								<label for="disagreemail">수신거부</label><input type="radio" id="disagreemail" name="emailagree"
									v-model="user.receiveEmail" value="N" @change="fnEmailRadio">
							</div>	
						</div>		
					</div>
				</div>
				<button style="cursor: pointer;" class="resignbtn" @click="fnpopup('remove')">회원탈퇴</button>
				</div>
			
		</div>
		</div>
	
		<div class="emaailbackcolor">
		<!-- 이메일 변경 팝업 -->
		<div class="popup popup-overlay" id="popupOverlay" >
		        <div class="content">
		        <div class="title"><h3>변경</h3><i class="fa-solid fa-x" id="closePopup"></i></div>
			        <!-- 이메일 변경 -->
					<template v-if="keyword == 'email'">						     		            
		                <div class="nowemail"><h3>이메일주소 : {{masked.maskedEmail}}</h3></div>
		                <div class="emailinput"><input placeholder="변경할 이메일주소를 입력하시오." v-model="editEmail" autofocus></div>
		                <div class="hiddenmessege">{{emailMessage}}</div>
		                <div class="emailinput">
		              		<input type="password" v-model="pwd" placeholder="비밀번호 확인" @keyup.enter="fnPwdCheck">
		               		<button @click="fnPwdCheck" class="emailpwd" >비밀번호 인증</button>
		               	</div>               	
			            <button id="submitPopup" @click="fnSubmitPopup">제출</button> 		            	 
		    		</template>
		        
		    
	        <!-- 비밀번호 변경 -->
	     			<template v-if="keyword == 'pwd'">
	     			<div class="passwordckwrap">	
		             	<input type="password" placeholder="기존 비밀번호 입력" v-model="pwd" autofocus @keyup.enter="fnPwdCheck"><button @click="fnPwdCheck">확인</button>
		                <div v-if="pwdFlg">
		                	<span id="pwdquestion">비밀번호 찾기 질문</span>		                
			                <select name="language" id="pwdhint" class="passwordhint" name="passwordhint" v-model="checkPwdHint">
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
			               <input placeholder="정답" v-model="hintAnswer" @keyup.enter="fnHintCheck">
			               <button id="hintPopup" @click="fnHintCheck">확인</button>
			               <div style="color: red;">{{pwdMessage}}</div>
			               
		               </div>
		                <div v-if="hintPwdFlg" id="newpassword">
		              		<input type="password" v-model="editPwd" placeholder="새 비밀번호">
		              		<input type="password" v-model="editPwd2" placeholder="비밀번호 확인">
		               		<button id="passwordPopup" @click="fnSubmitPwdEdit">제출</button>
		               	</div>		            	 
		       		</div>
	      		  </template>
	        
	        <!-- 연락처 변경 -->
	     	<template v-if="keyword == 'phone'">
	            <div class="phonewrap">	            
	               <input placeholder="아이디" v-model="checkId">
	               <input placeholder="비밀번호" v-model="pwd">
	               <input placeholder="이메일" v-model="editEmail">
	               <button @click="fnAllCheck">인증</button>
	               <div style="color: red;">{{phoneMessage}}</div>
	               <div v-if="PhoneFlg">
	                	<input placeholder="새 전화번호" v-model="editPhone">
	                	<button id="phonePopup" @click="fnSubmitPhoneEdit">제출</button>  
	               </div>
	        	</div>	        	
	        </template>
	        
	       
	        
	        <!-- 회원 탈퇴 -->
	        <template v-if="keyword == 'remove'">	            
	            <div class="phonewrap">
	                <input placeholder="아이디" v-model="checkId">
	                <input placeholder="비밀번호" v-model="pwd">
	                <input placeholder="이메일" v-model="editEmail">
	                <button @click="fnAllCheck">확인</button>	                            
	          		<div class="cmd">
	       				<button id="memberPopup" @click="fnRemoveUser">제출</button>          
	        		</div>
	        	</div>
	        </template>
	        </div>
	        </div> <!-- 레이어 팝업 -->
	    </div> 
	</div>
</body>
<%@ include file="../header/footer.jsp"%>
</html>
<script>
	var app = new Vue({
		el : '#app',
		data : {
			masked : {}, // 마스킹 리스트
			user : {}, // select where id
			sizeList : [],
			userSize : {},
			sessionId : "${sessionId}",
			pwdMessage : "",  // 비밀번호 메세지
			emailMessage : "", // 이메일 변경 메세지
			phoneMessage : "", // 연락처 변경 메세지
			keyword : "", // 변경 버튼 키워드
			pwd : "", // 비밀번호 
			pwdFlg : false, // 비밀번호 인증 유무
			hintPwdFlg : false,
			PhoneFlg : false,
			sizeFlg : false, // 사이즈 플래그
			
			editEmail : "",
			editPwd : "",
			editPwd2 : "",
			editPhone : "",
			editSize : "",
			hintAnswer : "",
			editReMessage : "",
			editReEmail : "",
			checkPwdHint : "",
			checkId : "",
			productSize : "",
			
			
			
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
						console.log(self.user);
						
					}
				});
			},
			// 레이어 팝업창 띄우기
			fnpopup : function(keyword){
				var self = this;
				self.keyword = keyword;
				self.pwdFlg = false;
				document.getElementById("popupOverlay").style.display = "block";
			},
			// 레이어 팝업창 제출
			fnSubmitPopup : function(){
				var self = this;
				
				const regexEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; // 이메일 정규식
				
				if(!regexEmail.test(self.editEmail)){
					self.emailMessage = "이메일 형식에 맞게 입력하시오.";
					
					return;
				}else {
					self.emailMessage = "";
				};
				
	        	
				if(!self.pwdFlg){
					alert("비밀번호를 확인하시오");
					return;
				};
				var param = {uId : self.sessionId, editEmail : self.editEmail}
					
				 $.ajax({
					url : "/user/editInfo.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						alert("수정이 완료됐습니다");
						document.getElementById("popupOverlay").style.display = "none";
						self.fnGetInfo();
					}
				}); 				
			},
			// 유저 사이즈 조인 인포
			fnUserJoinSize : function(){
				var self = this;
				var param = {uId : self.sessionId};
				$.ajax({
					url : "/user/joinSize.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						self.userSize = data.userSize;
						console.log(self.userSize);
						
					}
				});
			},
			// id pwd 일치한지
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
	                		alert("인증완료");
	                		self.pwd = "";
	                		self.pwdFlg = true;
	                	} else {
	                		alert(data.message);
	                		self.pwdFlg = false;
	                	}
						
					}
				});
			},
			// 새 비밀번호 입력
			fnSubmitPwdEdit : function(){
				var self = this;
				var regexPwd = /^[a-zA-Z0-9]{8,16}$/;
				if(!self.pwdFlg){
					alert("비밀번호를 확인하시오");
					return;
				};
				if(!regexPwd.test(self.editPwd)){
					alert("비밀번호는 영문 대소문자와 숫자 포함 8자리 이상이어야 합니다.");
					return;
				};
				if(self.editPwd != self.editPwd2){
					alert("비밀번호가 같지않습니다.");
					return;
				};
				
				var param = {uId : self.sessionId, editPwd : self.editPwd};
				
				$.ajax({
					url : "/user/editInfo.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						alert("비밀번호 수정완료");
						document.getElementById("popupOverlay").style.display = "none";
						self.fnGetInfo();
					}
				});
			},
			
			// 힌트 확인
			fnHintCheck : function(){
				var self = this;
				if(!self.pwdFlg){
					alert("비밀번호를 확인하시오");
					return;
				};
				var param = {uId : self.sessionId, pwdHint : self.checkPwdHint, answer : self.hintAnswer};
				$.ajax({
					url : "/user/searchHint.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						alert("확인 되었습니다!");
						self.hintPwdFlg = true;
						
					}
				});
				
			},
			// 이메일 아이디 비번 확인
			fnAllCheck : function(){
				var self = this;
				var param = {uId : self.checkId, pwd : self.pwd, editEmail : self.editEmail};
				$.ajax({
					url : "/user/emailIdPwd.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						if(data.num < 1){
							alert("다시 확인해주시오");
							self.PhoneFlg = false;
							return;
						}
						alert("확인 되었습니다!");
						self.PhoneFlg = true;
						self.pwdFlg=true;

					}
				});
			},
			// 연락처 수정
			fnSubmitPhoneEdit : function(){
				var self = this;
				var regPhone = /^\d{3}\d{4}\d{4}$/; // 전화번호 : 숫자만 11자리 정규식
				if(!regPhone.test(self.editPhone)){
					alert("전화번호 숫자만 11자리 입력하시오");
					return;
				}
				if(!self.pwdFlg){
					alert("비밀번호를 확인하시오");
					return;
				};
				
				var param = {uId : self.sessionId, editPhone : self.editPhone};
				$.ajax({
					url : "/user/editInfo.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						alert("연락처 수정완료");
						document.getElementById("popupOverlay").style.display = "none";
						self.fnGetInfo();
					}
				});
			},
			// 사이즈 조회
			fnSizeList : function(){
				var self = this;
				var param = {};
				$.ajax({
					url : "/size.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						self.sizeList = data.size.slice(17,32);
						console.log(self.sizeList);
						
					}
				});
			},
			// 사이즈 변경 
			fnSizeEdit : function(){
				var self = this;
				var param = {uId : self.sessionId, productSize : self.productSize };
				console.log(self.productSize);
				$.ajax({
					url : "user/editUserSize.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						self.sizeFlg = false;
						location.reload();
					}
				});
				
			},
			// 광고성 정보수신 메시지
			fnMessageRadio : function(){
				var self = this;
				var param = {uId : self.sessionId, editReMessage : self.user.receiveMessage};
				$.ajax({
					url : "/user/editInfo.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						alert("광고성 정보수신 메세지 변경완료");
						self.fnGetInfo();
					}
				});
			},
			// 광고성 정보수신 이메일
			fnEmailRadio : function(){
				var self = this;
				var param = {uId : self.sessionId, editReEmail : self.user.receiveEmail};
				$.ajax({
					url : "/user/editInfo.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						alert("광고성 정보수신 이메일 변경완료");
						self.fnGetInfo();
					}
				});
			},
			// 회원 탈퇴
			fnRemoveUser : function(){
				var self = this;
				if(!confirm("정말로 탈퇴하시겠습니다? \nn기간 내에 탈퇴취소 할 수 있습니다.")){
					return;
				}
				var param = {uId : self.sessionId};
				$.ajax({
					url : "/user/infoRemove.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						alert("탈퇴 되었습니다.");
						location.href="login.do";
						document.getElementById("popupOverlay").style.display = "none";
						self.fnGetInfo();
					}
				});
				
			}

		}, // methods
		created : function() {
			var self = this;
			if(self.sessionId !=""){
				self.fnGetInfo();
				self.fnSizeList();
				self.fnUserJoinSize();
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