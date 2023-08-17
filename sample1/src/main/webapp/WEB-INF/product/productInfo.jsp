<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<script src="https://kit.fontawesome.com/047f82d071.js" crossorigin="anonymous"></script>
	<script src="../js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<meta charset="UTF-8">
	<title>Insert title here</title>
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
float:left;
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
}
.sizeandrecent{
padding-bottom:10px;
}
.btnaction{
width:600px;

}
.buyaction, .sellaction{
width : 290px;
height : 50px;
border-radius: 10px;
cursor: pointer;
}

.buyaction{
border:none;
color:white;
background-color: rgb(239, 98, 83);
}
.sellaction{
border:none;
color:white;
background-color: rgb(65, 185, 121);
}
.btnaction{
text-align:center;

}
.nowbuy, .nowsell{
 line-height:50px;
font-size: 18px;
    letter-spacing: -.27px;
    text-align: center;
    width: 55px;
    float:left;
    height:100%;
    border-right: 1px solid rgba(34,34,34,.1);
    color:white;
}
.interestbtn{
width:600px;
background-color:white;
border: 1px solid #ebebeb;
border-radius: 10px;
margin-top : 10px;
text-align:center;
padding-top : 15px;
padding-bottom : 15px;
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
font-size: 14px;
    font-weight: 400;
    letter-spacing: -.21px;
    padding-bottom: 12px;
    margin-top : 20px;
    padding-top : 15px;
    border-top : 1px solid #eee;
}
.displaymorebtn{
float:right;
}

.displaypoint{
width:600px;
margin-top:30px;
display:block;
}

.pointheader{
width: 100px;
color:#22222280;
display:inline-block;
}

.displaypointbox{
width:600px;
}
.pointcontents{
margin-top:10px;
}

