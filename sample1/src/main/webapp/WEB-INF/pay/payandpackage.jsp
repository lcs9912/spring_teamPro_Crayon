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
	.continuebtn{
		background-color:white;
		padding-bottom:20px;
	}
	.continuebtn button{
		background-color:#a2a2a2;
		border:none;
		width:90%;
		height:50px;
		border-radius:15px;
		color:white;
		font-size:25px;
		margin-top:10px;
	}
	table{
		border: 1px solid;
		width: 80%;
		text-align: center;
	}
	td, th{
		border: 1px solid;
	}
	a{
		cursor: pointer;
	}
	
	/* 팝업 레이어 */
			.popup-overlay {
				display: none;
			   	position: fixed;
			  	top: 0;	left: 0;
			  	width: 50%; height: 50%;
			   	background-color: rgba(0, 0, 0, 0.5);
			  	z-index: 1000;
			} 
			
			.popup-content {
			    position: absolute;
			    top: 50%; left: 50%;
			    transform: translate(-50%, -50%);
			    background-color: #fff;
			    padding: 20px; border-radius: 10px;
			    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
			}	
						
			
			body{
			    /* background-image: url('./bg.jpg'); */ /* 배경이미지 */
			    background-repeat: no-repeat; background-size: cover;
			    background-position: center;		    
			}
		
			.popup {
			    z-index: 1; position: fixed;
			    top: 50%; left: 50%;
			    transform: translate(-50%,-50%);
			    min-width: 300px; max-width: 600px;
			    background-color: #fff; border-radius: 15px;
			    box-shadow: 0 2px 55px -25px rgb(0 0 0 / 100%);		    
			 }
			.popup > .title{
				border-radius: 15px 15px 0 0;
			    min-height: 40px; color: white;
			    background-color: #ccc; padding: 10px 15px;
			    box-sizing: border-box; font-weight: bold;			    
			}
			.popup > .content {
			    padding: 20px; box-sizing: border-box;
			}
			
				.addrInput input{
					width:360px; height:30px; border:0px solid; border-bottom:1px solid #ccc; outline:none; 
				}
				.addrInput #addrspot{margin-right:50px;}
				.addrInput label {display:inline-block; width:80px; margin:20px 0 20px 10px;}
				.addrInput button {margin-left:2px; background:black; color:#fff; padding:4px 3px; border-radius:10px; font-weight:bold;}
				.addrInput #addrdetail{margin-right:100px;}
				.addrInput #addrcheckbox{display:inline-block; width:18px; height:18px; margin:30px 0 0 190px; line-height:-20px; padding:10px;}
				.addrInput #addrchecklabel{display:inline-block; width:310px; margin-top:0; font-size:18px; font-weight:bold; }
				.addrInput button:hover {color:#000; background-color: #fff; border-color: #ccc;}	
				.addrInput .cmd {
				    bottom: 0; min-height: 40px;
				    padding: 20px 20px; box-sizing: border-box;
				    border-radius: 0 0 15px 15px; margin-top:20px;
				    min-height: 40px; width: 100%; 
				} 
				.cmd button {
				    border-radius: 8px; padding: 10px 30px; margin:0 auto;
				    border: 1px solid #aaa; width: 120px; display:block;
				    color: white; background-color: black;
				    font-weight: bold; cursor: pointer;				    
				}
				.cmd button:hover {
				     color: #000; background-color: #fff; border-color: #ccc;
				}
				.title i{
					cursor: pointer; position: absolute; top: 15px; right: 15px;
				}
				#addrPopTable table{
					font-size: 14px;
					height: 40%;
					
				}
				
				tbale button{
					margin: 1px; auto;
				}
 .continuebtn button.continuebtn-active {
            background-color: black;
            cursor:pointer;
        }
        table th{
        background-color:#eee;
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
	        			<img :src="proInfo.pImgPath">
	    			</div>
		    		<div style="margin-left: 10px;">
			        	<div class="productdetailhead">{{proInfo.productModel}}</div>
			        	<div class="productdetailname">{{proInfo.productName}}</div>
			        	<div class="productdetailtransname">{{proInfo.productKname}}</div>
			        	<div class="productdetailsize">{{proInfo.size}}</div>
		    		</div>
				</div>
			</div>
			
		<div class="addrsearch">
			<h3 style="width:80%; display:inline-block;">배송 주소</h3>
			<a @click="fnPopup('add')" style="float:right; color: rgba(34,34,34,.5);
		    font-size: 13px;">+ 새 주소 추가</a> <!-- 마이페이지 주소 추가 api 팝업 복사해서 가져오기 -->
    
    		<div class="addradd">
    			<!-- 주소테이블에 정보가 없으면 주소를 추가해수세요 정보가 있으면 출력 -->
    			<div v-if="!addrFlg"><button style="background-color:#fafafa; color: rgba(34,34,34,.5);" @click="fnPopup('add')">주소를 추가해주세요.</button></div>
    			<table v-if="addrFlg" style="float: left; width:88%;">
    				<tr>
    					<th>우편번호</th>
    					<th>주소</th>
    					<th>상세주소</th>
    				</tr>
    				<tr v-for="addrItem in addrList" v-if='addrItem.defaultAddr == "Y"'>
    					<td>{{addrItem.userZipno}}</td>
    					<td>{{addrItem.userAddr}}</td>
    					<td>{{addrItem.userDetailAddr}}</td>
    				</tr>
    			</table>
    			<span><button style="width:47px; height:38px; float: right; margin-right: 25px;" @click="fnPopup('edit')">변경</button></span>
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
			<div style="color: rgba(34,34,34,.5);line-height: 17px; padding-top:10px;">
			보유 포인트 <span style="color:black;">{{userInfo.userPoint}}P</span>
			</div>
			<div class="pointnum">
			<input type="text" v-model="payPoint"><button>모두 사용</button>
			</div>
			
			<div v-if="!lastPointFlg" style="color: rgba(34,34,34,.5);line-height: 17px; padding-top:10px; font-size: 14px;">
			결제후 잔여 포인트 <span style="color:blue; font-size: 12px;">{{lastPoint}}P</span> <!-- 유저 포인트 - 총 결제 금액 -->
			</div>
			
			<div v-else style="color: rgba(34,34,34,.5);line-height: 17px; padding-top:10px; font-size: 12px;">
			결제후 잔여 포인트 <span style="color:red; font-size: 12px;">{{lastPoint}}P</span> <!-- 결제후 잔액이 음수 인 경우 -->
				<div><a style="text-decoration: underline; color: black" href="/mypageaddpoint.do">충전하기</a></div>
			</div>
			
		
			
			</div>
			
			
			<div class="allpayarea">
				<h3>최종 주문 정보</h3>
			</div>
			<div class="allpayinfo">
			총 결제금액
			<div style="float:right; font-size:20px; line-height:10px;">
			{{lastPay}} <!-- 상품 가격 + 배송 비 -->
			</div>
			</div>
			
			<div class="priceinfo">
			<div>
			<div style="font-size: 13px;">즉시구매가
			<div style="float:right; color: #222; font-size: 14px; font-weight:bold;"> {{proInfo.productPrice}}P			
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
			<div style="font-size: 13px;">배송비
			<div style="float:right; color: #222; font-size: 14px;"> {{delivery}}P			
			</div>
			</div>
			</div>
			
			</div>
			
			
			<div class="payagreearea">
			<h3>구매 전 동의</h3>
			
					<div class="noticegroup">
	
	<div class="noticeheader">판매자의 판매거부, 배송지연, 미입고 등의 사유가 발생할 경우, 거래가 취소될 수 있습니다.</div>
	<div class="checkarea">
	<div style="float:right; display:inline-block;"><input type="checkbox" v-model="agreements[0]"></div>
	<div class="noticecontents">앱 알림 해제, 알림톡 차단, 전화번호 변경 후 미등록 시에는 거래 진행 상태 알림을 받을 수 없습니다.
	</div>
	</div>
	</div>
	
	<div class="noticegroup">
	<div class="noticeheader">창고 보관을 선택한 경우, 구매자에게 배송되지 않고 KREAM 창고에 보관됩니다.</div>
<div class="checkarea">
	<div style="float:right; display:inline-block;"><input type="checkbox" v-model="agreements[1]"></div>
	<div class="noticecontents">검수 합격 후 보관이 완료되면 창고 이용료(현재 첫 30일 무료)가 결제됩니다.
</div>
	</div>
	</div>
	
	<div class="noticegroup">
	<div class="noticeheader">‘바로 결제하기’ 를 선택하시면 즉시 결제가 진행되며, 단순 변심이나 실수에 따른 구매 결정 후 취소는 불가능합니다.</div>
		<div class="checkarea">
	<div style="float:right; display:inline-block;"><input type="checkbox" v-model="agreements[2]"></div>
	<div class="noticecontents">본 거래는 개인간 거래로 전자상거래법(제17조)에 따른 청약철회(환불, 교환) 규정이 적용되지 않습니다. 단, 조작 실수 등을 고려하여 계정당 하루 1회 구매를 거부할 수 있습니다.
	</div>
	</div>
	</div>
	
	<div class="noticegroup"  style="border:none;">
	<div class="noticeheader" style="font-weight:bold; width:100%; font-size:15px;">구매 조건을 모두 확인하였으며, 거래 진행에 동의합니다.<input class="checkarea" type="checkbox"  v-model="agreements[3]" style="float:right; clear:both;"></div>

</div>

</div>
<div class="continuebtn" style="width:100%; text-align:center;">
<button v-if="payFlg" @click="fnLastBuy" :class="{ 'continuebtn-active': allCheck }" :disabled="!allCheck">결제하기</button>
<button v-else>결제하기</button>
</div>


			</div>
			
			
		</div>
			<!-- 레이어 팝업 -->
			<div class="popup popup-overlay" id="popupOverlay" >
		        <div class="title">새 주소 추가<i class="fa-solid fa-x" id="closePopup"></i></div>
		        <div class="content">
		        <!-- 주소추가 -->
		        <template v-if="keyword == 'add'">
		     	<div class="addrInput">
		         	<label for="addrnum">우편번호</label><input v-model="zipNo" id="addrnum"><button @click="fnSearchAddr" >상세주소 찾기</button>
		            <label for="addrspot">주소</label><input v-model="addr" id="addrspot">
		            <label for="addrdetail">상세주소</label><input v-model="detailAddr" id="addrdetail">
		            <input type="checkbox" id="addrcheckbox"><label for="addrcheckbox" id="addrchecklabel">기본 배송지로 설정</label>
		            <div class="cmd">
		       			<button id="submitPopup" @click="fnAddrAdd">제출</button>          
		        	</div>
		        </div>
		        </template>
		        <!-- 기본주소 변경 -->
		        <template v-if="keyword == 'edit'">
		     	<div class="addrInput">
		     		<div id="addrPopTable">
			         	<table style="float: left;">
		    				<tr>
		    					<th>우편번호</th>
		    					<th>주소</th>
		    					<th>상세주소</th>
		    					<th></th>
		    				</tr>
		    				<tr v-for="addrItem in addrList">
		    					<td>{{addrItem.userZipno}}</td>
		    					<td>{{addrItem.userAddr}}</td>
		    					<td>{{addrItem.userDetailAddr}}</td>
		    					<td><button v-if="addrItem.defaultAddr == 'N'">변경</button></td>
		    				</tr>
	    				</table>
    				</div>
		            <div class="cmd">
		       			<button id="submitPopup" @click="fnAddrEdit">제출</button>          
		        	</div>
		        </div>
		        </template>	
		        </div>
			</div>
		  
</div>
</body>

<%@ include file="../header/footer.jsp"%>
</html>
<script>
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
	app.fnResult(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo);
} 
var app = new Vue({
	el : '#app',
	data : {
		proNum : "${map.proNum}",
		delivery : "${map.delivery}",
		proInfo : {},	
		userInfo : {},
		uId : "${sessionId}",
		agreements: [false, false, false, false],
		addrFlg : false, // 
		lastPointFlg : false, // 결제후 잔여 포인트(음수인지 양수인지)
		payFlg : false,
		
		// 주소추가 변수
		zipNo : "", // 우편번호
		addr : "", // 기본 주소
		detailAddr : "", //상세주소
		
		lastPay : "", // 총 결제 가격
		lastPoint : "", //결제후 잔여 포인트
		
		keyword : "", // 팝업 키워드
		
		// 결제 
		
			payPoint : "", // 결제포인트
			lastPay : "",
		
		
		
	},// data
	 computed: {
		 allCheck: function() {
	            return this.agreements.every(item => item === true);
	        },
	    },
	 
	methods : {
		//상품 정보 불러오기
		fnProInfo : function(){
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
                 	
                 	
                 	// 500000원 이상 결제시 불꽃배송 비용 3000원
                 	if(self.delivery == 7000 && self.proInfo.productPrice > 500000){
                 		self.delivery = 3000;
                 	}
                   self.lastPay =  parseInt(self.proInfo.productPrice) + parseInt(self.delivery); // 총 결제 금액 
                  
                   
                   self.fnUserInfo();
                   

                 }
             }); 
    	},
    	// 유저 주소 리스트 출력
    	fnUserAddrList : function(){ 
    		var self = this;
    		var nparmap = {uId : self.uId};
            $.ajax({
                url : "/user/searchAddr.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.addrList = data.addrList;
                	if(self.addrList != "" && self.addrList != null){
                		self.addrFlg = true;
                	}else{
                		self.addrFlg = false;
                	}
                	console.log(self.addrList);
                }
            }); 
    		
    	},
    	// 유저 정보 
    	fnUserInfo : function(){
    		var self = this;
			var nparmap = {uId : self.uId};
			
			$.ajax({
                url : "/user/selectId.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.userInfo = data.info;
                	console.log(self.userInfo.userPoint);
                	
                	self.lastPoint = parseInt(self.userInfo.userPoint) - parseInt(self.lastPay); // 결제후 잔여 포인트
                	console.log("결제후 잔여포인트"+self.lastPoint);
                	//self.lastPoint = -15;
                	if(self.lastPoint < 0){
                		self.lastPointFlg = true;
                		self.payFlg = false;
                	}else{
                		self.lastPointFlg = false;
                		self.payFlg = true;
                	}
                 	
                }
            });
    	},
    	// 최종 결제 
    	fnLastBuy : function(){
    		var self = this;
			var nparmap = {proNum : self.proNum, uId : self.uId, suser : self.proInfo.userId, payPoint : self.payPoint, lastPay : self.lastPay, type : 'M'}
			console.log(nparmap);
			if(self.payPoint < self.lastPay ){
				console.log("금액이 모자릅니다.");
				return;
			}
			
			$.ajax({
                url : "/payandpackage.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	alert("완료되었습니다.");
                	location.href ="/mypagebuylist.do";
                 	
                }
            });
    	},
    	// 새주소 추가
    	fnAddrAdd : function(){
    		var self = this;
			var param = {uId : self.uId, addr : self.addr, detailAddr : self.detailAddr, zipNo : self.zipNo};
			$.ajax({
				url : "/user/insertAddr.dox",
				dataType : "json",
				type : "POST",
				data : param,
				success : function(data) {
					alert("완료!");
					location.reload();
				}
			});
    	},
    	// 기본 배송지 변경
    	fnAddrEdit : function(){
    		var self = this;
			var param = {uId : self.uId, addr : self.addr, detailAddr : self.detailAddr, zipNo : self.zipNo};
			$.ajax({
				url : "/user/insertAddr.dox",
				dataType : "json", 
				type : "POST",
				data : param,
				success : function(data) {
					alert("완료!");
					//location.reload();
				}
			});
    	},
    	// 팝업창 띄우기
    	fnPopup : function(keyword){
    		var self = this;
			self.keyword = keyword;
			self.pwdFlg = false;
			document.getElementById("popupOverlay").style.display = "block";
    		
    	},
    	// 주소 팝업 입력
		fnSearchAddr : function(){
			var self = this;
    		var option = "width = 500, height = 500, top = 100, left = 200, location = no"
    		window.open("addr.do", "test", option);
		},
		// 주소 팝업 돌아오는 곳
		fnResult : function(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
    		var self = this;
    		self.addr = roadAddrPart1; // 도로명 주소
    		self.detailAddr = addrDetail; // 상세주소 
    		self.zipNo = zipNo;
    		console.log(self.addr); 
    		console.log(self.zipNo);
    		
    		// 콘솔 통해 각 변수 값 찍어보고 필요한거 가져다 쓰면 됩니다.
    		// console.log(roadAddrPart2); // 전체 주소
    		//console.log(roadAddrPart1); // 도로명 주소
    		//console.log(addrDetail); // 상세주소
    		//console.log(engAddr);   // 영어주소
    		
    		
    		
    	},
    	
        
	}, // methods
	created : function() {
		var self = this;
		self.fnProInfo();
		self.fnUserAddrList();
		
		
		
	},// created
	mounted: function() {
	    var self = this;
	     // 데이터 로딩 후 fnGetSize 호출
	}
});
// 레이어 팝업창 닫기
document.getElementById("closePopup").addEventListener("click", function() {
	document.getElementById("popupOverlay").style.display = "none";
});
</script>