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
#container {
  width: 800px;
  margin: 100px auto;
}

.recentSearch {
  margin-top: 19px;
}

.recentSearch span {
  border: 1px solid #ebebeb;
    border-radius: 20px;
    cursor: pointer;
    display: inline-block;
    line-height: 25px;
    margin: 0 6px 8px 0;
    padding: 3px 12px;
    position: relative;
  
}

.recentSearch span:hover {
  font-weight: bold;
}

i{
	cursor: pointer;
}

.recentSearch i {
  margin-left: 5px;
  color: gray;
  
}

.recentTitle {
  margin: 20px 0px;
}
input{
	border: none;
    border-bottom: 4px solid black;
    width: 761px;
    font-size: 24px;
    letter-spacing: -.015em;
    line-height: 29px;
    overflow: hidden;
    padding: 0 13px 0 1px;
    text-overflow: ellipsis;
    white-space: nowrap;
    padding-bottom: 10px;
    outline: none;
   
}

/* 한페이지 뒤로가기 버튼 */
#pageReturn {
  font-size: 30px;
  position: relative;
  top: -29px;
  left: -96px;
}

/* 검색어 초기화 */
#searchReset{
 position: relative;
  top: -2px;
  left: -25px;
}


#bestSearch {
  margin-top: 19px;
}

ol {
    display: block;
    list-style-type: decimal;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
    column-count: 2;
}

li {
  font-weight: bold;
  margin-bottom: 10px;
  cursor: pointer;
  box-sizing: border-box;
  text-align: -webkit-match-parent;
  color: rgba(34, 34, 34, .8);
}

li span{
	font-weight: normal;
	color: rgba(34, 34, 34, .8);
}

a {
  cursor: pointer;
  color: rgba(34, 34, 34, .8);
  text-decoration-line: none;
}

#searchAllRemove {
  cursor: pointer;
}

sub{
	margin-left: 10px;
	border-bottom: 1px solid;
}
#notSession{
	margin-left: 30px;
	font-style: italic;
}
#notSession a{
	text-decoration: underline;
}

</style>
</head>
<body>
<div id="app">
<div id="container">
	<!-- 검색 인풋 -->

	<div id="searchInput">
		<i class="fa-solid fa-rotate-left" @click="fnReturn" id="pageReturn"></i> <!-- 한페이지 뒤로가기 버튼 -->
		<input v-model="searchName" @keyup.enter="fnSearch()" placeholder="브랜드명, 모델명, 모델번호" autofocus>
		<i class="fa-regular fa-circle-xmark" id="searchReset" @click="searchNameReset" v-if="searchName != ''"></i> <!-- 검색어 초기화 -->
	</div>
	
	<!-- 최근 검색어 -->
	<div class="recentTitle">최근 검색어<sub id="searchAllRemove" @click="fnEemoveSearchAll">모두 지우기</sub></div>
	<div id="notSession" v-if='uId ==""'>로그인 이후 확인 가능합니다 <a href="login.do">로그인</a></div>
	<div class="recentSearch">
		<span v-for="item in userList" v-if='item.searchRemove != "Y"' id="recentSpan">
			
			<a @click="fnClickSearch(item.searchName)" v-if='uId != ""'>{{item.searchName}}</a>
			
			<i class="fa-solid fa-xmark"  @click="fnRemoveSearch(item.searchName)"></i>
		</span>
	</div>
	
	<!-- 인기검색어 -->
	<div id="bestSearch">인기검색어</div>
	<ol>
		<li v-for="(item, index) in list.slice(0, 20)">
			<span>
				<a @click="fnClickSearch(item.searchName)">{{item.searchName}}</a>
			</span>
		</li> 
	</ol>
</div>
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
		// 검색어 클릭하여 검색
		fnClickSearch : function(searchName){
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
		searchNameReset : function(){
			var self = this;
			self.searchName = ""; 
			
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