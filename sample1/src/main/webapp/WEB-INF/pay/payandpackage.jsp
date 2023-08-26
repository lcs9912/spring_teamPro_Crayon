<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<script src="https://kit.fontawesome.com/047f82d071.js" crossorigin="anonymous"></script>
	<script src="../js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<meta charset="UTF-8">
	<title>배송/결제페이지</title>
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
	.productdetailhead, .productdetailname, .productdetailtransname{
		width:100%;
	}
	.productdetailhead, .productdetailsize{
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
	
	.productinfo{
		width:80px;
		height:80px;
		background-color:#eee;
		display:inline-block;
	}
	.addrsearch{
		padding: 32px 32px 28px;
		background-color: white;
		border-bottom : 1px solid #eee;
	}
	.addradd div{
		padding-top:10px;
		line-height: 30px; 
	}
	.addradd button{
		width:100%;
		height:50px;
		border-radius:10px;
		text-align:left;
		padding-left:10px;
		border:1px solid #eee;
		background-color:white;
		cursor:pointer;
	}
	.packageas{
		padding-bottom:15px;
	}
	.pointarea{
		padding: 32px 32px 28px;
		background-color: white;
		border-top:1px solid #eee;
	}
	.pointnum{
		padding-top:15px;
		width:100%;
	}
	.pointnum input[type="text"]{
		height:50px;
		border-radius:10px;
		padding-left : 10px;
		width:85%;
	}
	
	.pointnum button{
		margin-left : 20px;
		border-radius:15px;
		background: rgba(34,34,34,.2);
		color:white;
		width:11%;
		border : 1px solid #eee;
		height:30px;
		font-size : 13px;
		cursor:pointer;
	}
	
	.allpayarea{
		padding: 32px 32px 28px;
		background-color: white;
		border-top:1px solid #eee;
	}
	.allpayinfo{
		font-size:13px;
		font-weight:bold;
		padding: 32px 32px 28px;
		background-color: white;
	}
	
	.priceinfo{
		padding: 32px 32px 28px;
		background-color: white;
		width:100%;
		border-top : 1px solid #eee;
	}
	
	.priceinfo div{
		padding-top:5px;
	}
	
	.priceinfosubtitle{
		color : rgba(34,34,34,.5);
	}
	
	.payagreearea{
		padding: 32px 32px 28px;
		background-color: white;
		border-top : 1px solid #eee;
	}
	
	.noticeheader{
		width:90%;
		font-size: 13px;
		line-height: 18px;
	}
	
	.noticegroup{
		border-bottom: 1px solid #eee;
		padding-top:28px;
	}
	
	.noticecontents{
		width:90%;
		color: rgba(34,34,34,.5);
		font-size: 13px;
		line-height: 16px;
		padding-bottom : 28px;
		display:inline-block;
	}
	input[type=checkbox] {
		cursor:pointer;
		-ms-transform: scale(2);
		-moz-transform: scale(2);
		-webkit-transform: scale(2);
		-o-transform: scale(2);
	}
	.productheader{
		width:100%;
	}
	.lastpaybtn{
		background-color:white;
		padding-bottom:20px;
	}
	.lastpaybtn button{
		background-color:#a2a2a2;
		border:none;
		width:90%;
		height:50px;
		border-radius:15px;
		color:white;
		font-size:25px;
		margin-top:10px;
	}
</style>

</head>
<%@ include file="../header/shopheader.jsp"%>
<body> 
	<div id="app" style="margin-top : 100px; background-color:#fafafa;">
	
	<div class="contentsarea">
		<div style="box-shadow: 0 4px 10px 0 rgba(0,0,0,.1);">
			<div class="productcontents">
				<div class="productheader" style="display: flex; align-items: center;">
	   				 <div class="productinfo">
	        			<img :src="img.pImgPath">
	    			</div>
		    		<div style="margin-left: 10px;">
			        	<div class="productdetailhead">{{proInfo.productModel}}</div>
			        	<div class="productdetailname">{{proInfo.productName}}</div>
			        	<div class="productdetailtransname">{{proInfo.productKname}}</div>
			        	<div class="productdetailsize">{{size}}</div>
		    		</div>
				</div>
			</div>
			
		<div class="addrsearch">
			<h3 style="width:80%; display:inline-block;">배송 주소</h3>
			<a href="#" style="float:right; color: rgba(34,34,34,.5);
		    font-size: 13px;">+ 새 주소 추가</a>
    
    		<div class="addradd">
    			<div><button style="background-color:#fafafa; color: rgba(34,34,34,.5);">주소를 추가해주세요.</button></div>
    			<div>
				    <button style="line-height: 30px;">요청사항 없음
				    <i class="fa-solid fa-chevron-right" style="float:right; padding-right:15px; line-height: 30px;"></i></button>
			    </div>
			</div>
		</div>
		
	<div class="packageasarea" style="background-color:white; padding:35px; ">
		<div class="packageastitle">
			<div class="packageas"><h3>배송 방법</h3></div>
		</div>
		
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
					<i class="fa-solid fa-fire fa-3x"></i>
				</div>
				<div style="width:400px; display:inline-block;">
					<div style="display:inline-block; width:400px; padding-top:10px;">
					불꽃배송 7,000원 (500,000원이상 결제시 3,000원)</div>
					<div style="width:400px; display:inline-block; border-bottom:1px solid #eee; padding-bottom:15px; color:#a2a2a2;">
					검수 후 당일 배송 ・ 1-2일 내 도착 예정</div>
		    		<div></div>
	    		</div>
			</div>
	</div>
			
			<div class="pointarea">
				<div>
				<h3>포인트</h3>
				</div>
			<div class="pointnum">
			<input type="text" value="0"><button>모두 사용</button>
			</div>
			
			<div style="color: rgba(34,34,34,.5);line-height: 17px; padding-top:10px;">
			보유 포인트 <span style="color:black;">0P</span>
			</div>
			
			</div>
			
			
			<div class="allpayarea">
				<h3>최종 주문 정보</h3>
			</div>
			<div class="allpayinfo">
			총 결제금액
			<div style="float:right; font-size:20px; line-height:10px;">
			-
			</div>
			</div>
			
			<div class="priceinfo">
			<div>
			<div style="font-size: 13px;">즉시구매가
			<div style="float:right; color: #222; font-size: 14px; font-weight:bold;"> -P			
			</div>
			</div>
			</div>
			
			<div class="priceinfosubtitle">
			<div style="font-size: 13px;">포인트
			<div style="float:right; color: #222; font-size: 14px;"> -P			
			</div>
			</div>
			</div>
			
			<div class="priceinfosubtitle">
			<div style="font-size: 13px;">검수비
			<div style="float:right; color: #222; font-size: 14px;"> 무료			
			</div>
			</div>
			</div>
			
			<div class="priceinfosubtitle">
			<div style="font-size: 13px;">수수료
			<div style="float:right; color: #222; font-size: 14px;"> 0P		
			</div>
			</div>
			</div>
			
			<div class="priceinfosubtitle">
			<div style="font-size: 13px;">배송비
			<div style="float:right; color: #222; font-size: 14px;"> 0P			
			</div>
			</div>
			</div>
			
			</div>
			
			
			<div class="payagreearea">
			<h3>구매 전 동의</h3>
			
					<div class="noticegroup">
	
	<div class="noticeheader">판매자의 판매거부, 배송지연, 미입고 등의 사유가 발생할 경우, 거래가 취소될 수 있습니다.</div>
	<div class="checkarea">
	<div style="float:right; display:inline-block;"><input type="checkbox"></div>
	<div class="noticecontents">앱 알림 해제, 알림톡 차단, 전화번호 변경 후 미등록 시에는 거래 진행 상태 알림을 받을 수 없습니다.
	</div>
	</div>
	</div>
	
	<div class="noticegroup">
	<div class="noticeheader">창고 보관을 선택한 경우, 구매자에게 배송되지 않고 KREAM 창고에 보관됩니다.</div>
<div class="checkarea">
	<div style="float:right; display:inline-block;"><input type="checkbox"></div>
	<div class="noticecontents">검수 합격 후 보관이 완료되면 창고 이용료(현재 첫 30일 무료)가 결제됩니다.
</div>
	</div>
	</div>
	
	<div class="noticegroup">
	<div class="noticeheader">‘바로 결제하기’ 를 선택하시면 즉시 결제가 진행되며, 단순 변심이나 실수에 따른 구매 결정 후 취소는 불가능합니다.</div>
		<div class="checkarea">
	<div style="float:right; display:inline-block;"><input type="checkbox"></div>
	<div class="noticecontents">본 거래는 개인간 거래로 전자상거래법(제17조)에 따른 청약철회(환불, 교환) 규정이 적용되지 않습니다. 단, 조작 실수 등을 고려하여 계정당 하루 1회 구매를 거부할 수 있습니다.
	</div>
	</div>
	</div>
	
	<div class="noticegroup"  style="border:none;">
	<div class="noticeheader" style="font-weight:bold; width:100%; font-size:15px;">구매 조건을 모두 확인하였으며, 거래 진행에 동의합니다.<input class="checkarea" type="checkbox" style="float:right; clear:both;"></div>

</div>

</div>
<div class="lastpaybtn" style="width:100%; text-align:center;">
<button>결제하기</button>
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
		size : "",
		sizel : [
			{size : ""}
		],
		img : {},
		proNum : "221",
		pName : "Jordan 1 Retro Low OG Black and Dark Powder Blue",
		pImgPath : "",
		proInfo : {
			
		},
		proInfo1 : {},
		modelNum : "",
		uId : "${sessionId}",
		uName : "${sessionName}"
	},// data
	methods : {
		//상품 정보 불러오기
		fnProList : function(){
    		var self = this; 
            var nparmap = {proNum : self.proNum};
             $.ajax({
                 url : "/productInfo.dox",
                 dataType:"json",	
                 type : "POST", 
                 data : nparmap,
                 success : function(data) { 
                 	self.proInfo = data.proInfo;
                 	
                 	self.modelNum = data.proInfo.productModel; // 모델번호
                 	
                 	console.log(self.proInfo);
                 	
                 	console.log("모델번호"+self.modelNum);
                 	self.fnGetSize(self.proInfo);
                 }
             }); 
    	},
        //상품 사진 불러오기
        fnGetImg : function() {
        	var self = this;
        	var nparmap = {pName : self.pName};
        	$.ajax({
				url : "productImg.dox",
				dataType : "json",
				type : "POST",
				data : nparmap,
				success : function(data){
					console.log(data);
					self.img = data.img;
				}
			});
		},
		// 사이즈 조회
		fnGetSize : function (proInfo1) {
			var self = this;
			console.log("proInfo1", proInfo1); //19
			var nparmap = {productSize : proInfo1.productSize};
			
			$.ajax({
				url : "/pay/size.dox",
				dataType : "json",
				type : "POST",
				data : nparmap,
				success : function(data){
					console.log("data ===>> ", data);
					self.size = data.size;
					console.log(self.sizel); // 19
				}
			})
		},
	}, // methods
	created : function() {
		var self = this;
		self.fnProList();
		self.fnGetImg();
		console.log("self.proInfo ==>", self.proInfo);
		self.fnGetSize(self.proInfo);
	},// created
	mounted: function() {
	    var self = this;
	     // 데이터 로딩 후 fnGetSize 호출
	}
});
</script>