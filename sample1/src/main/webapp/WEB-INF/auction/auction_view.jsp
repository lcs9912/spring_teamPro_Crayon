<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script src="https://kit.fontawesome.com/047f82d071.js" crossorigin="anonymous"></script>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script> <!-- 차트표 api -->
	<script src="https://cdn.jsdelivr.net/npm/vue-apexcharts"></script> <!-- 차트표 api vue -->	
<meta charset="UTF-8">
<title>경매상세페이지</title>
<style>
*{
	margin:0;
	padding:0;
}

.productcontents{
	margin-left : auto;
	margin-right : auto;
	max-width : 1280px;
	margin-top : 50px;
	padding: 30px 40px 120px;
}
.leftcolumnbox{
background-color:#f4f4f4;
width : 600px;
height: 600px;
display:block;
}
.leftbox{
width:600px;
position: fixed;
}

.fixed {
position: absolute;
top: 650px;
        }
.rightcolumn{
float : right;
border-left : 1px solid #eee;
width : 600px;
padding-left : 40px;

}
.selldanger{
margin-top : 10px;
width : 600px;
border-radius : 10px;
background-color : #f6f6f6;
}
.caremark{
    background-color: #ff8824;
    border-radius: 2px;
    color: #fff;
    display: block;
    float: left;
    font-size: 12px;
    font-weight: 600;
    letter-spacing: -.06px;
    line-height: 12px;
    margin-right: 4px;
    padding: 3px 5px 2px;
}

.dangertext{
    display: block;
    font-size: 13px;
    font-weight: 600;
    letter-spacing: -.07px;
    line-height: 15px;
    overflow: hidden;
}
.submarktext{
    display: block;
    color: #a0a0a0;
    font-size: 12px;
    letter-spacing: -.06px;
    line-height: 14px;
    margin-top: 4px;
    overflow: hidden;
}

.brandheader{
font-weight: bold;
font-size: 20px;
margin-bottom:10px;
}
.subtitle{
font-size: 18px;
    font-weight: 400;
    letter-spacing: -.09px;
    margin-bottom: 4px;
    padding-top : 5px; 
   
}
.subtitle2{
    color: rgba(34,34,34,.5);
    font-size: 14px;
    letter-spacing: -.21px;
    letter-spacing: -.15px;
    line-height: 17px;
     margin-top:10px;
     margin-bottom:10px;
    }
.toptitlebox{
margin-bottom:20px;
}
.detailsize{
color: rgba(34,34,34,.8);
border-bottom : 1px solid #eee;
    font-size: 13px;
    letter-spacing: -.07px;
    line-height: 16px;
    padding-top: 4px;
    width:600px;
    padding-bottom: 10px;
}
.sizebtn , .recentsellpay{
float:right;
}
.recentsell{
padding-bottom : 15px;
margin-top : 10px;
width:600px;
}
.sizeandrecent{
padding-bottom:10px;
}
.btnaction{
margin-top:15px;
width:600px;

}
.buyaction{
width : 60%;
height : 50px;
border-radius: 10px;
cursor: pointer;
}

.buyaction{
border:none;
color:white;
background-color:#a2a2a2;);
}
.buyaction:hover{
border:none;
color:white;
background-color:black;);
}

.btnaction{
text-align:center;

}
.nowbuy{
 line-height:50px;
font-size: 18px;
    letter-spacing: -.27px;
    text-align: center;
    height:100%;
    border-right: 1px solid rgba(34,34,34,.1);
    color:white;
}
.interestbtn{

width:360px;
background-color:white;
border: 1px solid #ebebeb;
border-radius: 10px;
margin-top : 10px;
padding-top : 15px;
padding-bottom : 15px;
margin-left:120px;
font-size: 15px;
font-weight: 400;
font-size:15px;
}

.productinfodetail{
width:600px;
}

.productdetailheader{
font-weight: bold;
font-size: 20px;
margin-bottom:10px;
border-bottom : 1px solid #eee;
padding-bottom: 15px;
}

.buybeforeread{
font-weight: bold;
font-size: 20px;
border-bottom : 1px solid #eee;
padding-bottom: 15px;
}

.detailproductheader{
padding-top:10px;
width:140px;
border-right:1px solid #eee;
text-align:center;
color: #a0a0a0;
font-size: 12px;
display:inline-block;
}

.productlist{
border-bottom:1px solid #eee;
padding-bottom:15px;
}

.displayitemtitle , .displayitemwaytitle{
font-size: 18px;
    font-weight: bold;
    letter-spacing: -.21px;
    padding-bottom: 12px;
    margin-top : 20px;
    padding-top : 15px;
    border-top : 1px solid #eee;
    width:600px;
    text-align:center;
    
}

.displaypoint{
width:600px;
margin-top:30px;
display:block;

}



.displaybidderbox{
width:600px;
height: 300px;
border:1px solid #eee;
border-radius:10px;

}
.pointcontents{
margin-top:10px;
}

.displayiteminfo{
margin-bottom:20px;
width:600px;
}
.displaygraph{
width:600px;
border-top:1px solid #eee;
border-bottom:1px solid #eee;
}
.buybeforeread{
margin-top:20px;
}
.displaybuybefore{
width:600px;
}

.buybeforecontents{
border-bottom:1px solid #eee;
padding-top : 15px;
padding-bottom : 15px;
font-size: 15px;
width:600px;
display:inline-block;
cursor: pointer;
}

.custom-tooltip {
    background-color: rgba(0, 0, 0, 0.8);
    color: white;
    padding: 8px 10px;
    font-size: 12px;
    border-radius: 4px;
    
}
.actiontimearea{
text-align:center;
margin-top : 5px;
width:600px;
font-weight:bold;
}
.endtimenum{
margin-top:5px;
color:#FF4A4A;
font-size:25px;
}
.bidderlisttitle{
padding:15px 0px 0px 15px;
margin-left:120px;
font-size : 18px;
}
.bidderlist{
padding:10px 0px 0px 15px;
}
  table {
    width: 100%;
    border-collapse: collapse;
    overflow: visible;
  }
  th{
  position: sticky;
    top: 0px;
  border:none;
    border-bottom: 1px solid #eee;
    padding: 10px;
    width:49%;
    background-color:#AEAEAE;
    color:white;
  }
  td{
  text-align:center;
  padding-top:3px;
  font-size:16px;
  }
  .biddernum{
  float:right;
  }
  .starttime,.endtime{
  display:inline-block;
  width:49%;
  text-align:center;
  font-weight:bold;
  
  }
	.startendtime{
	width:100%;
	text-align:center;
	margin-bottom:10px;
	}
	.actionendtime{
	border-top:1px solid #eee;
	padding-top:10px;
	}
	.startendnum{
	margin-top:5px;
	font-size:20px;
	}
	.starttime{
	border-right:1px solid #eee;
	}
</style>
</head>
<%-- <%@ include file="../header/mainheader.jsp"%> --%>
<body>
<div id="app">
	
	<div>경매 번호 : {{info.auctionNumber}}</div>
	<div>물품 사진 :<img :src="info.pImgPath" style="max-width : 100px">
	</div>
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
function openPopup(url) {
    const popup = window.open(url, 'popupWindow', 'width=800,height=600,scrollbars=yes');
    popup.focus();
}
</script>