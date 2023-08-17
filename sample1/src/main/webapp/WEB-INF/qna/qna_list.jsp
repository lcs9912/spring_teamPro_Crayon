<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="UTF-8">
<title>QnA</title>
<style>
	table{
		border: 1px solid black;
		border-collapse: collapse;
		text-align: center;
	} 
	th,td{
		border: 1px solid black;
		pedding : 5px 10px ;
	} 
	
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
			<td><input type="checkbox" :value="item.qnaNumber" v-model="selectComment"></td>
			<td>{{item.qnaNumber}}</td>
			<td><a @click="fnlistView(item)" href="javascript:;" >[{{item.qnaTypeName}}] 
			{{item.qnaTitle}}</a></a><a v-if="item.comCnt >0">({{item.comCnt}})</a></td>
			<td>{{item.userId}}</td>
			<td>{{item.qnaCnt}}</td>
			<td>{{item.qnaDate}}</td>
		</tr>
	</table>
	<button @click="fnQnaAdd()"> 게시물 작성</button>

</div>
</body>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		list : [],		
		qnaNumber :"",
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
                url : "/qna/list.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.list = data.list;
                	console.log(self.list);
                }
            }); 
        },
        fnQnaAdd : function(){
        	var self =this;
        	location.href ="/qna/add.do"
        },
        fnlistView : function(item){
        	var self = this;
        	$.pageChange("/qna/view.do", {qnaNumber :item.qnaNumber});
        }
       
        
	}, // methods
	created : function() {
		var self = this;
		self.fnGetList();
	}// created
});
</script>