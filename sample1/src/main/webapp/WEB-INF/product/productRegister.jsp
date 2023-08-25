<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script src="../js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<meta charset="UTF-8">
	<title>상품등록페이지</title>
<style>
	label :hover {
		background-color:#a2a2a2;
		cursor : pointer;
	}
	input:checked + label {
		border-radius:10px;
		background-color:#a2a2a2;
		font-weight : bold;
	}
/* input[type="radio"]{
	position: absolute;
	opacity: 0;
	width: 0;
} */
	.area{
	width:100%;
	text-align:center;
	margin-top:50px;
	}
	.lastbtn{
	text-align:center;
	margin-top:15px;
	width:100px;
	height:30px;
	background-color:white;
	border-radius:10px;
	border:1px solid #a2a2a2;
	}
	.lastbtn:hover{
	background-color:#BCB9B9;
	}
	.buylabel,.selllabel{
	font-weight:bold;
	display:inline-block;
	line-height:50px;
	font-size:30px;
	
	width:48%;
	}
	.selectarea{
	width:600px;
	margin : 0 auto;
	}
	.selectfile{
	margin-bottom:30px;
	}
	.selectfilearea{
	border:1px solid black;
	width:300px;
	border-radius:10px;
	
	}
	.selectfileareazone{
	width:100%;
	text-align:center;
	margin-bottom:30px;
	}
	
	input[type="text"]{
	width:200px;
	height:40px;
	margin-bottom:30px;
	}
	select{
	width:200px;
	height:45px;
	text-align:center;
	color:#a2a2a2;
	}
	input[type="date"]{
	width:150px;
	height:30px;
	text-align:center;
	margin-left:10px;
	}
	label{
	width:150px;
	}

	.buybtn, .sellbtn{
	width:100%;
	height:50px;
	color:white;
	font-size:18px;
	background-color:#E8E8E8;
	}
	.buybtn {
		margin-right:-10px;
		margin-bottom:10px;
	}
	.buybtn:hover{
	background-color:tomato;
	}
	
	.sellbtn:hover{
	background-color:limegreen;
	}
</style>
</head>
<body>
<div id="app">
	<div class="area">
	<div class="areaselect">
	<div class="selectarea">

		<div class="buylabel">
			<input class="buybtn" v-model="product.sellBuy" type="radio" value="B" id="b"><label for="B">구매</label>
			</div>
		<div class="selllabel">
			<input class="sellbtn" v-model="product.sellBuy" type="radio" value="S" id="s"><label for="S">판매</label>
		</div>
		</div>
		
		<div class="selectfileareazone">
		<div class="selectfilearea" style="margin: 0 auto;"><p style="font-weight:bold;">이미지 파일선택</p>
		<div class="selectfile">
			<input type="file"  id="file1" name="file1" accept=".gif, .jpg, .png" style="padding-top:20px;">
		</div>
		</div>
		</div>
		
		<div>
		<div style="display:inline-block;">
		<input v-model="product.pName" type="text" placeholder="상품이름" style="display:inline-block; text-align:center;">
		<div style="display:inline-block;">
		<input v-model="product.pModel" type="text" placeholder="모델번호" style="display:inline-block; text-align:center;">
		</div>
		</div>
		</div>
		
		<div>
		<div style="display:inline-block;"><input v-model="product.pColor" type="text" placeholder="상품컬러" style="text-align:center;"></div>
		<div style="display:inline-block;"><input v-model="product.pPrice" type="text" placeholder="상품가격" style="text-align:center;"></div>
		<div>
			<input v-model="product.kName" type="text" placeholder="상품한글명" style="text-align:center;">
		</div>
		<div>
			<input v-model="product.launch" type="text" placeholder="발매가" style="text-align:center;">
		</div>
		<div style="margin-bottom:30px;">*마감일자<input v-model="product.endDate" type="date" placeholder="마감일자"></div>
		<div style="margin-bottom:10px; font-weight:bold;">카테고리 선택</div>
	<div>
		<div style="display:inline-block">
			<select  v-model="product.pCategorie1">
				<option value="0">카테고리1</option>
				<option value="1">남자</option>
				<option value="2">여자</option>
				<option value="3">신발</option>
				<option value="4">액세서리</option>
			</select>
		</div>
		<div style="display:inline-block">
			<select v-model="product.pCategorie2">
				<option value="0">카테고리2</option>
				<option value="1">상의</option>
				<option value="2">하의</option>
				<option value="3">아우터</option>
				<option value="4">스니커즈</option>
				<option value="5">부츠</option>
				<option value="6">프랫</option>
				<option value="7">로퍼</option>
				<option value="8">가방</option>
				<option value="9">지갑</option>
				<option value="10">시계</option>
				<option value="11">모자</option>
			</select>
		</div>
		<div>
			<select v-model="product.pSize">
				<option value="a">사이즈</option>
				<option v-for="sItem in computedSizeOptions" :value="sItem.productSize">{{sItem.size}}</option>
			</select>
		</div>
		<div style="margin-top:10px; margin-bottom:10px;"><strong>브랜드 선택</strong></div>
		<div> 
			<select v-model="product.brand" @change="handleBrandChange"	>
				<option value="100">브랜드</option>
				<option v-for="item in list" :value="item.productBrand">{{item.brandName}}</option>
				<option value="0">직접입력</option>
			</select>
			<div v-if="showDirectInput">
				<input v-model="directInputBrand" type="text">
				<span><button @click="fnAddBrand">등록</button></span>
			</div>
		</div>
	</div>
		<button class="lastbtn" @click="fnAddProduct">상품등록</button>
	</div>
