<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic-eco.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/047f82d071.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {

margin:0; padding:0; box-sizing : border-box;}


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

	.mypagewrap {
		width:1200px; margin:50px auto;
		clear:both; 
		height:600px;
		}
	.mypagenav {
		float:left; width:200px; color:#000;
		}
		
	.myinfo h2{
			margin-bottom:20px; color:tomato;
		}	
	
		
	.myinfo h3{
			margin: 30px 0px 10px;
		}	
		
	.myinfo ul li{
			margin:10px 10px;
		}	
		
	
	.sailcontainer {float:left; margin-bottom:150px;}
		.profilearea {
			width:1000px; height:150px; border:2px solid #f8f8f8; border-radius:10px;
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
			.profileinner2 p {margin:5px 0;}
			.profileinner2 a{
				display:inline-block; border:1px solid #999; border-radius:10px; padding:8px;
				height:35px; line-height:15px;
			}
			.profileinner3{
				float:right; height:130px; width:200px; border-left:2px solid #f5f5f5;
				margin-top:10px; text-align: center;
			}
			.profileinner3 p:nth-child(1){line-height:2.5; font-size:18px; font-weight:bold; margin:22 0 0 0;}
			.profileinner3 p:nth-child(2){line-height:1; margin-top:0;}
			.profileinner4{
				float:right; height:150px; width:200px;
				text-align: center;
			}
			.profileinner4 p:nth-child(1){line-height:2.5; font-size:18px; font-weight:bold; margin:30 0 0 0;}
			.profileinner4 p:nth-child(2){line-height:1; margin-top:2px;}
			
	
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
				height:100px; background-color:rgb(248,248,248);
				border-radius:20px;
			}
				
			.listul li{
				float:left; width:250px; text-align:center; margin-top:0;
			}
				.listul li p:nth-child(1){line-height:2.5; font-size:15px; font-weight:bold; margin:15 0 0 0;}
				.listul li p:nth-child(2){line-height:1; margin-top:2px; font-size:20px;}
			.listul li:after {
			    clear: both;
			    content: '';
			    display: block;
	    	}
	    	.listdv{
	    		height:325px; margin:0; text-align:center; line-height:200px;
	     	}

	     	

			.pointaddbtn{
				margin-top:10px; background-color:white;
				border: 1px solid #999; border-radius: 10px;
		   		 height:25px; padding:8px;
		   		 line-height:10px;
		   		 color:#999; cursor:pointer;
			}
			img{
				width: 100%;
				height: 100%;
				object-fit: cover;
				border-radius: 70%;
				overflow: hidden;
			}

</style>

</head>
<%@ include file="../header/shopheader.jsp"%>
<body>
	<div id="app">
	<div class="mypagewrap">
		<nav class="mypagenav">
		<div class="myinfo">
				<h2><a href="manager.do">관리자 페이지</a></h2>
			<h3>회원 관리</h3>
			<ul>
			<li><a href="checkedit.do">회원 조회/수정</a></li>
			
			</ul>
		</div>
				<div class="myinfo">
			<h3><a href="productmanage.do">물품 관리</a></h3>
		</div>
		
				<div class="myinfo">
			<h3><a href="paybackmanage.do">환불 관리</a></h3>
		</div>
		
		</nav>
		<div class="sailcontainer">
			<div class="profilearea">
				<div class="profileinner1">
					<img :src="imgInfo.userImg">
					<!-- 유저 프로필사진 -->
				</div>
				<div class="profileinner2">
					<strong>{{info.userId}}</strong>

					<p>{{info.userEmail}}</p> <!-- 유저이메일 -->
					<a href="mypageprofile.do" type="button">프로필 관리</a>
					<a href="myposts.do" type="button">내 스타일</a>
					
				</div>
				<div class="profileinner3">
					<p>{{info.userPoint}}P</p> <!-- 유저포인트 -->
					<p>포인트</p>
					<a href="mypageaddpoint.do"><button class="pointaddbtn">포인트충전</button></a>
				</div>
				<div class="profileinner4">
					<p>관리자</p>
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
			info : {},
			imgInfo : {},
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
						self.fnImgInfo();
					}
				});
			},
			
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
			if(self.sessionId !=""){
				self.fnGetInfo();
			}else{
				alert("로그인 이후 이용이 가능합니다");
				location.href="login.do";
			}
			
		}// created
	});
</script>