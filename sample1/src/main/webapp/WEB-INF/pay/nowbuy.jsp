<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<script src="https://kit.fontawesome.com/047f82d071.js" crossorigin="anonymous"></script>
	<script src="../js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<meta charset="UTF-8">
	<title>Insert title here shoes</title>
<style>
*{
		margin:0;
		padding:0;
}


.contentsarea{
    margin: 0 auto;
    max-width: 780px;
    overflow: hidden;
    padding: 20px 40px 160px;
   
}
.productcontents{
box-shadow : 2px 3px 5px 0px #eee;
padding: 32px 32px 28px;
 background-color: white;
 border-bottom : 1px solid #eee;
}
.productheader{
width:100%;
}
.productinfo{
width:80px;
height:80px;
background-color:#eee;
display:inline-block;

}
.productdetailhead, .productdetailname, .productdetailtransname{
width:100%;

}

.productdetailhead{
font-size: 14px;
    font-weight: 700;
    line-height: 17px;
}
.productdetailname{
font-size: 14px;
    line-height: 17px;
}
.productdetailtransname{
color: rgba(34,34,34,.5);
    font-size: 13px;
    line-height: 16px;    
}

.nowbuyarea{
padding: 32px 32px 28px;
width:100%;
background-color:white;
}

.leftnow, .rightnow{
width:49%;
display:inline-block;
text-align:center;
color: rgba(34,34,34,.5);
    font-size: 12px;
}
.paynowbuy{
color:black;
font-size: 16px;
}

.buytabarea{
padding-top:5px;
padding-bottom:5px;
border-radius:80px;
border:1px solid #ebebeb;
background-color:#ebebeb;
 text-align:center;
 line-height: 30px; 
}
.leftbuybtnarea, .rightbuybtnarea{
width:49%;
display:inline-block;
border-radius:80px;
height:30px;
color:white;
cursor:pointer;
border:none;
font-size:18px;

}
.leftbuybtnarea{
background-color:#FF5E3D;
}
.leftbuybtnarea:hover, .rightbuybtnarea:hover{
background-color:#FF5E3D;
}
.wantpay{
padding: 32px 32px 28px;
background-color:white;
}
.wantpaytitle{
    font-size: 14px;
    font-weight: 700;
}
.wantpaynum{
width:60%;
border:none;
border-bottom:2px solid #eee;
height:50px;
font-size:20px;
}
.paydayarea{
width:100%;
padding: 32px 32px 28px;
background-color:white;
}
.paydaytitle{
font-size:13px;
font-weight: bold;
padding-bottom:15px;
}

.whatday{
font-size:13px;
text-align:center;
}
.paydaybtn{
width:100%;
padding: 32px 32px 28px;

}
.paydaybtn button{
background-color:white;
border:1px solid #eee;
cursor:pointer;
width:19%;
height: 40px;
border-radius:30px;
}
.paydaycontinuearea{
width:100%;
padding: 32px; 32px 32px;
background-color:white;
border-top:1px solid #eee;
}

.allpaybtnarea{
text-align:center;
padding-top:15px;
}

.leftallpaybtn{
background-color:#B5B5B5;
width:100%;
height:50px;
border-radius:50px;
color:white;
font-size:18px;
border:1px solid #eee;
cursor:pointer;
}
.rightallpaybtn{
background-color:black;
width:100%;
height:50px;
border-radius:50px;
color:white;
font-size:18px;
border:1px solid #eee;
cursor:pointer;
}

input[type="text"]{
outline:none;
}
.rightallpaybtn{
display:none;
}
</style>

