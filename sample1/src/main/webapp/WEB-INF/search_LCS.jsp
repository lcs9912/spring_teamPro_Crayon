<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" 
crossorigin="anonymous" referrerpolicy="no-referrer" /> <!-- 아이콘 -->
<title>검색</title>
<style>
.recentSearch{
	margin-top: 19px;
}
.recentSearch span{
	margin-right: 5px;
	border: 1px solid #ebebeb;
	padding: 5px 10px;
	border-radius: 30px;
	color: rgba(34,34,34,.8);
	cursor: pointer;
	
}

.recentSearch span:hover{
	font-weight: bold;
}

.recentSearch i{
	margin-left: 5px;
	color: gray;
	cursor: pointer;
}

.recentTitle{
	margin-top: 10px;
}
.fa-x{
	margin-left: 30px;
	cursor: pointer;
}

#searchInput{
	cursor: pointer;
}

#bestSearch{
	margin-top: 19px;
}

li{
	margin-bottom: 10px;
	cursor: pointer;
}
a{
	cursor: pointer;
	color: rgba(34,34,34,.8);
	text-decoration-line: none;
}
#searchAllRemove{
	cursor: pointer;
}

</style>
</head>
<body>
<div id="app">
	<!-- 검색 인풋 -->
	<div id="searchInput">검색
		<input v-model="searchName" @keyup.enter="fnSearch()">
		<i class="fa-regular fa-circle-xmark" @click="searchName = ''"></i> <!-- 검색어 초기화 -->
		<button @click="fnSearch">검색</button>
		<i class="fa-solid fa-x" @click="fnReturn"></i>
	</div>
	
	<!-- 최근 검색어 -->
	<div class="recentTitle">최근 검색어<sub id="searchAllRemove" @click="fnEemoveSearchAll">모두 지우기</sub></div>
	<div class="recentSearch">
		<span v-for="item in userList" v-if='item.searchRemove != "Y"'>
			<a @click="fnASearch(item.searchName)">{{item.searchName}}</a>
			<i class="fa-solid fa-xmark"  @click="fnRemoveSearch(item.searchName)"></i>
		</span>
	</div>
	
	<!-- 인기검색어 -->
	<div id="bestSearch">인기검색어</div>
	<ol>
		<li v-for="item in list">
			<a @click="fnASearch(item.searchName)">{{item.searchName}}</a><sub>{{item.searchCnt}}</sub><!-- 카운트는 약식으로 넣어둔거임 나중에 지우셈 -->
		</li> 
	</ol>
</div>
</body>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		list : [],
		userList : [],
		searchName : "",
		uId : "${sessionId}"
	},// data
	methods : {
		// 검색테이블 조회
		fnSearchList : function(){
			var self = this;
			var nparmap = {}
			  $.ajax({
	                url:"/search/list.dox", 
	                dataType:"json", 
	                type : "POST",  
	                data : nparmap, 
	                success : function(data) {
						self.list = data.list;
	                }
	            });  
		},
		// 유저의 검색기록 조회
		fnUserSearchList : function(){
			var self = this;
			var nparmap = {uId : self.uId}
			  $.ajax({
	                url:"/search/userList.dox", 
	                dataType:"json", 
	                type : "POST",  
	                data : nparmap, 
	                success : function(data) {
						self.userList = data.userList;
	                }
	            });  
		},
		// 검색
		fnSearch : function(searchName){
			var self = this;
			var nparmap = {searchName : self.searchName, uId : self.uId};
			   $.ajax({
	                url:"/search.dox", 
	                dataType:"json", 
	                type : "POST",  
	                data : nparmap, 
	                success : function(data) {
	                	self.fnSearchList();
	            		self.fnUserSearchList();
						$.pageChange("/productList.do", {searchName : self.searchName});  
	                }
	            });   
		},
		
		fnASearch : function(searchName){
			var self = this;
			var nparmap = {searchName : searchName, uId : self.uId};
			   $.ajax({
	                url:"/search.dox", 
	                dataType:"json", 
	                type : "POST",  
	                data : nparmap, 
	                success : function(data) {
	                	self.fnSearchList();
	            		self.fnUserSearchList();
	            		console.log(searchName);
						$.pageChange("/productList.do", {searchName : searchName});  
	                }
	            });   
		},
		// 유저의 검색 기록 삭제
		fnRemoveSearch : function(searchName){
			var self = this;
			var nparmap = {searchName : searchName, uId : self.uId}
			  $.ajax({
	                url:"/search/remove.dox", 
	                dataType:"json", 
	                type : "POST",  
	                data : nparmap, 
	                success : function(data) {
						console.log(searchName);
						self.fnUserSearchList();
						
	                }
	            });  
		},
		fnEemoveSearchAll : function(){
			var self = this;
			var nparmap = {uId : self.uId};
			if(!confirm("모든 최근검색어를 삭제하시겠습니까?")){
				return;
			};
			  $.ajax({
	                url:"/search/removeAll.dox", 
	                dataType:"json", 
	                type : "POST",  
	                data : nparmap, 
	                success : function(data) {
						self.fnUserSearchList();
						
	                }
	            });  

		},
		// 한페이지 뒤로이동
		fnReturn : function(){
			history.back();

		}
	}, // methods
	created : function() {
		var self = this;
		self.fnSearchList();
		self.fnUserSearchList();
	}// created
});
</script>