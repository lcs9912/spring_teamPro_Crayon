<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	/*프로필관리 영역 CSS 시작*/
	.profilewrap {
		width:1200px; margin:50px auto;
	}
	.profilenav {
		float:left; width:200px; color:#000; margin-bottom:150px;
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
			width:1000px; height:40px;
			padding-bottom:15px; border-bottom:3px solid #000; 
			}
			.edithead h2{margin-top:10px;}	
		.profilearea {
			width:1000px; height:150px; margin:15px 0; border-bottom:1px solid #e9e9e9;
			}		
			.profileinner1{
				float:left; width: 100px; height:100px; margin:20px 40px;
			}
			.profileinner2{
				float:left; width: 200px; margin-top:25px; height:100px; line-height:25px; color:#888; font-size:13px;
			}
				.profileinner2 strong{
					font-size:15px; color:#000; font-weight:bold; margin-bottom:5px;
				}
				.profileinner2 p {margin:5px 0;}
				.profileinner2 a{				
					display:inline-block; border:1px solid #999; border-radius:10px; padding:8px;
					height:35px; line-height:15px;
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
				<li style="font-weight:bold; color:#FF6868"><a href="#">프로필 관리</a></li>
				<li><a href="#">주소록</a></li>
				<li><a href="#">결제 정보</a></li>
				<li><a href="#">판매 정산 계좌</a></li>				
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
					<img src="https://kream.co.kr/_nuxt/img/blank_profile.4347742.png">
					<!-- 유저 프로필사진 -->
				</div>
				<div class="profileinner2">
					<p>{{info.userEmail}}</p> <!-- 유저이메일 -->
					<a href="#" type="button">이미지 변경</a>
					<a href="#" type="button">삭제</a>
				</div>							
			</div>
			<div class="editprofile">
				<h4>프로필 정보</h4>
				<div class="editebox">
					<h5>프로필 정보</h5>
					<div class="emailedit">
						<input type="text" placeholder="홍길동" class="editinput">
						<button class="editbtn"><a href="#">변경</a></button>
					</div>
				</div>			
				<div class="editebox">
					<h5>이름</h5>
					<div class="pwdedit">
						<input type="text" class="editinput">
						<button class="editbtn"><a href="#">변경</a></button>
					</div>
				</div>
				<div class="editebox">
					<h5>소개</h5>
					<div class="pwdedit">
						<input type="text" placeholder="나를 소개하세요" class="editinput">
						<button class="editbtn"><a href="#">변경</a></button>
					</div>
				</div>
			</div>
		</div><!--프로필관리 태그영역 종료-->
	</div><!--프로필관리 태그영역 시작-->
	</div>
</body>
	<%@ include file="../header/footer.jsp"%>
</html>
<script>
	var app = new Vue({
		el : '#app',
		data : {
			info : {},
			sessionId : "${sessionId}"
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
			if(self.sessionId !=""){
				self.fnGetInfo();
			}else{
				alert("로그인 이후 이용이 가능합니다");
				location.href="login.do";
			}
		}// created
	});
</script>