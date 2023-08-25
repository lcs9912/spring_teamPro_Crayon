<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script src="https://kit.fontawesome.com/047f82d071.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
/* 전체 페이지 스타일 */
* {margin:0; padding:0; box-sizing : border-box;}

li {
	list-style:none;
	}

a {	
	text-decoration:none;
	color: inherit;
	}

.mypagewrap {
	width:1200px; margin:0 auto;
	clear:both; margin-top:150px; margin-bottom:50px;
	}


.sailcontainer {float:left;}
	.profilearea {
		width:1000px; height:150px; border:2px solid #f8f8f8; border-radius:10px;
		}
		.profileinner1{
			float:left; width: 100px; height:100px; margin:25px 40px;
		}
		.profileinner1 img {
			width: 100%;
			height: 100%;
			object-fit: cover;
			border-radius: 70%;
			overflow: hidden;
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
		
		.mylist{
			clear:both;
			width:1000px; 
		}
		.listhead::after {
		    content: "";
		    display: table;
		    clear: both;
		}
	
		.listhead h2{
			display:inline-block; float:left; margin:25px 0 10px 0;
		}	
		.listhead span {
			display:inline-block; float:right; margin-top:35px;
		}
	
		.viewdv{
			margin-top : 8px;
			margin-bottom : 10px;
			border-top : 1px solid #ddd;
		}
			
		
    	.listdv{
    		height:325px; margin:0; text-align:center;
     	}
     	
     	
		/*  */
		li, ul {
		float : left;
		list-style : none;
		text-decoration : none;
		}
		a {
			text-decoration : none;
			color : inherit;
		}
		
		span {
			margin-right : 30px;
			text-underline-offset : 10px;
		}
		.tab2 {
			text-decoration : underline;
			text-decoration-thickness : 2px;
			font-weight : bold;
		}
		.tab_contents {
			border-top : 1px solid black;
			border-bottom : 1px solid black;
		}
		/*  */
		.listdv a {
			border:1px solid #999; border-radius:10px; padding:8px; line-height : 50px; font-size : 12px; font-weight : bold; 
		}
		.follow-num {
			font-weight : bold; 
			color : black;
			margin-left : 5px;
		}
</style>

</head>
<%@ include file="../header/shopheader.jsp"%>
<body>
<div id="app">
	<div class="mypagewrap">
		<div class="sailcontainer">
			<div class="profilearea">
				<div class="profileinner1">
					<!-- 유저 프로필사진 -->
					<img :src="imgInfo.userImg">
				</div>
				<div class="profileinner2">
					<strong>{{nickname}}</strong><a href="mypageprofile.do" type="button" style="margin-left : 10px;">프로필 관리</a>
					<p>
						<a href="#" style="border : none">팔로워<span class="follow-num">0</span></a>
						<a href="#" style="border : none">팔로잉<span class="follow-num">0</span></a>
					</p>
					<strong>{{sessionId}}</strong> <!-- 유저아이디 -->
				</div>
			</div>
			<div class="mylist">
				<div class="listhead">
					<ul class="tab_menu">
						<li>
							<a href="myposts.do" type="button"><span class="tab1">게시물</span></a>
						</li>
						<li>
							<a href="mytagproduct.do"><span class="tab2">태그 상품</span></a>
						</li>
						<li>
							<a href="mylikeposts.do"><span class="tab3">관심 스타일</span></a>
						</li>
					</ul>
				</div>
				<div class="viewdv">
					
				</div>	
				<div class="listdv">
					<div v-for="item in list" v-if="item.contents != null">
						<ul class="tab_mytagpost" style="max-width : 200px">
							<li style="margin-right : 20px;">
								<p><img src="../img/style/Nike Dunk Low Retro Valerian Blue.jpg" style="max-width : 100px; border-radius : 15px"></p>
								<strong>Nike Dunk Low Retro Valerian Blue</strong>
								<p style="font-size : 12px; color : rgba(34,34,34,.8);">나이키 덩크 로우 레트로 발레리안 블루</p>
							</li>
						</ul>
					</div>
					<div v-else style="margin-top : 100px;">
						<p style="color : rgba(34,34,34,.8); font-size : 13px;">태그하신 상품이 없습니다.</p>
						<a href="#" type="button" style="color : rgba(34,34,34,.8);">게시글 업로드</a>
					</div>
					
				</div>
			</div>
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
		list : [],
		imgInfo : {},
		sessionId : "${sessionId}",
		nickname : "${sessionNickname}"
	},// data
	methods : {
		fnGetStyle : function() {
			var self = this;
			var param = {uId : self.sessionId};
			$.ajax({
				url : "/listStyle.dox",
				dataType : "json",
				type : "POST",
				data : param,
				success : function(data) {
					self.list = data.list;
					console.log(self.info);
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
	}, // methods
	created : function() {
		var self = this;
		self.fnImgInfo();
		self.fnGetStyle();
	}// created
});
</script>