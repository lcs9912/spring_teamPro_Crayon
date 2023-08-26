<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://kit.fontawesome.com/047f82d071.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>경매리스트</title>
<style>
	table{
		border : 1px solid black;
		border-collapse: collapse;
		text-align : center;
		margin: 0 auto;
		width:1200px;
	}
	th, td {
		border : 1px solid black;
		padding : 5px 10px;
	}
	th{
	background-color:tomato; color:#fff;
	}
	td{
	height:120px;
	width:45px;
	}


.auctionwrap {
	width:100%;
}
.auctiontable {
	width:1200px; margin:180px auto;
}
.endbtn{
background-color:white;
border-radius:10px;
width:70px;
height:40px;

}
.endbtn:hover{
background-color:#eee;
}
.auctioneditbtn{
text-align: right; margin-top:20px;
width:1200px;
}
.editbtn{
background-color:white;
border:1px solid #a2a2a2;
border-radius:10px; width:100px; height:50px;

}
.editbtn:hover{
background-color:tomato; color:#fff;
}
.picarea{
width:120px; 
height:110px;
}
.picarea:hover img{
	transform:scale(1.1); 
}
.movebtn {
  text-align: center;
  display: flex;
  justify-content: center;
}
.movebtn button{
width : 40px;
height: 30px;
background-color : white;
font-weight: bold;
cursor: pointer;
border : 1px solid #eee;
}
.auctionnum{
font-weight:bold;
font-size:20px;
}
</style>
</head>
<%@ include file="../header/mainheader.jsp"%>
<body>
<div id="app">
	<div class="auctionwrap">	
		<div class="auctiontable">
		<div style="text-align:center; margin:45px 0;"><h1>경매등록</h1></div>
		<table>
			<tr>
				<th>경매번호</th>
				<th>물품 사진</th>		
				<th>경매물품(상품이름)</th>
				<th>시작가격</th>
				<th>참여인원</th>
				<th>시작날짜</th>
				<th>마감날짜</th>
				<th>종료버튼</th>	
			</tr>
			
			<tr v-for="item in paginatedItems" v-if="item.auctionEndyn!='Y'">			
				<td class="auctionnum">{{item.auctionNumber}}</td>
				<td class="picarea"><img :src="item.pImgPath"></td> 
				<td><a @click="fnView(item)" href="javascript:;"> {{item.auctionProduct}}</td>
				<td>{{item.auctionStartPrice}}</td>			
				<td>{{item.usercnt}}</td>			
				<td>{{item.auctionStartDate}}</td>
				<td>{{item.auctionEndDate}}</td>
				<td v-if="isAuctionExpired(item)"><button @click="fnAuctionEndU(item)">종료</button></td>
				<td v-else></td>
			</tr>
			
		</table>
		<div class="auctioneditbtn">
		<!-- <div v-if="status=='U'"> -->
		<button class="editbtn" @click="fnAuctionAdd">경매 등록</button>
		<!-- </div> -->
		</div>
		<div class="movebtn">
	    <button @click="changePage(-1)">
	        <i class="fa-solid fa-chevron-left"></i>
	    </button>
	    
	    <button class="selectpagebtn"
	        v-for="pageNumber in totalPages" :key="pageNumber" @click="goToPage(pageNumber)"
	        :class="{ 'selected': pageNumber === currentPage, 'bold-page-number': pageNumber === currentPage }"
	        :style="{ backgroundColor: pageNumber === currentPage ? '#eee' : 'inherit' }">
	        {{ pageNumber }}
	    </button>
	    
	    <button @click="changePage(1)">
	        <i class="fa-solid fa-chevron-right"></i>
	    </button>
		</div>
		</div>
	</div>
</div>
</body>
<%@ include file="../header/footer.jsp"%>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		list : [],	
		info : {},
		auctionNumber :"",
		uId : "${sessionId}",
		Name : "${sessionName}",
		status : "${sessionStatus}",
		selectComment : [] ,
		endDateTimestamp : "",
		currentTimestamp : "",
		itemsPerPage: 5,
	    currentPage: 1,
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
                	console.log(self.list);
                
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
        
        fnAuctionEnd : function(info){
       	   var self = this;   
              var nparmap = info;      
              $.ajax({
                  url : "/auction/auction/end.dox",
                  dataType:"json",	
                  type : "POST", 
                  data : nparmap,
                  success : function(data) { 
               	   alert("종료완료");
               	self.fnGetList();
                  }
              }); 
         },
         
         fnAuctionEndU : function(item){
         	   var self = this;
                var nparmap = {auctionNumber : item.auctionNumber};
                $.ajax({
                    url : "/auction/endU.dox",
                    dataType:"json",	
                    type : "POST", 
                    data : nparmap,
                    success : function(data) { 
                    	self.info = data.info1;
                    	self.fnAuctionEnd(self.info);
                    }
                }); 
           },
         isAuctionExpired: function(item) {
             var currentTimestamp = new Date().getTime();
             var endDateTimestamp = new Date(item.auctionEndDate).getTime(); 
             return endDateTimestamp < currentTimestamp;
         },
         /* 5개 넘어가면 페이징메서드 */
         changePage(offset) {
             if (this.currentPage + offset > 0 && this.currentPage + offset <= this.totalPages) {
                 this.currentPage += offset;
             }
         },
         goToPage(pageNumber) {
             this.currentPage = pageNumber;
         },
  		/* 시작가격 3자리마다 ,넣는 정규식 */
         formatPrice(value) {
             if (!value) return '';
             return value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
         },
  
        
	}, // methods
	  /* 5개 넘어가면 페이징메서드 */
	computed: {
	    totalPages() {
	        return Math.ceil(this.list.length / this.itemsPerPage);
	    },
	    paginatedItems() {
	        const startIndex = (this.currentPage - 1) * this.itemsPerPage;
	        const endIndex = startIndex + this.itemsPerPage;
	        return this.list.slice(startIndex, endIndex);
	    },
	},
	
	created : function() {
		var self = this;
		self.fnGetList();
		
	}// created
});
</script>