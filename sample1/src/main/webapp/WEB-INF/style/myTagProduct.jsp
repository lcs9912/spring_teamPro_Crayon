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
	clear:both; margin-top:50px; margin-bottom:50px;
	}


.sailcontainer {width:1200px;}
	.profilearea {
		width:1200px; height:150px; border:2px solid #f8f8f8; border-radius:10px;
		}
		.profileinner1{
			width: 100px; height:100px; margin:25px 40px; float:left;					
			}
		.profileinner1 img {
			width: 100%;
			height: 100%;
			object-fit: cover;
			border-radius: 70%;
			overflow: hidden;			
		}
		.profileinner2{
			width: 400px; margin-top:25px; height:120px; line-height:25px; color:#888; font-size:13px;
			float:left;
		}
		.profileinner2 strong{
			font-size:25px; color:#000; font-weight:bold; margin-bottom:5px;
		}
		.profileinner2 p {margin:5px 0;}
		.profileinner2 a{
			display:inline-block; border:1px solid #999; border-radius:10px; 
			height:35px; line-height:35px; padding:0 8px; margin-left:20px;
			}
		
		.mylist{
			width:1200px; clear:both;
		}
		.listhead {width:1200px; height:30px; margin-top:30px; border-bottom:1px solid #ccc;}
			.tab_menu li {float : left; margin-right:25px; height:31px;}
				.tab_menu li a{display:block;}
				.tab_menu li:nth-child(1) {margin-top:3px;}
				.tab_menu li:nth-child(2) {border-bottom:2px solid #333; }
				
    	.listdv{
    		clear:both; width: 1200px; margin-bottom:100px; display: grid;
            grid-template-columns: repeat(4, 1fr); justify-content: space-between;          
     		}
     
     		.listdv article {width:width:250px;
                height: 300px; margin:0 20px;
                background: #fff;
                border-radius: 10px;
				}
				.listdv article picture {
                    width: 250px; margin:0;
                    height: 250px;                    
                	}
                    .listdv article picture img {
                        border-radius: 10px;
                        margin-bottom: 5px;
                    }
		
		.follow-num {
			font-weight : bold; 
			color : black;
			margin-left : 5px;
		}
		.else-btn {
			border:1px solid #999; border-radius:10px; padding:8px; line-height : 30px; font-size : 12px; font-weight : bold; 
			display:block; width:10%; margin:30 auto;
		}
		
		.listdv-else {
			margin-top:40px; height:30%; clear:both; 
    		width: 1200px; margin-bottom:50px; text-align:center;
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
					<strong>{{nickname}}</strong><a href="mypageprofile.do" type="button">프로필 관리</a>
					<p>
						<a href="#" type="button" style="border : none">팔로워<span class="follow-num">0</span></a>
						<a href="#" type="button" style="border : none">팔로잉<span class="follow-num">0</span></a>
					</p>
					<strong>{{sessionId}}</strong> <!-- 유저아이디 -->
				</div>
			</div>
			<div class="listhead">
					<ul class="tab_menu">
						<li>
							<a href="myposts.do"><span class="tab1">게시물</span></a>
						</li>
						<li>
							<a href="mytagproduct.do"><span class="tab2">태그 상품</span></a>
						</li>
						<li>
							<a href="mylikeposts.do"><span class="tab3">관심 스타일</span></a>
						</li>
					</ul>
				</div>
			<div class="mylist">
				
				<div class="listdv">
					<!-- <div v-for="item in list">
						<article> 
	                        <a @click="fnProInfo(item.productModel)" type="button"> 
	                            <picture>
	                                <img src="../img/style/Nike Dunk Low Retro Valerian Blue.jpg">
	                            </picture>
	                            <h5>Nike Dunk Low Retro Valerian Blue</h5>
	                            <p style="font-size : 12px; color : rgba(34,34,34,.8);">나이키 덩크 로우 레트로 발레리안 블루</p>
	                        </a>
	                    </article>
					</div> -->
				<!-- 	v-if="list.length == 0"  -->
					<div style="margin-top : 100px;" class="listdv-else">
						<p style="color : rgba(34,34,34,.8); font-size : 13px;">태그하신 상품이 없습니다.</p>
						<a class="else-btn" href="addstyle.do" type="button" style="color : rgba(34,34,34,.8);">게시글 업로드</a>
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