<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://kit.fontawesome.com/15a79bdff8.js" crossorigin="anonymous"></script>
<title>CrayoN 헤더 인클루드 수정페이지</title>
<style>
	* {margin:0; padding:0; box-sizing: border-box;}
	li {list-style:none;}
	a {text-decoration:none; color: inherit; }

	.headerwrap{/* 헤더 로고 및 메뉴 영역 CSS 시작*/
		width:100%; height:120px; 
		padding-bottom:120px; position:fixed;
		left:0; right:0; top:0; z-index:2;
	}

	.headerwrap header {/*헤더 로그인 역역 CSS*/
		width:1200px; height:120px;
		margin:0 auto; 
	}
	.loginmenulist {position:relative; width:1200px; height:20px;}
		.loginmenulist ul{
			position:absolute; top:5px; right:0;
		}
		.loginmenulist li{
			display:inline-block; margin-left:15px;
		}
		.loginmenulist a {
			font-size:12px;
			font-weight: bold;		
			color: #777;		
		}/*헤더 로그인 역역 CSS 끝*/
	
	.headermainlogo {/*헤더 로고 역역 CSS*/
		font-weight: bold; 
		position:relative; 
		height:30px;
	}
		.headermainlogo>h1{display:inline-block; width:200px; height:50px;
					   font-size:45px; letter-spacing: -1px;
		}/*헤더 로고 역역 CSS 끝*/
	    .headermenu { /*헤더 헤더메뉴 역역 CSS*/       
       		font-size: 25px;       
			position:absolute;
			top:30px; 
			right:0;
    	}
		.headermenu>li{
			display:inline-block; margin-left:20px;
		}
    	.headermenu>li>a {
			display:block;
			color: black;			    
    	}/*헤더 헤더메뉴 역역 CSS 끝*/    
		/* 헤더 로고 및 메뉴 영역 CSS 종료*/
</style>
</head>
<body>
	<div id="headerApp">
		<div class="headerwrap">
			<header>
				<div class="loginmenulist"><!-- 헤더 로그인 메뉴 영역 시작 -->
					<ul>
						<li class="loginbtn" v-if="loginOut != '' "><a href="login.do">로그아웃</a></li>
						<li class="loginbtn" v-else><a href="login.do">로그인</a></li>					
						<li class="#"><a href="#">장바구니</a></li>
						<li class="#"><a href="#">관심상품</a></li>
						<li class="#"><a href="mypage.do">마이페이지</a></li>
					</ul>
				</div><!-- 헤더 로그인 메뉴 영역 종료 -->
				<div class="headermainlogo"><!-- 헤더 로고 및 헤더메뉴 영역 시작 -->
					<h1><a href="#">CrayoN</a></h1>
					<ul class="headermenu">
						<li><a href="#">SHOP</a></li>
						<li><a href="#">STYLE</a></li>
						<li><a href="#">HOME</a></sli>
						<li class="#"><a href="search.do"><i class="fa-solid fa-magnifying-glass"></a></i></li>
					</ul>
				</div><!-- 헤더 로고 및 헤더메뉴 영역 종료 -->
			</header>
		</div>
	</div>
</body>
</html>
<script>
var headerApp = new Vue({
	el : '#headerApp',
	data : {
		loginOut : "${sessionId}"
	},// data
	methods : {
		fnCheck : function(){
			var self = this;
			var nparmap = {}
			  $.ajax({
	                url:"list.dox", 
	                dataType:"json", 
	                type : "POST",  
	                data : nparmap, 
	                success : function(data) {  
						
	                }
	            });  
		},
	}, // methods
	created : function() {
		var self = this;
		
	}// created
});
</script>