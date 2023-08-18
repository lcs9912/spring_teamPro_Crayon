<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script src="../js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<meta charset="UTF-8">
	<title>스타일</title>
<style>
	.box {
	    width: 150px;
	    height: 150px; 
	    border-radius: 70%;
	    border : 1px solid black;
	    overflow: hidden;
	}
	.profile {
	    width: 100%;
	    height: 100%;
	    object-fit: cover;
	}
	#tab {
		border-top : 1px solid black;
		border-bottom : 1px solid black;
		width : 800px;
		height : 500px;
	}
	.posts {
		opacity : 0;
	}
	#tab_posts {
		text-decoration : none;
		color: inherit;
	}
	label {
		margin-bottom : 5px;
	}
	#tab_tag {
		text-decoration : underline;
		text-decoration-thickness: 3px;;
		color: inherit;
		font-weight : bold;
	}
	#tab_like {
		text-decoration : none;
		color: inherit;
	}
	.contents {
		text-align : center;
		margin-top : 200px; 
	}
</style>
</head>
<%@ include file="../header/header1.jsp" %>
<%@ include file="../header/header2.jsp" %>
<body>
<div id="app">
	<div>
		<div id="header">
			<div class="box">
				<img class="profile" src="/img/style/IMAGE NULL.png">
			</div>
			<span>닉네임<button>프로필관리</button>
				<div>
					<span>팔로워</span>
					<span>팔로잉</span>
				</div>
				<div>아이디</div>
			</span>
		</div>
		<div class="tab_menu">
			<span>
				<a id="tab_posts" href="myPosts.do">
					<input type="radio" class="posts">
					<label>게시물0</label>
				</a>
				<a id="tab_tag" href="myTagProduct.do">
					<input type="radio" class="posts">
					<label>태그상품0</label>
				</a>
				<a id="tab_like" href="myLikePosts.do">
					<input type="radio" class="posts">
					<label>관심스타일0</label>
				</a>
			</span>
			
			<div id="tab">
				<div class="contents">
					<span>태그하신 상품이 없습니다.</span>
					<div><button>게시글 업로드</button></div>
				</div>
			</div>
		</div>
		
	</div>
</div>
</body>
<%@ include file="../header/footer.jsp" %>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		list : [],
	},// data
	methods : {
		//style 테이블에서 데이터 불러오기
		fnGetList : function(){
            var self = this;
            var nparmap = {};
            $.ajax({
                url : "list.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.list = data.list;
                }
            }); 
        },
       
	}, // methods
	created : function() {
		var self = this;
	}// created
});
</script>