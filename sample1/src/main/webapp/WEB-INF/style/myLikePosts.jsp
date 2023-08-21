<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script src="https://kit.fontawesome.com/047f82d071.js" crossorigin="anonymous"></script>
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

.mypagewrap {
	width:1200px; margin:0 auto;
	clear:both; margin-top:150px; margin-bottom:50px;
	}
.mypagenav {
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
	

.sailcontainer {float:left;}
	.profilearea {
		width:1000px; height:150px; border:2px solid #f8f8f8; border-radius:10px;
		}
		.profileinner1{
			float:left; width: 100px; height:100px; margin:25px 40px;
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
			 height:35px; line-height:15px; margin-left : 15px;
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
			height:100px;border-top : 1px solid #ddd;
    		margin-top : 8px;
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
    		height:325px; margin:0; text-align:center;
     	}
     	
     	.joygooddv {
     		height:325px; margin:0; text-align:center; line-height:100px;
     		background-color:rgb(248,248,248); border-radius:20px;
     	}
     	
		.joygooddv button{
			border:1px solid #999; border-radius:10px; padding:8px;
			margin-left:5px; 
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
		
		.tab_menu {
			
		}
		span {
			margin-right : 30px;
			text-underline-offset : 10px;
		}
		.tab3 {
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
</style>

</head>
<%@ include file="../header/header1.jsp"%>
<%@ include file="../header/header2.jsp"%>
<body>
	<div id="app">
	<div class="mypagewrap">
		
		<div class="sailcontainer">
			<div class="profilearea">
				<div class="profileinner1">
					<img src="https://kream.co.kr/_nuxt/img/blank_profile.4347742.png">
					<!-- 유저 프로필사진 -->
				</div>
				<div class="profileinner2">
					<strong>닉네임</strong><a href="#" type="button">프로필 관리</a>
					<p>팔로워<b>0</b>        팔로잉<b>0</b></p>
					<strong>아이디</strong>
				</div>
			</div>
			<div class="mylist">
				<div class="listhead">
					<ul class="tab_menu">
						<li>
							<a href="myPosts.do" type="button"><span class="tab1">게시물</span></a>
						</li>
						<li>
							<a href="myTagProduct.do"><span class="tab2">관심 상품</span></a>
						</li>
						<li>
							<a href="myLikePosts.do"><span class="tab3">관심 스타일</span></a>
						</li>
					</ul>
				</div>
				<div class="viewdv">
					
				</div>
				<div class="listdv">
					<p>추가하신 스타일이 없습니다.</p>
					<a href="#" type="button">STYLE 바로가기</a>
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
		}// created
	});
</script>