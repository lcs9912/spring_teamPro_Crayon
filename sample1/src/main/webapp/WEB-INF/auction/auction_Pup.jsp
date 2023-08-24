<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script src="../js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<meta charset="UTF-8">
	<title>경매물품 등록페이지</title>
<style>
	label :hover {
		border-bottom : 3px solid black;
		cursor : pointer;
	}
	input:checked + label {
		border-bottom : 3px solid black;
		font-weight : bold;
	}
	#b, #s {
		opacity : 0;
	}
input[type="text"]{
width:470px;
height:40px;
outline: none;
border:none;
border-bottom:1px solid #eee;


}
.imgarea{
width:600px;
float:right;
margin: 30px 0 20px 0;
}
.picarea{
width:600px;
height:600px;
background-color:#eee;
float:left;
}
.leftarea{
width:600px;
float:left;
margin: 30px 0 20px 0;
height:700px;
}
.headtitlename{
width: 120px;
padding-top : 10px;

}
.leftarea div{
float:left;
height:45px;
}
.searchbtn{
float:right;
margin-top:10px;
background-color:tomato;
border:1px solid tomato;
border-radius:10px;
color:white;
}
.searchbtn:hover{
background-color:red;
}
.productbtn{
background-color : tomato;
width:150px;
height:60px;
border:none;
color:white;
border-radius:10px;
text-align:center;
}
.productbtn:hover{
background-color:red;
}
.area{
width:100%;
}
.areadetail{
width:1200px;
margin : 0 auto;
padding-top:30px;

}
.areadetail h2{
text-align : center;
padding-bottom:30px;
}
</style>
</head>
<%@ include file="../header/shopheader.jsp" %>
<body>
<div id="app">
	
	<div class="area">
	<div class="areadetail"><h2>경매등록</h2>
		<div class="leftarea">
		
		
		<div><span class="headtitlename">모델번호 입력 : </span><input v-model="info.pModel" type="text" placeholder="모델번호 입력"></div>
		<div style="width:580px;">
		<button class="searchbtn" @click="fnGetProductInfo">모델번호로 상품찾기</button>
		</div>
		
		<div style="margin-bottom : 10px;"><span class="headtitlename">상품이름 : </span><input v-model="info.productName" type="text" placeholder="상품이름"></div>
		
		<div>
		<span class="headtitlename">상품사이즈 : </span>
			<select v-model="info.productSize">
				<option value="a">사이즈</option>
				<option value="0">ONE SIZE</option>
				<option value="1">XXS</option>
				<option value="2">XS</option>
				<option value="3">S</option>
				<option value="4">M</option>
				<option value="5">L</option>
				<option value="6">XL</option>
				<option value="7">XXL</option>
				<option value="8">XXXL</option>
				<option value="9">28</option>
				<option value="10">29</option>
				<option value="11">30</option>
				<option value="12">31</option>
				<option value="13">32</option>
				<option value="14">33</option>
				<option value="15">34</option>
				<option value="16">35</option>
				<option value="17">36</option>
				<option value="18">220</option>
				<option value="19">225</option>
				<option value="20">230</option>
				<option value="21">235</option>
				<option value="22">240</option>
				<option value="23">245</option>
				<option value="24">250</option>
				<option value="25">255</option>
				<option value="26">260</option>
				<option value="27">265</option>
				<option value="28">270</option>
				<option value="28">275</option>
				<option value="30">280</option>
				<option value="31">285</option>
				<option value="32">290</option>
			</select>
		</div>
		
		<div><span class="headtitlename">상품컬러 : </span><input v-model="info.productColor" type="text" placeholder="상품컬러"></div>
		
		<div><span class="headtitlename">시작가격 : </span><input v-model="info.auctionStartPrice" type="text" placeholder="시작가격"></div>
		
		<div><span class="headtitlename">최대가격 : </span><input v-model="info.auctionMaxPrice" type="text" placeholder="최대가격"></div>
		
		<div style="margin-bottom:10px;"><span class="headtitlename">발매가 : </span><input v-model="info.productLaunchPrice" type="text" placeholder="발매가"></div>
		<div style="width:300px;">*시작일자 : <input v-model="info.auctionStartDate" type="date" placeholder="시작일자"></div>
		<div>*마감일자 : <input v-model="info.auctionEndDate" type="date" placeholder="마감일자"></div>
		<div style="width:300px;">
		<span class="headtitlename">카테고리1 : </span>
			<select  v-model="info.productCategorie1">
				<option value="0">카테고리1</option>
				<option value="1">남자</option>
				<option value="2">여자</option>
				<option value="3">신발</option>
				<option value="4">액세서리</option>
			</select>
		</div>
		<div>
		<span class="headtitlename">카테고리2 : </span>
			<select v-model="info.productCategorie2">
				<option value="0">카테고리2</option>
				<option value="1">상의</option>
				<option value="2">하의</option>
				<option value="3">아우터</option>
				<option value="4">신발</option>
				<option value="5">스니커즈</option>
				<option value="6">부츠</option>
				<option value="7">프랫</option>
				<option value="8">로퍼</option>
				<option value="9">가방</option>
				<option value="10">지갑</option>
				<option value="11">시계</option>
				<option value="12">모자</option>
			</select>
		</div>
		
		<div>브랜드 : <input value="info.productBrand" v-model="info.brandName" type="text" placeholder="브랜드"></div>
		<div>
		
	</div>
	<div style="width:600px; text-align:center; margin-top:10px;">
<button class="productbtn" @click="fnUpProduct">경매등록</button>
		</div>
		</div>
		<div class="picarea">
	<img class="imgarea" :src="info.pImgPath" style="max-width : 600px; max-height:600px;">
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
		info:{},
		list : [],
		product :{
			pName : "",
			pModel : "",
			pSize : "a",
			pColor : "",
			pPrice : "",
			launch : "",
			endDate : "",
			pCategorie1 : "0",
			pCategorie2 : "0",
			brand : "a",
			sellBuy : "",
			uId : "${sessionId}"
		},
		showDirectInput: false, // 직접입력 영역 표시 여부
		directInputBrand: '' // 직접입력한 브랜드
	},// data
	methods : {
		
		// 물품 조회
		fnGetProductInfo : function() {
			var self = this;
			var nparmap = self.info;
			$.ajax({
				url : "product.dox",
				dataType : "json",
				type : "POST",
				data : nparmap,
				success : function(data){
					self.info = data.info;
					console.log(self.info);
				}
			});
		},
		fnGetBrand : function(){
			var self = this;
			var nparmap = self.product;
			$.ajax({
				url : "brand.dox",
				dataType : "json",
				type : "POST",
				data : nparmap,
				success : function(data){
					self.list = data.list;
					console.log(self.list);
				}
			});	
		},
		fnUpProduct : function(){
		var self = this;
		var nparmap = self.info;
		$.ajax({
			url : "update.dox",
			dataType : "json",
			type : "POST",
			data : nparmap,
			success : function(data){
				self.list = data.list;
				alert("등록 완료.");
				location.href = "list.do";
			}
		});	
	}
		
	}, // methods
	created : function() {
		var self = this;
		self.fnGetBrand();
	}// created
});
</script>