</div>
</div>
</div>
</body>
</html>
<script>

var app = new Vue({
	el : '#app',
	data : {
		list : [],
		sList : [],
		product :{
			pName : "",
			pModel : "",
			pSize : "a",
			pColor : "",
			pPrice : "",
			kName : "",
			launch : "",
			endDate : "",
			pCategorie1 : "0",
			pCategorie2 : "0",
			brand : "100",
			sellBuy : "",
			uId : "${sessionId}"
		},
		showDirectInput: false, // 직접입력 영역 표시 여부
		directInputBrand: '' // 직접입력한 브랜드
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
		// 브랜드 직접 입력시 등록 창 보이게하기
		handleBrandChange: function(event) {
			var self = this;
			 console.log("Product Brand:", self.product.brand);
			if (event.target.value === '0') {
				self.showDirectInput = true;
			} else {
				self.showDirectInput = false;
			}
		},
		// 상품 등록	
		fnAddProduct : function (){
			var self = this;
			if(self.product.sellBuy == ""){
				alert("구매/판매를 선택해주세요");
				return;
			}
			if(self.product.sellbuy == ""){
				alert("구매/판매를 선택해주세요");
				return;
			}
			if(self.product.pName == ""){
				alert("상품명을 입력해주세요");
				return;
			}
			if(self.product.pModel == ""){
				alert("상품의 모델명을 입력해주세요");
				return;
			}
			if(self.product.kName == "") {
				alert("상품의 한글명을 입력해주세요");
				return;
			}
			if(self.product.pSize == ""){
				alert("상품의 사이즈를 입력해주세요");
				return;
			}
			if(self.product.pPrice == ""){
				alert("상품가격을 입력해주세요");
				return;
			}
			if(self.product.pCategorie1 == ""){
				alert("카테고리1을 입력해주세요");
				return;
			}
			if(self.product.pCategorie2 == ""){
				alert("카테고리2를 입력해주세요");
				return;
			}
			if(self.product.brand == ""){
				alert("상품의 브랜드명을 입력해주세요");
				return;
			}
			var nparmap = self.product;
			$.ajax({
				url : "addProduct.dox",
				dataType : "json",
				type : "POST",
				data : nparmap,
				success : function(data){
					var form = new FormData();
					 form.append( "file1",  $("#file1")[0].files[0] );
		       	     form.append( "productName",  self.product.pName); // pk
		           	 self.upload(form);
		       	     console.log(form);
					alert("등록 완료");
				}
			});
		},
		// 파일 업로드
		upload: function(form) {
		    var self = this;

		    $.ajax({
		        url: "fileUpload.dox",
		        type: "POST",
		        processData: false,
		        contentType: false,
		        data: form,
		        success:function(response) { 
		        	   
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
		// 브랜드이름 직접입력 추가
		fnAddBrand : function (){
			var self = this;
			var nparmap = {brandName : self.directInputBrand};
			$.ajax({
				url : "addBrand.dox",
				dataType : "json",
				type : "POST",
				data : nparmap,
				success : function(data){
					console.log(data);
					self.list.push(data);
					self.fnGetBrandName();
					self.directInputBrand = '';
					self.showDirectInput = false;
				}
			});
		},
		// 브랜드이름 조회
		fnGetBrandName : function() {
			var self = this;
			var nparmap = {};
			$.ajax({
				url : "brand.dox",
				dataType : "json",
				type : "POST",
				data : nparmap,
				success : function(data){
					self.list = data.brand;
					console.log(self.list);
				}
			});
		}
	}, // methods
	created : function() {
		var self = this;
		self.fnGetSize();
		self.fnGetBrandName();
		console.log(self.product);
	}// created
});
/* var buyButton = document.querySelector('.buybtn');
var sellButton = document.querySelector('.sellbtn');
buyButton.addEventListener('click', function() {
    buyButton.style.backgroundColor = 'tomato';
    sellButton.style.backgroundColor = '#E8E8E8';
});
sellButton.addEventListener('click', function() {
    buyButton.style.backgroundColor = '#E8E8E8';
    sellButton.style.backgroundColor = 'limegreen';
}); */

</script>