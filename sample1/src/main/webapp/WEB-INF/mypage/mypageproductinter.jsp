<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<meta charset="UTF-8">
<title>관심상품</title>

<style>
	* {margin:0; padding:0;}

	li {
		list-style:none;
		}
	
	
	a {	
		text-decoration:none;
		color: inherit;
		}
	
	.mypagewrap {
		width:1200px; margin:50px auto;
		}
	.myinfonav {
		float:left; width:200px; color:#000; margin-bottom:100px; 
		}
		
	.myinfo h2{
			margin-bottom:20px;
		}	
	
		
	.myinfo h3{
			margin:30px 0;
		}	
		
	.myinfo ul li{
		margin:10px 0;
		}	
	
	.editlogininfo{
		width:1000px; float:left; margin-bottom:100px;
		}        
	.edithead {
		padding-bottom:15px; border-bottom:3px solid #000;
		}
	.loginedit {
		width:480px; padding-top:10px;
	}
		.interestarea{
			width:1000px;
			padding: 20px 0 19px;
		}
		.productpicture{
			width:80px; height:80px;
			background-color: rgb(235, 240, 245);
			display:inline-block;
			vertical-align: top;
		}
		.productdetail{
			display:inline-block;
			vertical-align: top;
		}
		
		html, body{
		    width: 100%;
		    height: 100%;
		    padding: 0;
		    margin: 0;
		}
		
		.productname{
			font-size:13px;	color: #222;
			font-weight: 700; height: 17px;
			line-height: 17px;
		}
		.productinfo{
			font-size: 13px;
		    letter-spacing: -.03px;
		    line-height: 18px;
		    margin-top: 2px;
		}
		
		.productsize{
			font-size: 13px;
		    font-weight: 700;
		    line-height: 16px;
		    margin-top: 25px;
		    
		}
		.nowbuy{
			line-height: 50px;
		    font-size: 18px; letter-spacing: -.27px;
		    text-align: center; width: 55px;
		    float: left; height: 100%;
		    border-right:1px solid rgba(34,34,34,.1);
		    color: white; line-height:60px;
		}
		
		.interestarea ul li{
			border-bottom:1px solid #eee;
			padding-bottom:20px;
			padding-top:20px;
		}
		.buybtn{
			float:right; border:none;
			color:white; background-color: rgb(239, 98, 83);
			width:180px; height: 60px;
			border-radius:10px; cursor: pointer;
			line-height:25px;
		}
		.delete{
			color: rgba(34,34,34,.8); 
		    font-size: 12px; letter-spacing: -.06px;
		    margin-top: -9px;  margin-left: 968px;
		    padding: 0 3px;
		    -webkit-text-decoration: underline;
		    text-decoration: underline;
		    cursor: pointer;	
		    
		}
</style>

</head>
<%@ include file="../header/shopheader.jsp"%>
<body>
	<div id="app">
	<div class="mypagewrap">
		<nav class="myinfonav">
		<div class="myinfo">
			<h2><a href="mypage.do">마이 페이지</a></h2>
			<h3>쇼핑 정보</h3>
			<ul>
				<li><a href="mypagebuylist.do">구매 내역</a></li>
				<li><a href="mypageselllist.do">판매 내역</a></li>				
				<li style="font-weight:bold; color:#FF6868"><a href="mypageproductinter.do">관심 상품</a></li>
			</ul>
		</div>
		<div class="myinfo">
			<h3>내 정보</h3>
			<ul>
				<li><a href="mypagelogininfo.do">로그인 정보</a></li>
				<li><a href="mypageprofile.do">프로필 관리</a></li>
				<li><a href="mypageaddr.do">주소록</a></li>
				<li><a href="mypagepaylist.do">결제 정보</a></li>
				<li><a href="mypagebank.do">판매 정산 계좌</a></li>				
				<li><a href="mypageaddpoint.do">포인트 충전</a></li>
			</ul>
		</div>
		</nav>
		<div class="editlogininfo">
			<div class="edithead">
				<h2>관심상품</h2>
				</div>
				
		<div class="interestarea">
			<ul>
				<li v-for="item in likeList">
				<div class="productpicture">
					<img :src="item.pImgPath"> 
				</div>
					<div class="productdetail">
						<div class="productname">{{item.brandName}}</div>
						<div class="productinfo">{{item.productName}}</div>
						<div class="productsize">{{item.size}}</div>
					</div>
				<button class="buybtn" @click="fnNowBuy(item.productSellNumber)">
					<strong class="nowbuy" style='box-shadow:1px px 0px px'>구매</strong>
					<div style="padding-top:3px;"><b>{{item.productPrice}}원</b></div>
					<div style="padding-top:5px;">즉시 구매가</div>
				</button>
				<div class="delete" @click="fnRemove(item.productSellNumber)">삭제</div>
				</li>
			</ul>
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
		likeList : [],
		uId : "${sessionId}"
	},// data
	methods : {
		fnGetList : function(){
            var self = this;
            var nparmap = {uId : self.uId};
            $.ajax({
                url : "/likeList.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.likeList = data.likeList;
                	console.log(self.likeList);
                	
                }
            }); 
        },
        // 즉시구매 페이지로 이동
        fnNowBuy : function(sellNum){
        	var self = this;
        	console.log(sellNum);
        	$.pageChange("/buyagree.do", { proNum : sellNum});
        },
        // 관심 해제
        fnRemove : function(sellNum){
        	var self = this;
        	var nparmap = {proNum : sellNum, uId : self.uId};
        	console.log(sellNum);
            $.ajax({
                url : "/proInterestRemove.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	location.reload();
                	
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