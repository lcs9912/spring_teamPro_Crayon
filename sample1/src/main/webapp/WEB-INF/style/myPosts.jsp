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
			width: 200px; margin-top:25px; height:100px; line-height:25px; color:#888; font-size:13px;
			float:left;
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
			width:1200px; clear:both;
		}
		.listhead {width:1200px; height:30px; margin-top:30px; border-bottom:1px solid #ccc;}
			.tab_menu li {float : left; margin-right:25px; height:28px;}
				/*.tab_menu li a{display:block;}*/
			.tab_menu li:nth-child(1) {border-bottom:2px solid #333; margin-top:3px;}
				
    	.listdv{
    		/* height:325px;  */ margin-top:20px; clear:both; 
    		width: 1200px; margin-bottom:50px; display: grid;
            grid-template-columns: repeat(4, 1fr); gap: 5px;            
     		}
     	.listdv{
     		display: flex;
		    flex-wrap: wrap;
		    justify-content:space-between;
     		}
     		.listdv article {width: 230px;
                height: 401px;
                background: #fff;
                border-radius: 10px;
				}
				.listdv article picture {
                    width: 230px;
                    height: 230px;
                    position: relative;
                	}
                    .listdv article picture img {
                        border-radius: 10px;
                        margin-bottom: 7px;
                    }
		
		
		
		/*  */
		
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
					<strong>{{nickname}}</strong>
					<a href="mypageprofile.do">프로필 관리</a>
					<p>
						<a href="#" style="border : none">팔로워<span class="follow-num">0</span></a>
						<a href="#" style="border : none">팔로잉<span class="follow-num">0</span></a>
					</p>
					<p><strong>{{sessionId}}</strong></p> <!-- 유저아이디 -->
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
				
				<div class="listdv">
					<div v-for="item in list" v-if="item.contents != null">
							<article> 
	                            <a @click="fnProInfo(item.productModel)"> 
	                                <picture>
	                                    <img src="../img/style/style_9.jpg">
	                                </picture>
	                                <h5>{{item.userNickname}}</h5>
	                                <p style="font-size : 12px;">{{item.contents}}</p>
	                            </a>
	                        </article>
					</div>
					 <div v-else style="margin-top : 100px;">
						<p style="color : rgba(34,34,34,.8); font-size : 13px;">공유하신 사진이 없습니다.</p>
						<a href="style/add.do" type="button" style="color : rgba(34,34,34,.8);">게시글 업로드</a>
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