.displayiteminfo{
margin-bottom:20px;
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

</style>

</head>
<%@ include file="../header/header1.jsp"%>
<%@ include file="../header/header2.jsp"%>
<body> 
<div id="app">
	<div class ="productcontents">
	<div class="rightcolumn">
	
		<div class="toptitlebox">
		<div>
		<p class="brandheader">브랜드</p>
		</div>
		<div class="subtitle">
		<p>타이틀값</p>
		</div>
		<div class="subtitle2">
		<p>타이틀값2</p>
		</div>

		
		<div class="sizeandrecent">
		<div class="detailsize">
		<span style="color: #646363;">사이즈</span>
		<span class="sizebtn" style="font-weight: bold; font-size:16px;">모든사이즈</span>
		</div>
		<div class="recentsell" style="border: none;">
		<span style="color: #646363; font-size: 13px;">최근 거래가</span>
		<span class="recentsellpay" style="font-weight: bold; font-size:20px;">000,000</span>
		</div>
		</div>
		
		<div class="btnaction">
		
		<button class="buyaction">
		<strong class="nowbuy" style='box-shadow:1px px 0px px'>구매</strong>
		<div style="padding-top:3px;"><b>000,000원</b></div>
		<div style="padding-top:5px;">즉시 구매가</div>
		</button>
		
		
		<button class="sellaction">
		<strong class="nowsell" style='box-shadow:1px px 0px px'>판매</strong>
		<div style="padding-top:3px;"><b>000,000원</b></div>
		<div style="padding-top:5px;">즉시 판매가</div>
	
		</button>
		</div>
		
		<div class="interestbtn" style="cursor: pointer">
		<i class="fa-solid fa-bookmark"></i>
		<i class="fa-regular fa-bookmark"></i>
		관심상품<strong>cnt</strong>
		</div>
		</div>
		
		<div class="productinfodetail">
		<div class="productdetailheader">상품정보
		</div>
		
		<div class="productlist">
		
			<div class="detailproductheader">
			모델번호
			<div style="color:black; font-size:14px; font-weight: bold;">1234567
			</div>
			</div>

			<div class="detailproductheader">
			출시일
			<div style="color:black; font-size:14px;">23/1/1</div>
			</div>
			
			<div class="detailproductheader">
			컬러
			<div style="color:black; font-size:14px;">BLACK</div>
			</div>
			
			<div class="detailproductheader">
			발매가
			<div style="color:black; font-size:14px;">000,000￦</div>
			</div>

		</div>
		</div><!-- productinfodetail -->
		
		<div class="displayitem">
			<div class="displayitemtitle">
			<span class="displayaddbtn">추가 혜택</span>
			<span class="displaymorebtn"><a href="#" style="text-decoration:none; color:#a2a2a2;">더보기</a></span>
			</div>
		</div>
		
		<div class="displaypoint">
		<div class="displaypointbox">
		<div class="pointheader">포인트</div>
		<div class="pointcontents" style="width:400px; display:inline-block;">
		구매 후 배송완료 시 수수료의 최대 <b>100%</b> 적립</div>
		
		<div class="pointheader"></div>
		<div class="pointcontents" style="width:400px; display:inline-block;">
		계좌 간편결제 시 <b>1%</b> 적립</div>
		
		<div class="pointheader">결제</div>
		<div class="pointcontents" style="width:400px; display:inline-block;">
		네이버페이 포인트 최대 8만원지급! 외5건</div>
		</div>
		</div>
				
			<div class="displayitem">
			
			<div class="displayitemwaytitle">배송 정보</div>
			<div class="displayiteminfo">
			<div style="display:inline-block; width:100px; text-align:center;">
			<i class="fa-solid fa-box fa-3x"></i></div>
			
			<div style="width:400px; display:inline-block;">
			<div style="display:inline-block; width:400px;">일반배송 3,000원</div>
			<div style="width:400px; display:inline-block; border-bottom:1px solid #eee; padding-bottom:15px; color:#a2a2a2;">
			검수 후 배송 ・ 5-7일 내 도착 예정</div>
			</div>
			</div>

			<div class="displayiteminfo">
			<div style="display:inline-block; width:100px; text-align:center;">
			<i class="fa-solid fa-house fa-3x"></i></div>
			<div style="width:400px; display:inline-block;">
			<div style="display:inline-block; width:400px; padding-top:10px;">
			창고보관 첫 30일 무료</div>
			<div style="width:400px; display:inline-block; border-bottom:1px solid #eee; padding-bottom:15px; color:#a2a2a2;">
			배송 없이 창고에 보관 · 빠르게 판매 가능</div>
			</div>
			</div>
			</div>
			<div class="displaygraph">그래프공간</div>
			
			<div class="displaybuybefore">
			
			<div class="buybeforeread">
			구매 전 꼭 확인해주세요!
			</div>
			
			<div class="buybeforecontents">배송기간 안내
			<i class="fa-solid fa-chevron-down" style="float:right; display:inline-block;">
			</i></div>
			<div class="buybeforecontents">검수 안내
			<i class="fa-solid fa-chevron-down" style="float:right; display:inline-block;"></i>
			</div>
			<div class="buybeforecontents">구매 환불/취소/교환 안내
			<i class="fa-solid fa-chevron-down" style="float:right; display:inline-block;"></i>
			</div>
			
			
			</div>
		
	
	
	
	
	
	
	
			
	</div>
	
		<div class="leftcolumnbox">
		상품페이지
		</div>
		
		
		<div class="selldanger" style='box-shadow:2px 3px 5px 0px #eee; float:left;'>
		<span class="caremark">주의</span>
		<span class="dangertext">판매 거래 주의사항</span>
		<p class="submarktext">반드시 보유한 상품만 판매하세요.</p>
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
		model : ""
	},
	methods : {
        fnBuy : function(){ // 구매버튼
			var self = this;
			$.pageChange("productBuy");
			},
		fnSell : function(){
			var self = this;
		}
	},
	created : function() {
		var self = this;
	}
})
</script>