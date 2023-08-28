<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<script src="https://kit.fontawesome.com/047f82d071.js" crossorigin="anonymous"></script>
	<script src="../js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script> <!-- 차트표 api -->
	<script src="https://cdn.jsdelivr.net/npm/vue-apexcharts"></script> <!-- 차트표 api vue -->	
	<meta charset="UTF-8">
	<title>Insert title here</title>
<style>
*{
	margin:0;
	padding:0;
}

.productcontents{
	margin:50px auto;	
	max-width : 1200px;		
}
.leftcolumnbox{
background-color:#f4f4f4;
width : 520px;
height: 600px;
display:block;
}
.leftbox{
width:520px;
position: fixed;
}

.fixed {
position: absolute;
top: 650px;
        }
.rightcolumn{
float : right;
border-left : 1px solid #eee;
width : 640px;
padding-left:40px;
margin-bottom : 150px;
}
.selldanger{
margin-top : 10px;
width : 520px;
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
text-decoration : underline;
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
    width:600px;
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
#noChart{
	height: 200px; 
	width: 600px;
	text-align: center;
}
/*  */
.buybeforecontents, .buybeforecontents1, .buybeforecontents2{
border-bottom:1px solid #eee;
padding-top : 15px;
padding-bottom : 15px;
font-size: 15px;
width:600px;
display:inline-block;
cursor: pointer;
}
.infoone{
font-size:13px;
margin-top : 5px;
}
.infoone p{
margin-top : 10px;
color:#a2a2a2;
}
.infoone1 p{
font-size:13px;
margin-top : 10px;
margin-bottom:10px;
color:#a2a2a2;
}
.infoone1 div{
font-weight:bold;
}
.infoone2 div{
font-weight:bold;
margin-top:10px;
}
.infoone2 p{
font-size:13px;
margin-top : 10px;
margin-bottom:10px;
color:#a2a2a2;
}


</style>

