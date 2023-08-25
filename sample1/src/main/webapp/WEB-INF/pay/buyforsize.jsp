<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<script src="https://kit.fontawesome.com/047f82d071.js" crossorigin="anonymous"></script>
	<script src="../js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<meta charset="UTF-8">
	<title>select the size</title>
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
	
	.productdetailsizarea{
		padding:32px 32px 28px 28px;
		background-color:white;
		text-align:center;
		height: 500px;
	}
	.custom-button{
		background-color:white;
		border : 1px solid #E1E1E1;
		cursor:pointer;
		width : 200px;
		height : 60px;
		border-radius:10px;
		margin-bottom : 10px;
		margin-right : 10px;
	}
	.buyboxarea1{
		width:100%;
		padding: 32px 32px 28px 28px;
		background-color:white;
		border-top:1px solid #e1e1e1;
		text-align:center;
	}
	.buyboxarea1 button{
		width: 100%;
		height:60px;
		border-radius:10px;
		background-color:black;
		color:white;
		font-weight: bold;
		font-size:15px;
		background-color: #B5B5B5;
	}
	.buyboxarea2{
		width:100%;
		padding: 32px 32px 28px 28px;
		background-color:white;
		border-top:1px solid #e1e1e1;
		
	}
	.buyboxarea2 button{
		width: 50%;
		height:60px;
		border-radius:10px;
		background-color:black;
		color:white;
		font-weight: bold;
		background-color: #B5B5B5;
		float : left;
	}
	.selected {
		background-color: #eee;
		border-color: black; /* 선택 시 테두리 색상 변경 */
		color: red;
	}
	.custom-button {
	  background-color: white;
	  border: 1px solid black;
	  padding: 10px;
	  margin: 5px;
	  cursor: pointer;
	}
	
	.custom-button.clicked {
		background-color: black;
		border: 1px solid white;
		color : white;
	}
</style>

</head>
<%@ include file="../header/shopheader.jsp"%>
<body> 
<div id="app" style="margin-top : 100px; background-color:#fafafa;;">
	<div class="contentsarea">
		<div style="box-shadow: 0 4px 10px 0 rgba(0,0,0,.1);">
			<div class="productcontents">
				<div class="productheader" style="display: flex; align-items: center;">
				    <div class="productinfo">
				        <img :src="img.pImgPath" style="max-width : 80px">
				    </div>
				    <div style="margin-left: 10px;">
				        <div class="productdetailhead">{{proInfo.productModel}}</div>
				        <div class="productdetailname">{{proInfo.productName}}</div>
				        <div class="productdetailtransname">{{proInfo.productKname}}</div>
				    </div>
				</div>
				
			</div>
	
			<div class="productdetailsizarea">
				<ul>
					<li>
						<button v-for="sItem in computedSizeOptions" :value="sItem.productSize" class="custom-button"
						:class="{ 'clicked': sItem.clicked }" @click="handleButtonClick(sItem)">
							<div>
								<p>{{sItem.size}}</p>
								<p>구매입찰</p>
							</div>
						</button>
					</li>
				</ul>
			</div>
	
			<div class="buyboxarea1">
				<a href="buyagree.do"><button class="buy-button" disabled>구매입찰</button></a>
			</div>
<!-- 			<div class="buyboxarea2"> -->
<!-- 				<a href="buyagree.do"> -->
<!-- 					<button class="buy-button" disabled> -->
<!-- 						<strong>가격</storng> -->
<!-- 						<p>불꽃배송(1~2일소요)</p>	 -->
<!-- 					</button> -->
<!-- 				</a> -->
<!-- 				<a href="buyagree.do"> -->
<!-- 					<button class="buy-button" disabled> -->
<!-- 						<strong>가격</storng> -->
<!-- 						<p>일반배송(5~7일소요)</p> -->
<!-- 					</button> -->
<!-- 				</a> -->
<!-- 			</div> -->
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
		list : [],
		sList : [],
		img : {},
		pName : "Jordan 1 Retro Low OG Black and Dark Powder Blue",
		proInfo : {},
		product :{
			pName : "",
			pModel : "",
			pColor : "",
			pPrice : "",
			kName : "",
			launch : "",
			endDate : "",
			pCategorie1 : "0",
			pCategorie2 : "4",
			brand : "100",
			sellBuy : "",
			uId : "${sessionId}"
		},
		proNum : "221", // 상품 번호
	},// data
	//카테고리 선택 값에 따라 다르게 사이즈 선택 적용
	computed: {
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
	  },
	methods : {
		 handleButtonClick(sItem) {
		      // 버튼 클릭 시 해당 버튼의 clicked 속성 값을 토글
		      sItem.clicked = !sItem.clicked;
		    },
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
                 	
                 	console.log("proinfo"+ self.proInfo);
                 	
                 	console.log("모델번호"+self.modelNum);
                 	
                 }
             }); 
    	},
     	// 사이즈 조회
		fnGetSize : function () {
			var self = this;
			var nparmap = {};
			$.ajax({
				url : "size.dox",
				dataType : "json",
				type : "POST",
				data : nparmap,
				success : function(data){
					self.sList = data.size;
					console.log(data);
				}
			})
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
	}, // methods
	created : function() {
		var self = this;
		self.fnGetSize();
		self.fnGetImg();
		self.fnProList();
	}// created
});
</script>