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

<body> 
<div id="app">
	<div class ="productcontents">
	<div class="rightcolumn">
	
		<div class="toptitlebox">
		<div class="startendtime">
		
		<div class="starttime">경매 시작날짜
		<div class="startendnum">00000000</div>
		</div>
		
		<div class="endtime">경매 마감날짜
		<div class="startendnum">00000000</div>
			</div>
		</div>
		
		
		<div>
		<p class="brandheader">{{proInfo.brandName}} 1</p>
		</div>
		<div class="subtitle">
		<p>{{proInfo.productName}}</p>
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
		<span class="recentsellpay" style="font-weight: bold; font-size:20px;">{{resent.transactionPrice}}원</span>
		</div>
		
		<div class="recentsell" style="border: none;">
		<span style="color: #646363; font-size: 13px;">경매 시작가격</span>
		<span class="recentsellpay" style="font-weight: bold; font-size:20px;">원</span>
		</div><div class="recentsell" style="border: none;">
		<span style="color: #646363; font-size: 13px;">경매 한도가격</span>
		<span class="recentsellpay" style="font-weight: bold; font-size:20px;">원</span>
		</div>
		</div>
		
		<div class="productinfodetail">
		<div class="productdetailheader">상품정보
		</div>
		
		<div class="productlist">
		
			<div class="detailproductheader">
			모델번호
			<div style="color:black; font-size:14px; font-weight: bold;">{{proInfo.productModel}}
			</div>
			</div>

			<div class="detailproductheader">
			출시일
			<div style="color:black; font-size:14px;">{{proInfo.productUpdate}}</div>
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
		
		<div class="btnaction">
		
		<button class="buyaction" onclick="openPopup('auction/join.do')">
		<strong class="nowbuy" style='box-shadow:1px px 0px px'>입찰하기</strong>
		</button>

		</div>
		
		<div style="width:600px;">
		<div class="interestbtn" style="cursor: pointer;text-align:center;">
		<i class="fa-solid fa-bookmark" v-if="interestFlg" @click="fnInterestRemove"></i> <!-- 저장 O -->
		<i class="fa-regular fa-bookmark" @click="fnInterest" v-if="!interestFlg"></i>  <!-- 저장 X-->
		관심상품<strong> {{proInfo.productInterest}}</strong>
		</div>
		</div>
		
		<div class="actiontimearea">
		
		<div class="actionendtime">경매 남은시간</div>
		<div class="endtimenum">00:00:00</div>
	
		</div>
		</div>
		
		
		
		<div class="displayitem">
			<div class="displayitemtitle">
			<span class="bidderlisttitle">입찰자 리스트</span>
			<span class="biddernum">참여자 수 : 000명</span>
			</div>
		</div>
		
		<div class="displaypoint">
		<div class="displaybidderbox" style="overflow: auto;">
		
		<table>
		<tr>
		<th style="border-right:1px solid #eee;">아이디</th>
		<th>입찰시간</th>
		</tr>
		
		<tr>
		<td>sakjd</td>
		<td>time</td>
		</tr>
		
		<tr>
		<td>sakjd</td>
		<td>time<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>1</td>
		</tr>
		</table>
		
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
			<div class="displaygraph">
    			<div id="chart">
     			   <apexchart type="line" height="200px" width="600px" :options="chartOptions" :series="series"></apexchart>
   				 </div>
			</div>
			
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
	<div class="leftbox" :class="{ 'fixed': scrollPosition >= 500 }">
		<div class="leftcolumnbox">
		<img :src="img.pImgPath" style="max-width : 600px">  <!-- 상품 이미지 -->
		</div>
		
		
		<div class="selldanger" style='box-shadow:2px 3px 5px 0px #eee; float:left;'>
		<span class="caremark">주의</span>
		<span class="dangertext">판매 거래 주의사항</span>
		<p class="submarktext">반드시 보유한 상품만 판매하세요.</p>
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
    	img : {},
    	pImgPath : "",
    	pName : "Stussy 8 Ball T-Shirt White - 22SS",	
        model: "",
        scrollPosition: 0,
        sessionId : "${sessionId}",
        proInfo : {}, // 리스트로 수정 예정 물품 정보 
        resent : {}, // 최근 거래가
        modelNum : "", // 모델변호
        minSell : "", // 즉시 판매가
        minBuy : "", // 즉시 구매가
        proNum : 7, // 상품 번호
      
        interestFlg : false, // 관심상품 조회
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
            var nparmap = {proNum : self.proNum};
           
             $.ajax({
                 url : "/productInfo2.dox",
                 dataType:"json",	
                 type : "POST", 
                 data : nparmap,
                 success : function(data) { 
                 	self.proInfo = data.proInfo;
                 	self.modelNum = data.proInfo.productModel; // 모델번호
                 	
                 	console.log("proinfo"+ self.proInfo);
                 	
                 	console.log("모델번호"+self.modelNum);
                 	self.fnGetChart();
                 	self.fnSellBuyMin();
                 	self.fnInterestInfo();
                 	self.fnResent();
                 }
             }); 
    	},
    	// 즉시 구매 판매 가격 
    	fnSellBuyMin : function(){
    		var self = this;
    		var nparmap = {modelNum : self.modelNum};
    		console.log(self.modelNum);
             $.ajax({
                url : "/productInfo2.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.minSell = data.minSell;
                	self.minBuy = data.minBuy;
                	console.log("즉시 구매가"+self.minBuy);
                	console.log("즉시 판매가"+self.minSell);
                
                }
            });  
    	},
    	// 유저 관심상품 조회
    	fnInterestInfo : function(){
    		var self = this;
    		var nparmap = {proNum : self.proNum, uId : self.sessionId};
            $.ajax({
                url : "/proInterestInfo.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.interest = data.interest;
                	console.log("관심"+data.interest);
                	if(self.interest != undefined){
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
        fnInterest : function(){
        	var self = this;
        	var nparmap = {proNum : self.proNum, uId : self.sessionId, proSize : self.proInfo.productSize};
        	console.log("등록"+ self.proInfo.productSize);
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
        fnInterestRemove : function(){
        	var self = this;
			var nparmap = {proNum : self.proNum, uId : self.sessionId};
        	
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
       // 최근 거래가
       fnResent : function(){
    	   var self = this;
    	   var nparmap = {modelNum : self.modelNum};
    	   console.log("최근거래가 모델번호"+self.modelNum);
       	
        	$.ajax({
               url : "/product/resent.dox",
               dataType:"json",	
               type : "POST", 
               data : nparmap,
               success : function(data) { 
               	self.resent = data.resent;
               	
               }
           }); 
       },
        
        fnBuy: function () {
            var self = this;
            $.pageChange("productBuy");
        }, 
         fnSell: function () {
            var self = this;
        },  
        handleScroll: function () {
            this.scrollPosition = window.scrollY;
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
        self.fnGetImg();
        window.addEventListener('scroll', this.handleScroll);
        
    },
})
function openPopup(url) {
    const popup = window.open(url, 'popupWindow', 'width=800,height=600,scrollbars=yes');
    popup.focus();
}
</script>