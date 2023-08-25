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
 border-top:1px solid #eee;
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

.banknumadd{
float:right;
background-color:black;
color:white;
border-radius:10px;
height:35px;
width:80px;
cursor:pointer
}
.banktitle{
width:80px;
font-size:15px;
display:inline-block;
}
.bankname{
margin-top:5px;
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
	        			사진데이터
	    			</div>
	    			
		    <div style="margin-left: 10px;">
		        <div class="productdetailhead">ID</div>
		        <div class="productdetailname">NAME</div>
		        <div class="productdetailtransname">TRANSNAME</div>
		    </div>
	    
		</div>
			</div>
	
	<div class="pointarea">
				<div>
				<h3>판매 정산 계좌</h3>
				<!-- 계좌 있을시 -->
				<button class="banknumadd">계좌추가</button>
				
				</div>

			
			<div style="color: rgba(34,34,34,.5);line-height: 17px; padding-top:10px; display:inline-block;">
			등록된 판매 정산 계좌가 없습니다.새 계좌번호를 추가해주세요!
			</div>
			
			<!-- 계좌가 있을시 -->
			<div>
			<div style="color: rgba(34,34,34,.5);line-height: 17px; padding-top:10px;">
			<div class="bankkind">
			<div class="banktitle">계좌</div>
			<div class="banklist" style="display:inline-block;">00은행 number</div>
			</div>
			
			
			<div class="bankname">
			<div class="banktitle">예금주</div>
			<div class="bankname" style="display:inline-block;">금쪽이</div>
			</div>
			</div>
			</div>
			</div>
	
		<div class="addrsearch">
	<h3 style="width:80%; display:inline-block;">반송 주소</h3>
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
			<div class="packageas"><h3>발송 방법</h3></div>
		</div>
		
			<div class="displayiteminfo">
			<div style="display:inline-block; width:100px; text-align:center;">
			<i class="fa-solid fa-box fa-3x"></i></div>
			
			<div style="width:400px; display:inline-block;">
			<div style="display:inline-block; width:400px;">택배발송 선불</div>
			<div style="width:400px; display:inline-block; border-bottom:1px solid #eee; padding-bottom:15px; color:#a2a2a2;">
			착불 발송 시 정산급액에서 차감</div>
			</div>
			</div>

			

			</div>
			
			
			
			
			<div class="allpayarea">
			<h3>최종 주문 정보</h3>
			</div>
			<div class="allpayinfo">
			정산금액
			<div style="float:right; font-size:20px; line-height:10px; color:limegreen;">
			-
			</div>
			</div>
			
			<div class="priceinfo">
			<div>
			<div style="font-size: 13px;">즉시판매가
			<div style="float:right; color: #222; font-size: 14px; font-weight:bold;"> -P			
			</div>
			</div>
			</div>
			
			<div class="priceinfosubtitle">
			<div style="font-size: 13px;">검수비
			<div style="float:right; color: #222; font-size: 14px;"> -P			
			</div>
			</div>
			</div>
			
			<div class="priceinfosubtitle">
			<div style="font-size: 13px;">수수료
			<div style="float:right; color: #222; font-size: 14px;"> 무료			
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
			<h3>판매 전 동의</h3>
			
					<div class="noticegroup">
	
	<div class="noticeheader">거래가 체결되면 일요일 · 공휴일을 제외하고 48시간 내에 KREAM으로 발송을 완료한 후, 발송 정보를 정확히 입력해야 합니다.</div>
	<div class="checkarea">
	<div style="float:right; display:inline-block;"><input type="checkbox"></div>
	<div class="noticecontents">착불 배송 시 판매 금액에서 차감 정산하며, 미정산 시 별도 고지없이 해당 금액을 결제 시도할 수 있습니다.
	</div>
	</div>
	</div>
	
	<div class="noticegroup">
	<div class="noticeheader">송장 번호 미기재·오입력 시 입고가 진행되지 않으며, 발송 후 5일(일요일·공휴일 제외) 내 미도착은 허위 정보 입력으로 간주하여 미입고 페널티를 부과합니다.</div>
<div class="checkarea">
	<div style="float:right; display:inline-block;"><input type="checkbox"></div>
	<div class="noticecontents">앱 알림 해제, 알림톡 차단, 전화번호 변경 후 미등록 시에는 거래 진행 상태 알림을 받을 수 없으며 이로 인한 거래 실패는 판매자의 책임입니다.
</div>
	</div>
	</div>
	
	<div class="noticegroup">
	<div class="noticeheader">검수 기준과 페널티 및 이용 정책을 다시 한번 확인하였습니다.</div>
		<div class="checkarea">
	<div style="float:right; display:inline-block;"><input type="checkbox"></div>
	<div class="noticecontents">이용정책 위반 시, 판매 금액의 최대 15.0%의 페널티가 부과됩니다. 페널티 회피 시 이후 거래가 제한되며 별도 고지없이 해당 금액을 결제 시도할 수 있습니다.
	</div>
	</div>
	</div>
	
	<div class="noticegroup"  style="border:none;">
	<div class="noticeheader" style="font-weight:bold; width:100%; font-size:15px;">판매 조건을 모두 확인하였으며, 거래 진행에 동의합니다.<input class="checkarea" type="checkbox" style="float:right; clear:both;"></div>

</div>

</div>
<div class="lastpaybtn" style="width:100%; text-align:center;">
<button>판매하기</button>
</div>


			</div>
			
			
		</div>
		</div>


</body>

<%@ include file="../header/footer.jsp"%>
</html>
<script>


</script>