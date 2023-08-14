<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

</style>

</head>
<%@ include file="../header/header1.jsp"%>
<%@ include file="../header/header2.jsp"%>
<body>
<div id="app">
	<div style="margin-bottom : 5px; margin-left : 2px;">
	</div>
	<table>
		<tr>
			<th>선택</th>		
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>등록날짜</th>
		</tr>
		<tr v-for="item in list">
			<td><input type="checkbox" :value="item.no" v-model="selectComment"></td>
			<td>{{item.no}}</td>
			<td ><a @click="fnView(item)" href="javascript:;"> {{item.title}} </a><a v-if="item.commCnt >0">({{item.commCnt}})</a></td>
			<td>{{item.buser}}</td>
			<td>{{item.cnt}}</td>
			<td>{{item.cdatetime}}</td>
		</tr>
	</table>
	<button @click="fnBoardAdd"> 글쓰기</button>
	<button @click="fnRemove"> 삭제</button>

</div>
</body>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		list : [],		
		no :"",
		uId : "${sessionId}",
		Name : "${sessionName}",
		status : "${sessionStatus}",
		selectComment : [] 
	},// data
	methods : {
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
                	console.log(self.list);
                }
            }); 
        },
        fnView : function(item){
        	var self = this;
        	$.pageChange("view.do", {no :item.no});
        },
        fnBoardAdd : function(){
        	var self = this;
        	location.href = "add.do";
        },
        fnRemove : function(){
        	var self = this;
        	if(!confirm("정말 삭제할거냐")){
         		 return;
         	 }        
        	var noList = JSON.stringify(self.selectComment);
        	var nparmap = {text : "테스트 문자열" , selectComment : noList };
        	 $.ajax({
                 url : "delete.dox",
                 dataType:"json",	
                 type : "POST", 
                 data : nparmap,
                 success : function(data) { 
                	alert("삭제되었다");
                	self.fnGetList();
                	self.selectItem = [];
                 	
                 }
             }); 
        }
        
	}, // methods
	created : function() {
		var self = this;
		self.fnGetList();
	}// created
});
</script>