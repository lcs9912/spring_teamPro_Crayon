<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="UTF-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.3/vue.min.js"></script>
<script src="https://unpkg.com/vue2-editor@2.3.11/dist/index.js"></script>
<title>경매입찰</title>
<style>
</style>
</head>
<body>
<div id="app">
	
	<div>경매 번호 : {{info.auctionNumber}}</div>
	<div>경매 물품 : {{info.auctionProduct}}</div>
	<div>경매 시작가격 :{{info.auctionStartPrice}}</div>
	<div>경매 한도가격 : {{info.auctionMaxPrice}}</div>
	<div>시작시간 : {{info.auctionStartDate}}</div>
	<div>마감시간 : {{info.auctionEndDate}}</div>

	<div>
		<label>입찰한 금액: {{info.userPoint}}</label>
	</div>

	

</div>
</body>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		userId : "${sessionId}",
		auctionNumber : "${map.auctionNumber}",
		info : {
			
		},
	},// data
	methods : {
		
        fnGetList : function(){
        	 var self = this;
             var nparmap = {auctionNumber : self.auctionNumber, userId : self.userId};
             $.ajax({
                 url : "/auction/check.dox",
                 dataType:"json",	
                 type : "POST", 
                 data : nparmap,
                 success : function(data) {
                	 self.info = data.info;
                	 if(self.auctionNumber!=self.userId){
                		 alert("참여하지않았습니다 ");
                		 window.history.back();
                	 }
                	
                 },
             	
                 
               
             
             }); 
        },
       
        
	}, // methods
	created : function() {
		var self = this;
		
		self.fnGetList();
		
	}// created
});
</script>