</head>
<%@ include file="../header/shopheader.jsp"%>
<body> 
<div id="app">
	<div id="app" style="margin-top : 100px; background-color:#fafafa;">
	
	<div class="contentsarea">
		<div style="box-shadow: 0 4px 10px 0 rgba(0,0,0,.1);">
	
			<div class="productcontents">
		<div class="productheader" style="display: flex; align-items: center;">
	   				 <div class="productinfo">
	        			<img :src="proInfo.pImgPath">
	    			</div>
	    			
		    <div style="margin-left: 10px;">
		        <div class="productdetailhead">{{proInfo.brandName}}</div>
		        <div class="productdetailname">{{proInfo.productName}}</div>
		        <div class="productdetailtransname">{{proInfo.productKname}}</div>
		    </div>
	    
		</div>
			</div>
	
		<div class="nowbuyarea">
				<div>
					<div class="leftnow" style="border-right:1px solid #eee;">
					즉시구매가
					<div class="paynowbuy">{{proInfo.productPrice}}P
					</div>
					</div>
				
				
				</div>
		</div>
		
	<div style="background-color:white; padding:35px;">
		<div class="buytabarea">
			<button class="leftbuybtnarea" id="leftbtnjava">구매 입찰</button>
			<button class="rightbuybtnarea" id="rightbtnjava">즉시 구매</button>
		</div>
	</div>
	
	
	
	<div class="wantpay">
		<div class="wantpaytitle">구매희망가</div>
		<div style="text-align:center;"><input type="text" id="number" class="wantpaynum" style="text-align:right;" placeholder="희망가 입력">
		<span style="font-size:25px;">P</span>
		</div>
		<div style="padding-top:15px; color: rgba(34,34,34,.5); font-size:14px;">최종금액은 다음페이지에서 총 정산됩니다.</div>
	</div>
	
	<div class="paydayarea">
	
		<div class="paydaytitle">입찰 마감기한</div>
		
		<div class="whatday">val일 (val.day 마감)</div>
	
			<div class="paydaybtn">
			<button >1일</button>
			<button>3일</button>
			<button>7일</button>
			<button>30일</button>
			<button>60일</button>
			</div>
	
	
	</div>
	
			<div class="paydaycontinuearea">
					<div class="paydaycontinue" style="font-size:13px; text-align:center;">
					총결제금액 다음화면에서 확인
					</div>
				
					<div class="allpaybtnarea">
					<a href="payandpackage.do"><button class="leftallpaybtn" id="buycontinuebtn">구매입찰계속</button></a>
					<a @click="fnListBuy"><button class="rightallpaybtn" id="nowbuycontinuebtn">즉시구매계속</button></a>
					</div>
			</div>
			
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
		proInfo : {},
		proNum : "${map.proNum}",
	},// data
	methods : {
		fnGetInfo : function(){
            var self = this;
            var nparmap = {proNum : self.proNum};
            $.ajax({
                url : "/productInfo.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.proInfo = data.info[0];
                	console.log(self.proInfo);
                }
            }); 
        },
        // 마지막 결제 가보자..
        fnListBuy : function(){
        	var self = this;
        	$.pageChange("/payandpackage.do", {proNum : self.proNum});
        }
	}, // methods
	created : function() {
		var self = this;
		self.fnGetInfo();
	}// created
});
/* 구매희망가 자동반점 */

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

/* 구매입찰버튼,즉시구매버튼 누르면 마감기한,구매버튼none/block */
document.addEventListener("DOMContentLoaded", function() {
    const rightBuyBtn = document.getElementById("rightbtnjava");
    const paydayArea = document.querySelector(".paydayarea");
    const leftBuyBtn = document.getElementById("leftbtnjava");
    const rightAllPayBtn = document.querySelector(".rightallpaybtn");
    const leftAllPayBtn = document.querySelector(".leftallpaybtn");

    rightBuyBtn.addEventListener("click", function() {
        paydayArea.style.display = "none";
        leftAllPayBtn.style.display = "none";
        rightAllPayBtn.style.display = "block";
        
        rightBuyBtn.style.backgroundColor = '#FF5E3D';
        leftBuyBtn.style.backgroundColor = '#ebebeb';

    });

    leftBuyBtn.addEventListener("click", function() {
        paydayArea.style.display = "block";
        leftAllPayBtn.style.display = "block";
        rightAllPayBtn.style.display = "none";
        
        rightBuyBtn.style.backgroundColor = '#ebebeb';
        leftBuyBtn.style.backgroundColor = '#FF5E3D';

    });
});


</script>