</head>
<%@ include file="../header/shopheader.jsp"%>
<body> 
<div id="app">
	<div class ="productcontents">
		<div class="leftbox" :class="{ 'fixed': scrollPosition >= 500 }">
			<div class="leftcolumnbox">
				<img :src="proInfo.pImgPath" style="max-width : 520px">  <!-- 상품 이미지 -->
			</div>
			<div class="selldanger" style='box-shadow:2px 3px 5px 0px #eee; float:left;'>
				<span class="caremark">주의</span>
				<span class="dangertext">판매 거래 주의사항</span>
				<p class="submarktext">반드시 보유한 상품만 판매하세요.</p>
			</div>
		</div>
		
		<div class="rightcolumn">
			<div class="toptitlebox">
				<div>
				<p class="brandheader">{{proInfo.brandName}}</p>
				</div>
				<div class="subtitle">
				<p>{{proInfo.productName}}</p>
				</div>
				<div class="subtitle2">
				<p>{{proInfo.productKname}}</p>
				</div>
				<div class="sizeandrecent" v-if="resentFlg">
					<div class="recentsell" style="border: none;"  >
					<span style="color: #646363; font-size: 13px;">최근 거래가</span>
					<span class="recentsellpay" style="font-weight: bold; font-size:20px;">{{resent.transactionPrice}} 원</span>
					</div>
				</div>
			
				<div class="sizeandrecent" v-else>
					<div class="recentsell" style="border: none;"  >
						<span style="color: #646363; font-size: 20px;">거래 내역이 없습니다.</span>
					</div>
				</div>
			
				<div class="btnaction">
					<a @click="fnBuyPage">
						<button class="buyaction">
							<strong class="nowbuy" style='box-shadow:1px px 0px px'>구매</strong>
							<div style="padding-top:3px;">
								<b v-if="buyMinFlg">{{minBuy.buyminprice}}원</b>
								<b v-else>0원</b>
							</div>
							<div style="padding-top:5px;">즉시 구매가</div>
						</button>
					</a>
					<a @click="fnSellPage">
						<button class="sellaction">
							<strong class="nowsell" style='box-shadow:1px px 0px px'>판매</strong>
							<div style="padding-top:3px;">
								<b v-if="sellMinFlg">{{minSell.sellminprice}} 원</b>
								<b v-else>0원</b>
							</div>
							<div style="padding-top:5px;">즉시 판매가</div>
						</button>
					</a>
				</div>
			
				<div class="interestbtn" style="cursor: pointer">
					<i class="fa-solid fa-bookmark" v-if="interestFlg" @click="fnInterestRemove(proInfo.productSellNumber)"></i> <!-- 저장 O -->
					<i class="fa-regular fa-bookmark" @click="fnInterest(proInfo.productSellNumber)" v-if="!interestFlg"></i>  <!-- 저장 X-->
					관심상품<strong> {{proInfo.productInterest}}</strong>
				</div>
			</div>
			
			<div class="productinfodetail">
				<div class="productdetailheader">상품정보</div>
				<div class="productlist">
					<div class="detailproductheader">
					모델번호
						<div style="color:black; font-size:14px; font-weight: bold;">{{proInfo.productModel}}</div>
					</div>
					<div class="detailproductheader">
						출시일
						<div style="color:black; font-size:14px;">{{minDate.mindate}}</div>
					</div>
					<div class="detailproductheader">
						컬러
						<div style="color:black; font-size:14px;">{{proInfo.productColor}}</div>
					</div>
					<div class="detailproductheader" style="border-right:none;">
						발매가
						<div style="color:black; font-size:14px;">{{proInfo.productLaunchPrice}}￦</div>
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
					<div class="pointcontents" style="width:500px; display:inline-block;">
					구매 후 배송완료 시 수수료의 최대 <b>100%</b> 적립</div>
					
					<div class="pointheader"></div>
					<div class="pointcontents" style="width:500px; display:inline-block;">
					계좌 간편결제 시 <b>1%</b> 적립</div>
					
					<div class="pointheader">결제</div>
					<div class="pointcontents" style="width:500px; display:inline-block;">
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
						<i class="fa-solid fa-fire fa-3x"></i></div>
						<div style="width:400px; display:inline-block;">
						<div style="display:inline-block; width:400px; padding-top:10px;">
						불꽃배송 7,000원 (500,000원이상 결제시 3,000원)</div>
						<div style="width:400px; display:inline-block; border-bottom:1px solid #eee; padding-bottom:15px; color:#a2a2a2;">
						검수 후 당일 배송 ・ 1-2일 내 도착 예정</div>
						</div>
					</div>
				</div>
				<div class="displaygraph">
	    			<div id="chart" v-if="resentFlg">
	     			   <apexchart type="line" height="200px" width="600px" :options="chartOptions" :series="series"></apexchart>
	   				 </div>
	   				 <div id="noChart" v-else>
	   				 	<div>거래내역이 없습니다.</div>
	   				 </div>
				</div>
				
				<div class="displaybuybefore">
					<div class="buybeforeread">
					구매 전 꼭 확인해주세요!
					</div>
					
					<div class="buybeforecontents">
						<div>배송기간 안내
			         		<div id="toggleIcon" class="fa-solid fa-chevron-down" style="float:right; font-size:20px;" onclick="toggleText()"></div>
			         	</div>
			            <div class="infoone" id="displayText" style="display: none;">
			            <strong>CRAYON은 최대한 빠르게 모든 상품을 배송하기 위해 노력하고 있습니다. 배송 시간은 판매자가 검수를 위하여 상품을 검수센터로 보내는 속도에 따라 차이가 있습니다.</strong>
			            
			            <p>[불꽃배송 구매]</p>
			            <p>- 판매자가 신청한 상품 중 검수에 합격한 상품을 CRAYON의 전용 창고에 보관합니다. 보관 상품에 한하여 바로 구매와 95점 구매가 가능합니다.</p>
			            <p>- 오늘(오후 11:59까지) 결제하면 내일 바로 출고되어 빠른 배송이 가능합니다. (연휴 및 공휴일, 천재지변, 택배사 사유 등 예외적으로 출고일이 변경되지 않습니다</p>
			            <p>- 불꽃배송은 너굴맨과 함께합니다.</p>
			            
			            <p>[일반배송 구매]</p>
			            <p>- 거래가 체결된 시점부터 48시간(일요일•공휴일 제외) 내에 판매자가 상품을 발송해야 하며, 통상적으로 발송 후 1-2일 내에 CrayoN 검수센터에 도착합니다.</p>
			            <p>- 검수센터에 도착한 상품은 입고 완료 후 3영업일 이내에 검수를 진행합니다. 검수 합격시 배송을 준비합니다.<br>
			*             상품종류 및 상태에 따라 검수 소요 시간은 상이할 수 있으며, 구매의사 확인에 해당할 경우 구매자와 상담 진행으로 인해 지연이 발생할 수 있습니다.</p>
			            <p>- 검수센터 출고는 매 영업일에 진행하고 있으며, 출고 마감시간은 오후 5시입니다. 출고 마감시간 이후 검수 완료건은 운송장번호는 입력되지만 다음 영업일에 출고됩니다.</p>
			            </div>
		         	</div>
		         
					<div class="buybeforecontents1">
						<div>검수 안내
			           		<div id="toggleIcon1" class="fa-solid fa-chevron-down" style="float:right; font-size:20px;" onclick="toggleText1()"></div>
			         	</div>
						<div class="infoone1" id="displayText1" style="display: none;">
					        <div style="margin-top:10px;">판매자의 상품이 검수센터에 도착하면 전담 검수팀이 철저한 분석과 검사로 정가품 확인을 진행합니다.</div>
					        <p>- 검수센터에서는 정가품 여부를 확인하기 위하여, 지속적으로 데이터를 쌓고 분석하여 기록하고 있습니다.</p>
					        <p>- 업계 전문가로 구성된 검수팀은 박스와 상품의 라벨에서 바느질, 접착, 소재 등 모든 것을 검수합니다.</p>
					        <span>검수 결과는 불합격•검수 보류•합격의 세가지 상태로 결과가 변경됩니다.</span>
					       	<p>* 검수 합격: CrayoN 검수택(Tag)이 부착되어 배송을 준비함</p>
					        <p>* 검수 보류: 앱에서 사진으로 상품의 상태 확인 및 구매 여부를 선택. (24시간 이후 자동 검수 합격)</p>
					        <p>* 검수 불합격: 즉시 거래가 취소되고 구매하신 금액을 환불 처리함.(환불 수단은 결제 수단과 동일)</p>
						</div>
					</div>
		
		         
		         
			         <div class="buybeforecontents2">
			         	<div>구매 환불/취소/교환 안내
				         	<i id="toggleIcon2" class="fa-solid fa-chevron-down" style="float:right; font-size:20px;" onclick="toggleText2()"></i>
				        </div>
				         <div class="infoone2" id="displayText2" style="display: none;">
					         <div>CrayoN은 익명 거래를 기반으로 판매자가 판매하는 상품을 구매자가 실시간으로 구매하여 거래를 체결합니다.</div>
					         <p>- 체결 후 15분 이내에 구매 결정 또는 구매 거부를 선택할 수 있습니다. 구매 결정 이후에는 취소/교환/반품이 불가능합니다.</p>
					         <p>- 상품 수령 후, 이상이 있는 경우 CrayoN 고객센터로 문의해주시기 바랍니다.</p>
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
    el: '#app',
    components: {
        apexchart: VueApexCharts,
      },
    data: {
    	proList : [], // 모델번호 상품 리스트
    	proInfo : {}, // 리스트 0번째 정보
    	interest : {}, // 관심상품 조회
    	modelNum: "${map.modelNum}", // 메인에서 넘어온 모델 번호
    	
    	
        model: "",
        scrollPosition: 0,
        sessionId : "${sessionId}",
        
        resent : {}, // 최근 거래가
        
        minDate : {}, // 출시일
        minSell : "", // 즉시 판매가
        minBuy : "", // 즉시 구매가
        proNum : "", // 상품 번호
       
        
        interestFlg : false, // 관심상품 조회
        resentFlg : false, // 구매내역 유무
        sellMinFlg : false,
        buyMinFlg : false,
        
		series: [{
            name: [],
            data: [],
        }],
        chartOptions: {
            chart: {
                type: 'line',
                zoom: {
                    enabled: false
                },
                toolbar: {
                    show: false, // 다운로드 버튼 숨기기
                },
            },
            dataLabels: {
                enabled: false,
            }, 
            stroke: {
                curve: 'straight',
                colors: '#ff0000',
                width: 3,
            },
            title: {
                align: 'left'
            },
            grid: {
                show: false
            },
            xaxis: {
                labels : {show : false},
                axisTicks : {show : false},
                axisBorder : {show : false},
                categories : [],
                min : "",
                tooltip: {
                    enabled: false, 
                    marker: { show: true }, // 이 부분을 추가하여 점을 숨깁니다.
                    
            	   
                  },
                },
            
            yaxis: {
	              
	              min: 0,
	              max: "",
	            },
	            tooltip: {
	                enabled: true,
	                marker: { show: false }, // 이 부분을 추가하여 점을 숨깁니다.
	                
	               
	           		
	            },
	            markers: {
	                size: 0, // 점의 크기를 0으로 설정하여 점을 숨깁니다.
	                hover: {
	                    sizeOffset: 0 // 마우스 호버 시 크기 변경 없이 숨기기
	                }
	            },
        },
        
        
        
        
    },
    methods: {
    	fnProList : function(){
    		var self = this; 
            var nparmap = {modelNum : self.modelNum};
           
             $.ajax({
                 url : "/productList.dox",
                 dataType:"json",	
                 type : "POST", 
                 data : nparmap,
                 success : function(data) { 
                 	self.proList = data.proList; // 모델 번호 상품 리스트 
                 	self.proInfo = data.proList[0]; // 상품 리스트의 0번째 값 
                 	self.minSell = data.minSell; // 즉시 판매가
                 	self.minBuy = data.minBuy; // 즉시 구매가
                 	self.minDate = data.minDate; // 출시일
                 	self.resent = data.resent; // 최근거래가
                 	
                 	
                 	console.log(self.resent); // 최근거래가
                 	console.log(self.minDate.mindate); // 출시일
                 	console.log(self.minSell); // 즉시 판매가
                 	console.log(self.minBuy); // 즉시 구매가
                 	console.log(self.proList); // 모델 번호 상품 리스트 
                 	console.log(self.proInfo); // 상품 리스트의 0번째 값  
                 	if(self.resent != "" && self.resent != null){
                 		self.resentFlg = true;
                 	};
                 	if(self.minSell != "" && self.minSell != null){
                 		self.sellMinFlg = true;
                 	};
					if(self.minBuy != "" && self.minBuy != null){
						self.buyMinFlg = true;
                 	};
                 	self.fnGetChart();
                 	self.fnInterestInfo(self.proInfo.productSellNumber);
                 }
             });
    	},
    	
    	
    	// 유저 관심상품 조회
    	fnInterestInfo : function(proNum){
    		var self = this;
    		var nparmap = {proNum : proNum, uId : self.sessionId};
    		console.log(proNum);
            $.ajax({
                url : "/proInterestInfo.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.interest = data.interest;
                	console.log(self.interest);
                	if(self.interest != "" && self.interest != null){
                		self.interestFlg = true;
                		return;
                	}else{
                		self.interestFlg = false;
                	}
					console.log("관심"+ self.interestFlg);
                }
            });
    	},
    	 // 관심상품 등록
         fnInterest : function(proNum){
        	var self = this;
        	var nparmap = {proNum : proNum, uId : self.sessionId, proSize : self.proInfo.productSize};
        	console.log(self.proInfo.productSize);
        	console.log("관심 세션아이디"+self.sessionId);
        	if(self.sessionId == undefined || self.sessionId  == ''){
        		
        		if(!confirm("로그인 이후 이용이 가능합니다.\n로그인 하시겠습니다?")){
        			return;
        		}else{
        			location.href="login.do";
        			return;
        		}
        	}
        	$.ajax({
                url : "/product/interest.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.interestFlg = true;
                	self.fnProList();
                	
                }
            });
        }, 
        // 관심상품 해제
        fnInterestRemove : function(proNum){
        	var self = this;
			var nparmap = {proNum : proNum, uId : self.sessionId};
        	
        	$.ajax({
                url : "/proInterestRemove.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) {
                	self.interestFlg = false;
                	self.fnProList();
                	
                }
            });
        },
        // 구매 페이지로 이동
        fnBuyPage: function () {
            var self = this;
            $.pageChange("buyforsize.do", {modelNum : self.modelNum});
           
        }, 
        // 판매 페이지로 이동
         fnSellPage: function () {
            var self = this;
            $.pageChange("sellbeforewear.do", {modelNum : self.modelNum});
        },  
        handleScroll: function () {
            this.scrollPosition = window.scrollY;
        },
        
        // 차트 리스트
        fnGetChart : function(){
            var self = this;
            var nparmap = {modelNum : self.modelNum};
            console.log("차트 모델번호"+self.modelNum);
            $.ajax({
                url : "/chartlist.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.list = data.list;
                	if(self.list != "" && self.list != null){
                		self.resentFlg = true;
                	}
					var price = [];
					var tdate = [];
					var won = "원";
					console.log(self.list);
					for(var i=0; i<self.list.length; i++){
						price.push(self.list[i].avgdate);
						tdate.push(self.list[i].ressentdate);
	
					}
					
					self.series = [{
						name : "",
						data : price
						}];
					
					const maxValue = Math.max.apply(null, price);
					const roundedMaxValue = Math.ceil(maxValue);
					const yMaxValue = roundedMaxValue * 1.5;
					self.chartOptions = {
							xaxis : {categories : tdate},
					    yaxis: {
					        max: yMaxValue,
					        min : 0,
					    },
					  
					   
					}; 
					
				
                },
            }); 
        },
       
    },
    created: function () {
        var self = this;
        self.fnProList();
        
        window.addEventListener('scroll', this.handleScroll);
        
    },
})
function toggleText() {
    var icon = document.getElementById('toggleIcon');
    var text = document.getElementById('displayText');

    if (icon.classList.contains('fa-chevron-down')) {
      icon.classList.remove('fa-chevron-down');
      icon.classList.add('fa-chevron-up');
      text.style.display = 'block';
    } else {
      icon.classList.remove('fa-chevron-up');
      icon.classList.add('fa-chevron-down');
      text.style.display = 'none';
    }
  };

function toggleText1() {
    var icon1 = document.getElementById('toggleIcon1');
    var text1 = document.getElementById('displayText1');

    if (icon1.classList.contains('fa-chevron-down')) {
      icon1.classList.remove('fa-chevron-down');
      icon1.classList.add('fa-chevron-up');
      text1.style.display = 'block';
    } else {
      icon1.classList.remove('fa-chevron-up');
      icon1.classList.add('fa-chevron-down');
      text1.style.display = 'none';
    }
  };
  function toggleText2() {
       var icon2 = document.getElementById('toggleIcon2');
       var text2 = document.getElementById('displayText2');

       if (icon2.classList.contains('fa-chevron-down')) {
         icon2.classList.remove('fa-chevron-down');
         icon2.classList.add('fa-chevron-up');
         text2.style.display = 'block';
       } else {
         icon2.classList.remove('fa-chevron-up');
         icon2.classList.add('fa-chevron-down');
         text2.style.display = 'none';
       }
     }

</script>