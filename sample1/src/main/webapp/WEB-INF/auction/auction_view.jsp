<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="UTF-8">
<title>경매상세페이지</title>
<style>

</style>
</head>
<%@ include file="../header/header1.jsp"%>
<%@ include file="../header/header2.jsp"%>
<body>
<div id="app">
	<!-- <div>이미지 : {{info.img}}</div> -->
	
	<div>경매 번호 : {{info.auctionNumber}}</div>
	<div>경매 물품 : {{info.auctionProduct}}</div>
	<div>경매 시작가격 :{{info.auctionStartPrice}}</div>
	<div>경매 한도가격 : {{info.auctionMaxPrice}}</div>
	<div>시작시간 : {{info.auctionStartDate}}</div>
	<div>마감시간 : {{info.auctionEndDate}}</div>
	<div>참여자수  : {{info.usercnt}}</div>
	
	<div v-if="info.aLikeUser==null">
	<button @click="fnAuctionLike()">좋아요 </button>
	</div>
	
	<div v-else>
	<button @click="fnAuctionUnLike()">좋아요해제 </button>
	</div>
	
	<div v-if="info.duplicateStatus=='Y'||info.duplicateStatus==null">
	<button @click="fnAuctionJoin()">참여하기 </button> 
	</div>
	
	<div v-else>
	<button @click="fnAuctionCheck()">참여확인하기 </button>
	</div>
	<table >
		<tr v-for="item in list">
			<td>아이디: {{item.userId}} : </td>
			<td>참가시간 : {{item.auctionDate}} </td>	
		</tr>
	</table> 
	
</div>
</body>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		list : [],
		info : {},
		auctionNumber : "${map.auctionNumber}",
		text: "",
		uId : "${sessionId}",
		Name : "${sessionName}",
		status : "${sessionStatus}",
		selectItem : [],
		
		
	},// data
	methods : {
		fnGetList : function(){
            var self = this;
            var nparmap = {auctionNumber : self.auctionNumber, uId : self.uId};
            $.ajax({
                url : "/auction/view.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	console.log(data);
                	self.info = data.info;
                }
            }); 
        },
        fnAuctionJoin : function(){
          	var self = this;
           	$.pageChange("join.do", {auctionNumber :self.auctionNumber});       
        },
        fnAuctionCheck : function(){
            var self = this;
           	$.pageChange("check.do", {auctionNumber : self.auctionNumber});    
        },
        fnGetJoinList : function(){
            var self = this;
            var nparmap = {auctionNumber : self.auctionNumber};
            $.ajax({
                url : "/auction/user/list.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	console.log(data);
                	self.list = data.list;
                }
            }); 
        },
        fnAuctionLike : function(){
        	 var self = this;
             var nparmap = {auctionNumber : self.auctionNumber, uId : self.uId};
             $.ajax({
                 url : "/auction/user/like.dox",
                 dataType:"json",	
                 type : "POST", 
                 data : nparmap,
                 success : function(data) { 
                	 alert("관심등록 완료.");
                 	
                 }
             }); 
        },
        fnAuctionUnLike : function(){
       	 var self = this;
            var nparmap = {auctionNumber : self.auctionNumber, uId : self.uId};
            $.ajax({
                url : "/auction/user/unlike.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
               	 alert("관심등록 해제완료.");
                	
                }
            }); 
       },
      
     
      
	}, // methods
	created : function() {
		var self = this;
		 self.fnGetList();
		 self.fnGetJoinList();
		 
	  
		
	}// created
});
</script>