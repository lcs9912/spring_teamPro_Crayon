<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="UTF-8">
<title>경매리스트</title>
<style>
	table{
		border : 1px solid black;
		border-collapse: collapse;
		text-align : center;
	}
	th, td {
		border : 1px solid black;
		padding : 5px 10px;
	}
</style>
</head>
<body>
<div id="app">
	<div style="margin-bottom : 5px; margin-left : 2px;">
	</div>
	<table>
		<tr>
			<th>경매번호</th>
			<th>경매물품</th>
			<th>시작가격</th>
			<th>참여인원</th>
			<th>시작날짜</th>
			<th>마감날짜</th>
			
		</tr>
		<tr v-for="item in list">
			<td>{{item.auctionNumber}}</td>
			<td ><a @click="fnView(item)" href="javascript:;"> {{item.auctionProduct}}</td>
			<td>{{item.auctionStartPrice}}</td>			
			<td>{{item.usercnt}}</td>			
			<td>{{item.auctionStartDate}}</td>
			<td>{{item.auctionEndDate}}</td>
		</tr>
	</table>
	<!-- <div v-if="status=='U'"> -->
	<button @click="fnAuctionAdd">경매 등록</button>
	<!-- <button @click="fnRemove"> 삭제</button> --> 
	<!-- </div> -->
</div>
</body>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		list : [],		
		list2 : [],		
		auctionNumber :"",
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
                url : "/auction/list.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.list = data.list;
                	self.list2 = data.list2;           
                	console.log(self.list2);
                }
            }); 
        },
        
        fnView : function(item){
        	var self = this;
        	$.pageChange("view.do", {auctionNumber :item.auctionNumber});
        },
        fnAuctionAdd : function(){
        	var self = this;
        	location.href = "update.do";
        },
        
        
	}, // methods
	created : function() {
		var self = this;
		self.fnGetList();
	}// created
});
</script>