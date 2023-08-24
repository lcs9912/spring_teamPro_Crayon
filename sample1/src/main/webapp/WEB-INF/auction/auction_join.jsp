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
table{
border:1px solid #a2a2a2;
border-collapse: collapse;
text-align:center;
margin : 0 auto;
}
table th, td {
border:1px solid black;
padding : 10px;
font-size: 13px;
border:none;
}
#app h2{
text-align:center;
}
th{
background-color:#eee;
}
.picarea{
width:350px;
height:300px;
margin-top:10px;
margin-left:45px;
background-color:#eee;
max-width:350px;
max-height:300px;
display:inline-block;
vertical-align: top;
}
.payarea{
margin-top:10px;
display:inline-block;
width:350px;
height:300px;
}
.payarea input{
width:250px;
height:30px;
text-align:right;
border:none;
border-bottom : 2px solid #a2a2a2;
}
.payarea input:focus {
outline: none;
}
.auctionbtnarea{
text-align:center;
margin-top : 30px;
}
.auctionbtn{
width:100px;
height:40px;
background-color:white;
border-radius:10px;
}
.auctionbtn:hover{
background-color:#eee;
}

</style>
</head>
<body>
<div id="app">
<h2>입찰하기</h2>
<div class="auctiontextarea">
	<table>
	<tr>
	<th>경매 번호</th>
	<th>경매 물품</th>
	<th>경매 시작가격</th>
	<th>경매 한도가격</th>
	<th>시작 시간</th>
	<th>마감 시간</th>
	<th>보유포인트</th>
	</tr>
	
	<tr>
	<td>{{info.auctionNumber}}2312213</td>
	<td>{{info.auctionProduct}}231221323122132312213</td>
	<td>{{info.auctionStartPrice}}2312213</td>
	<td>{{info.auctionMaxPrice}}2312213</td>
 	<td>{{info.auctionStartDate}}2312213</td>
	<td>{{info.auctionEndDate}}2312213</td>
	<td>0<b>P</b></td>
	</tr>

	</table>
	</div>
	
	<div class="picarea">
		1
	</div>
	
	<div class="payarea">
		<div style="text-align:center; font-size:25px; color:#a2a2a2">입찰 금액</div> 
		<div style="text-align:center; margin-top:5px;"><input type="text" id="number" v-model="info.aJoinPrice">P</div>
		<div style="text-align:right; margin-right:50px;">입찰 후 포인트 <b>P</b></div>
		
		<div class="auctionbtnarea">
			<button class="auctionbtn" @click="fnJoin">입찰 신청</button>
			</div>
	</div>



</div>
</body>
</html>
<script>
const input = document.querySelector('#number');
input.addEventListener('keyup', function(e) {
  let value = e.target.value;
  value = Number(value.replaceAll(',', ''));
  if(isNaN(value)) {
    input.value = 0;
  }else {
    const formatValue = value.toLocaleString('ko-KR');
    input.value = formatValue;
  }
})
var app = new Vue({
	el : '#app',
	data : {
		userId : "${sessionId}",
		auctionNumber : "${map.auctionNumber}",
		info : {
			aJoinPrice : "",
			qnaContents : "",
				
		},
	},// data
	methods : {
		fnJoin : function(){
            var self = this;
            var nparmap = self.info;
            nparmap.userId = self.userId;
            $.ajax({
                url : "join.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	alert("참여 완료하셨습니다.");
                	window.history.back();
                }
            }); 
        },
        fnGetList : function(){
        	 var self = this;
             var nparmap = {auctionNumber : self.auctionNumber};
             $.ajax({
                 url : "/auction/view.dox",
                 dataType:"json",	
                 type : "POST", 
                 data : nparmap,
                 success : function(data) {
                	 self.info = data.info;
                 }
             }); 
        },
       
        
	}, // methods
	created : function() {
		var self = this;
		
			self.fnGetList();
		
	}// created
});
</script>