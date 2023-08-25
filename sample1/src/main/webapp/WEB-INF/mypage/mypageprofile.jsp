<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	* {margin:0; padding:0; box-sizing : border-box;}
	
	table {
		border: 1px solid black;
		border-collapse: collapse;
		text-align: center;
	}
	
	th, td {
		border: 1px solid black;
		padding: 5px 10px;
	}
	
	li {
		list-style:none;
		}
	
	
	a {	text-decoration:none;
		color: inherit;
		}
	
		.profilewrap {
			width:1200px; margin:50px auto;
			}
		.profilenav {
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
			
		
		/*프로필 관리 영역 CSS 시작*/
		.sailcontainer {float:left; margin-bottom:150px;}
			.edithead {
				width:1000px; 
				padding-bottom:15px; border-bottom:3px solid #000; 
				}				
			.profilearea {
				width:1000px; height:150px; margin:15px 0; border-bottom:1px solid #e9e9e9;
				}		
				.profileinner1{
					float:left; width: 120px; height:120px; margin:8px 22px;
				}
				.profileinner2{
					float:left; width: 200px; margin-top:25px; height:100px; line-height:25px; color:#888; font-size:13px; 
					    
				}
					.profileinner2 strong{
						font-size:15px; color:#000; font-weight:bold; margin-bottom:5px;
					}
					.profileinner2 p {
						margin:5px 0;
						font-size: 20px;
						font-weight: bold;
						color: black;
					}
					img{
						width: 100%;
					    height: 100%;
					    object-fit: cover;
					    border-radius: 70%;
					    overflow: hidden;
					}
					.profileinner2 label{
						display:inline-block; border:1px solid #999; border-radius:10px; padding:8px;
						margin-left:5px; height:35px; line-height:15px; cursor: pointer;
					}
					
					#fileBut {
					
					}
					.profileinner2 input{ /* 이거 도움받기 */
						cursor: pointer;
					}
					
					.profileinner2 button{
						cursor: pointer;
					}
					
				
				
				.editprofile h4 {/*프로필정보 영역 CSS(인풋, 버튼) 시작*/
				margin:25px 0 25PX 0; 
				}
				.editebox {
					width:480px; height:70px; border-bottom: 1px solid #e9e9e9;
				}
	
				.editebox h5 {
					color:#ccc; margin-top:25px;
				}
	
				.editebox .editbtn{
					border:1px solid #e9e9e9; background-color: #fff; border-radius: 10px; width:50px; height:30px;	
					color:#777; font-size: 12px;	
				}
				.editinput {/*프로필정보 영역 CSS 종료*/
					border:0 solid; font-size:20px; margin-top: 20px; width:421px;
				}		
	 
	    /*프로필 관리 영역 CSS 종료*/

			    /* 팝업 레이어 */
			.popup-overlay {
				display: none;
			   	position: fixed;
			  	top: 0;	left: 0;
			  	width: 50%; height: 50%;
			   	background-color: rgba(0, 0, 0, 0.5);
			  	z-index: 1000;
			} 
			
			.popup-content {
			    position: absolute;
			    top: 50%; left: 50%;
			    transform: translate(-50%, -50%);
			    background-color: #fff;
			    padding: 20px; border-radius: 10px;
			    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
			}
			
			#popupTitleBox{
				background-color: black;
			}
			
			#popupTitleBox i{
				cursor: pointer; color: white;
			}
			#popupTitle{
				color: white; font-weight: bold;
			}
			html, body{
			    width: 100%; height: 100%;
			    padding: 0; margin: 0;			    
			}
			
			body{
			    /* background-image: url('./bg.jpg'); */ /* 배경이미지 */
			    background-repeat: no-repeat; background-size: cover;
			    background-position: center;		    
			}
			body.dimmed::before{
			    content: '';
			    position: fixed; left: 0;
			    right: 0; top: 0;
			    bottom: 0; background-color: rgba(0, 0, 0, 0.5); /* 배경을 불투명하게 만듭니다 */
			    z-index: 999; /* 레이어 팝업보다 뒤에 위치하도록 z-index 조정 */    			  
			}
			.popup {
			    z-index: 1; position: fixed;
			    top: 50%; left: 50%;
			    transform: translate(-50%,-50%);
			    min-width: 300px; max-width: 600px;
			    background-color: #fff; border-radius: 15px;
			    box-shadow: 0 2px 55px -25px rgb(0 0 0 / 100%);		    
			 }
			.popup > .title{
			    border-radius: 15px 15px 0 0;
			    min-height: 40px; color: white;
			    background-color: #ccc; padding: 10px 15px;
			    box-sizing: border-box; font-weight: bold;
			    text-align: center;
			}
			.popup > .content {
			    padding: 20px;
			    box-sizing: border-box;
			}
			.emailinput {
				width:100%; margin:20px 0 40px 0;
			}
				.emailinput input {
					width:450px; height:50px; border:0px solid; border-bottom:1px solid #ccc; outline:none;
				}
				.emailpwd {margin-top:30px; width:150px; height:40px; background:#fff; border-radius:15px;}
			.popup > .cmd {
			    margin-top:20px;
			    border-radius: 0 0 15px 15px; min-height: 40px; text-align: center;
			    width: 500px; line-height: height:80px;
			}
			.cmd button {
			    border-radius:15px; padding: 10px 10px;
			    border: 1px solid #aaa; width: 100px; 
			    color: white; background-color: black;
			    font-weight: bold; cursor: pointer;
			    
			}
			.cmd button:hover {
			    color: #000; background-color: #fff;
			    border-color: #ccc;
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
<%@ include file="../header/shopheader.jsp"%>
<body>
	<div id="app">
	<div class="profilewrap">
		<nav class="profilenav"><!--마이페이지 목록리스트 태그 시작-->
		<div class="myinfo">
			<h2><a href="mypage.do">마이 페이지</a></h2>
			<h3>쇼핑 정보</h3>
			<ul>
				<li><a href="/mypagebuylist.do">구매 내역</a></li>
				<li><a href="mypageselllist.do">판매 내역</a></li>				
				<li><a href="mypageproductinter.do">관심 상품</a></li>
			</ul>
		</div>
		<div class="myinfo">
			<h3>내 정보</h3>
			<ul>
				<li><a href="mypagelogininfo.do">로그인 정보</a></li>
				<li style="font-weight:bold; color:#FF6868"><a href="/mypagelogininfo.do">프로필 관리</a></li>
				<li><a href="mypageaddr.do">주소록</a></li>
				<li><a href="mypagepaylist.do">결제 정보</a></li>
				<li><a href="mypagebank.do">판매 정산 계좌</a></li>				
				<li><a href="mypageaddpoint.do">포인트 충전</a></li>
			</ul>
		</div>
		</nav><!--마이페이지 목록리스트 태그 종료-->

		<div class="sailcontainer"><!--프로필관리 태그영역 시작-->
			<div class="edithead">
				<h2>프로필 관리</h2>
			</div>
			<div class="profilearea">				
				<div class="profileinner1">
					<img :src="imgInfo.userImg"> <!-- 변경시 선택한 이미지로 출력하면서 삽입 -->
					<!-- 유저 프로필사진 동그랗게 만들기-->
				</div>
				<div class="profileinner2">
					<p>{{info.userNickname}}</p> <!-- 유저이메일 -->
					<label @click="fnImgEditFlg" for="file1">이미지 변경</label>
					<label @click="fnImgRemove" type="button">삭제</label>
					
						<input  type="file" id="file1" name="file1" @change="fnImgEdit" hidden>
						
				</div>							
			</div>
			<div class="editprofile">
				<h4>프로필 정보</h4>
				<div class="editebox">
					<h5>프로필 이름</h5>
					<div class="emailedit">
						<span class="editinput">{{info.userNickname}}</span>
						<button class="editbtn" @click="fnpopup('nick')">변경</button>
					</div>
				</div>			
				<div class="editebox">
					<h5>이름</h5>
					<div class="pwdedit">
						<span class="editinput">{{info.userName}}</span>
						<button class="editbtn" @click="fnpopup('name')">변경</button>
					</div>
				</div>
			</div>
		</div><!--프로필관리 태그영역 종료-->
	</div><!--프로필관리 태그영역 시작-->
	
	
	<!-- 레이어 팝업 -->

	<div class="popup popup-overlay" id="popupOverlay" >
        <div class="title">변경<i class="fa-solid fa-x" id="closePopup"></i></div>
        <div class="content" style="text-align:center;">
	        <!-- 닉네임 변경 -->
	        <template v-if="keyword == 'nick'">
	            <h2 style="padding-bottom:15px;">닉네임 변경</h2>
                <div class="emailinput">
	               	<input placeholder="대충 변경할 닉네임" v-model="nickName">
	                <div style="color: red;">메세지</div>
	                <input type="password" v-model="pwd" placeholder="비밀번호 확인">
	                <button class="emailpwd" @click="fnPwdCheck">비밀번호 인증</button>      
	            </div>               	         	
	            <div class="cmd">
	       			<button id="submitPopup" @click="fnChangNickname">제출</button>          
	        	</div>
	        </template>
        
        <!-- 이름 변경 -->
	        <template v-if="keyword == 'name'">
	            <h2 style="padding-bottom:15px;">이름 변경</h2>
	            	<div style="padding-bottom:15px;"></div>
	                <div class="emailinput"><input placeholder="대충 변경할 이름" v-model="userName">
	                	<div style="color: red;">메세지</div>
	              		<input type="password" v-model="pwd" placeholder="비밀번호 확인">
	              		<button class="emailpwd" @click="fnPwdCheck">비밀번호 인증</button>   
	               	</div> 
	               	<div class="cmd">
	       				<button id="submitPopup" @click="fnChangName">제출</button>          
	        		</div>
	        </template>
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
			info : {},
			imgInfo : {},
			sessionId : "${sessionId}",
			keyword : "", // 팝업 키워드
			pwd : "",
			nickName : "",
			userName : "",
			pwdFlg : false, // 비밀번호 인증 여부
			imgFlg : false, // 이미지 변경클릭 여부
			
		},// data
		methods : {
			fnGetInfo : function() {
				var self = this;
				var param = {uId : self.sessionId};
				$.ajax({
					url : "/user/selectId.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						self.info = data.info;
						console.log(self.info);
						pwdFlg : false;
						self.fnImgInfo();
					}
				});
			},
			// 프로필 이미지 출력
			fnImgInfo : function(){
				var self = this;
				var param = {uId : self.sessionId};
				$.ajax({
					url : "/user/profileImg.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						self.imgInfo = data.imgInfo;
						console.log(self.imgInfo.userImgName);
						
					}
				});
			},
			// 프로필 이미지 변경 버튼 띄우기
			fnImgEditFlg : function(){
				var self = this;
				if(!self.imgFlg){
					self.imgFlg = true;
				} else{
					self.imgFlg = false;
				}
			},
			// 프로필 이미지 변경
			fnImgEdit : function(){
				var self = this;
				var form = new FormData();
   	       		form.append( "file1",  $("#file1")[0].files[0] );
   	     		form.append( "uId",  self.sessionId); 
   	     		form.append( "imgName",  self.imgInfo.userImgName);
	         $.ajax({
	             url : "/editUserImg.dox"
	           , type : "POST"
	           , processData : false
	           , contentType : false
	           , data : form
	           , success:function(response) {
	        	   
	           }
	           
	       });
	         location.reload();
	         console.log(form);
			},
			// 프로필 이미지 삭제
			fnImgRemove : function(){
				var self = this;
				var form = new FormData();
				
		     	form.append( "uId",  self.sessionId); 
		     	form.append( "imgName",  self.imgInfo.userImgName);
		     	$.ajax({
		             url : "/imgRemove.dox"
		           , type : "POST"
		           , processData : false
		           , contentType : false
		           , data : form
		           , success:function(response) {
		        	   
		           }
		           
		       });
		     	location.reload();
		         console.log(form);
			},
			// 유저 닉네임 변경
			fnChangNickname : function(){
				var self = this;
				if(!self.pwdFlg){
					alert("비밀번호를 인증하시오");
					return;
				};
				var param = {uId : self.sessionId, nickName : self.nickName};
				$.ajax({
					url : "/mypage/editFrofill.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						alert("닉네임 변경 완");
						document.getElementById("popupOverlay").style.display = "none";
						self.fnGetInfo();
					}
				});
			},
			// 유저 이름 변경
			fnChangName : function(){
				var self = this;
				if(!self.pwdFlg){
					alert("비밀번호를 인증하시오");
					return;
				};
				var param = {uId : self.sessionId, userName : self.userName};
				$.ajax({
					url : "/mypage/editFrofill.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						alert("이름 변경 완");
						document.getElementById("popupOverlay").style.display = "none";
						self.fnGetInfo();
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
	                		self.pwd = "";
	                		self.pwdFlg = false;
	                		
	                	}
						
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
		self.pwdFlg = false;
		
	});
</script>