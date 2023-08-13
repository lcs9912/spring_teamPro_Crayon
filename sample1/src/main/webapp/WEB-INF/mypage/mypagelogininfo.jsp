<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
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
			width:480px; height:70px; border-bottom: 1px solid #e9e9e9;
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
</style>

</head>
<%@ include file="../header1.jsp"%>
<%@ include file="../header2.jsp"%>
<body>
	<div id="app">
	<div class="mypagewrap">
		<nav class="myinfonav">
		<div class="myinfo">
			<h2>마이 페이지</h2>
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
						<div class="editebox">
							<h6>이메일 주소</h6>
							<div class="emailedit">
								<input type="text" placeholder="e*********@gmail.com" class="editinput">
								<button class="editbtn"><a href="#">변경</a></button>
							</div>
						</div>
					
						<div class="editebox">
							<h6>비밀번호</h6>
							<div class="pwdedit">
								<input type="password" placeholder="**********" class="editinput">
								<button class="editbtn"><a href="#">변경</a></button>
							</div>
						</div>
					</div>
					<div class="editinner">
						<h4>개인정보</h4>
						<div class="editebox">
							<h6>휴대폰 번호</h6>
							<div class="phonenumedit">
								<input type="text" class="editinput" placeholder="010-****-****">
								<button class="editbtn"><a href="#">변경</a></button>
							</div>
						</div>
						<div class="editebox">
							<h6>신발사이즈</h6>
							<div class="shoessizeedit">
								<input type="text" class="editinput" placeholder="350">
								<button class="editbtn"><a href="#">변경</a></button>
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
	</div>
</body>
<%@ include file="../footer.jsp"%>
</html>
<script>
	var app = new Vue({
		el : '#app',
		data : {
			info : {},
			sessionId : "${sessionId}",
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
					}
				});
			}

		}, // methods
		created : function() {
			var self = this;
			self.fnGetInfo();
		}// created
	});
</script>