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
    min-height: 900px;
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
.productdetailhead,
.productdetailname,
.productdetailtransname,
.productdetailsize{
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

.productdetailagreearea{
padding:0px 32px 28px 28px;
background-color:white;

}
.noticeheader{
font-size: 15px;
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
    margin-top: 4px;
    padding-bottom : 28px;
    display:inline-block;
}
input[type=checkbox] {
cursor:pointer;
-ms-transform: scale(2);
-moz-transform: scale(2);
-webkit-transform: scale(2);
-o-transform: scale(2)
}

.continuebtn button{
background-color:#a2a2a2;
border:none;
width:100%;
height:50px;
border-radius:15px;
color:white;
font-size:25px;
margin-top:10px;
}
 .continuebtn button.continuebtn-active {
            background-color: black;
            cursor:pointer;
        }
</style>

</head>
<%@ include file="../header/shopheader.jsp"%>
<body> 
<div id="app" style="margin-top : 100px; background-color:#fafafa;;">
	<div class="contentsarea">
		<div style="box-shadow: 0 4px 10px 0 rgba(0,0,0,.1);">
			<div class="productcontents">
				<h1 style="padding-bottom:20px; text-align:center;">
				<span style="color:red;">구매</span>하시기 전에 꼭 확인하세요.
				</h1>
				<div class="productheader" style="display: flex; align-items: center;">
				    <div class="productinfo">
				    	<!-- 상품이미지 출력 -->
				       <img :src="proInfo.pImgPath" style="max-width : 80px"> 	
				    </div>
				    <div style="margin-left: 10px;">
				    	<!-- 모델번호,상품명,한글명,size 출력 -->
				        <div class="productdetailhead">{{proInfo.productModel}}</div>
				        <div class="productdetailname">{{proInfo.productName}}</div>
				        <div class="productdetailtransname">{{proInfo.productKname}}</div>
				        <div class="productdetailsize">{{size}}</div>
				    </div>
				</div>
			</div>
			
			<div class="productdetailagreearea">
				<div class="noticegroup">
					<div class="noticeheader">구매하려는 상품이 맞습니다.</div>
					<div class="checkarea">
						<div style="float:right; display:inline-block;"><input type="checkbox" v-model="agreements[0]"></div>
						<div class="noticecontents">상품 이지미,모델번호,출시일,상품명,사이즈를 한 번 더 확인했습니다. 
						단,상품의 이미지는 촬영환경에 따라 실제와 다를 수 있습니다.
						</div>
					</div>
				</div>
				<div class="noticegroup">
					<div class="noticeheader">국내/해외에서 발매한 정품 · 새상품입니다.</div>
					<div class="checkarea">
						<div style="float:right; display:inline-block;"><input type="checkbox" v-model="agreements[1]"></div>
						<div class="noticecontents">모든 구성품이 그대로이며, 한 번도 착용하지 않은 정품・새상품입니다. 국내 발매 상품 여부는 확인드리지 않습니다.
						</div>
					</div>
				</div>
				<div class="noticegroup">
					<div class="noticeheader">제조사에서 불량으로 인정하지 않는 기준은 하자로 판단하지 않습니다.</div>
					<div class="checkarea">
						<div style="float:right; display:inline-block;"><input type="checkbox" v-model="agreements[2]"></div>
						<div class="noticecontents">박스/패키지와 상품 컨디션에 민감하시다면 검수 기준을 반드시 확인하시기 바랍니다.
							<div style="padding-top:10px;"><a href="#" style="color:#899CFC">검수기준 보기</a></div>
						</div>
					</div>
				</div>
				<div class="noticegroup"  style="border:none;">
					<div class="noticeheader">KREAM의 최신 이용정책을 모두 확인하였으며, 구매를 계속합니다.</div>
					<div class="checkarea">
						<div style="float:right; display:inline-block;"><input type="checkbox" v-model="agreements[3]"></div>
						<div class="noticecontents">건전하고 안전한 거래를 위해 반드시 숙지해야 할 미입고, 페널티, 부정거래 등의 이용정책을 확인했습니다.
							<div style="padding-top:10px;"><a href="#" style="color:#899CFC">이용정책 보기</a></div>
						</div>
					</div>
				</div>
				<div class="continuebtn" style="width:100%; text-align:center;">
					<a @click="fnNowBuy"><button :class="{ 'continuebtn-active': allCheck }" :disabled="!allCheck">구매 계속</button></a>
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
    data: {
    	size : "",
		sizel : [
			{size : ""}
		],
        agreements: [false, false, false, false],
        list : [],
		sList : [],
		
		proInfo : {},
		product :{
			pCategorie2 : "4",
			brand : "100",
			sellBuy : "",
			uId : "${sessionId}"
		},
		proNum : "${map.proNum}", // 상품 모델 번호로 상품 정보를 호출
    },
    computed: {
    	//카테고리 선택 값에 따라 다르게 사이즈 선택 적용
    	 computedSizeOptions() {
   	      if (this.product.pCategorie2 === '1' || this.product.pCategorie2 === '3') {
   	        return this.sList.slice(1, 8); // 상의,아우터 카테고리인 경우 1(XXS)부터 8(XXL)까지만 보여주도록 처리
   	      } else if (this.product.pCategorie2 === '4'|| this.product.pCategorie2 === '5'|| this.product.pCategorie2 === '6'|| this.product.pCategorie2 === '7') {
   	        return this.sList.slice(18,32); // 신발 카테고리인 경우 18(220)부터 32(290)까지만 보여주도록 처리
   	      } else if (this.product.pCategorie2 === '2'){
   	        return this.sList.slice(9,17); // 하의 카테고리에 경우 9(28)부터 17(36)까지만 보여주도록 처리
   	      } else if (this.product.pCategorie2 === '8' || this.product.pCategorie2 === '9' || this.product.pCategorie2 === '10'|| this.product.pCategorie2 === '11'){
   	        return this.sList.slice(32,34); // 이외의 카테고리에 경우 나머지를 보여주도록 처리
   	      }
   	    }, 
        allCheck: function() {
            return this.agreements.every(item => item === true);
        },
    },
    methods: {
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

                 }
             }); 
    	},
    	fnNowBuy : function(){
    		var self = this;
    		$.pageChange("nowbuy.do", {proNum : self.proNum});
    	}
     	
    }, // methods
    created : function() {
		var self = this;
		
		self.fnProInfo();
	}// created
});
</script>