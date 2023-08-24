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
		input {
            width: 470px; height: 30px; border:0px solid;
            outline: none; border-bottom: 1px solid #e8e2e2;
			margin: 15px 15px; cursor:pointer; font-size:14px;
            text-align: center;
        }
		select {outline:none; border:1px solid #7676e2; padding:5px; border-radius:3px;
				margin:20px 10px 20px 5px; color:#6f401f; font-weight:bold;
		}
        .areawrap {
            width: 100%;
        }
        /*인클루드 헤더 밑 구매 판매 선택 전체 wrap영역 시작*/

        .selectarea {
            width: 1200px; margin: 0px auto; margin-top:50px;
        }
        /*인풋 라디오, 이미지 파일 등록, 상품등록 인풋태그 감싸기 중앙정렬 영역 CSS */

        .buylabelarea {
            width: 1200px; height: 50px; margin: 0 auto;
        }

            /*구매 판매 선택영역 라벨테크 CSS */
			#buybtn:checked + #buylabel {
				background: #f13333;
			}

			#sellbtn:checked + #selllabel {
				background:#22a833;
			}
           
            #buylabel {
				width: 600px; height: 50px;
				float: left; background:#ccc;
				display: inline-block; cursor: pointer;
				font-size: 20px; text-align: center;
				color: #fff; line-height: 50px;
            }
			 #selllabel {
				width: 600px; height: 50px;
				float: left; background:#ccc;
				display: inline-block; cursor: pointer;
				font-size: 20px; text-align: center;
				color: #fff; line-height: 50px;
            }
				.buylabelarea input[type="radio"] {
					display:none;
				}/*구매 판매 라벨 선택영역 CSS 종료*/

				 /*상품등록 인풋 DIV 영역 시작*/
				.productinputarea {
					width: 600px; float: left; margin:30px 0 20px 0;
				}
					.productinputarea p {height:30px; font-size:17px; font-weight:bold;
								margin-bottom:10px;
					}
                    .productinputarea .producupload {width: 90px; display:inline-block;}
					.productinputarea button {padding:3px 15px; border-radius:3px;
							background:tomato; color:#fff; border:none;
					}
						.productinputarea .lastbtn{margin-left:200px; width:150px; height:50px;
							    font-size:17px;
						}

				/*상품등록 인풋 DIV 영역 종료*/

				/*파일 업로드 이미지 영역 DIV 시작*/
				.selectfileareazone {
					width:600px; float:left; margin:30px 0 20px 0;
				}
					.selectfileareazone p {height:30px; font-size:17px; font-weight:bold;
								display:inline-block; width:510px; margin-bottom:10px;
					}
					#uploaded-image {width:600px; height:600px;
						  border:1px solid #e8e2e2; margin-bottom:20px;}
					#file1 {display:none;}
					.fileupload {
						display: inline-block; width:82px; height:24px; line-height:24px; font-size:14px;
						background-color:tomato; color: #fff; border-radius:3px; text-align:center;
						cursor: pointer;
					}
				/*파일 업로드 이미지 영역 DIV 시작*/


</style>
</head>
<%@ include file="../header/shopheader.jsp" %>
<body>
	<div id="app">
		<div class="areawrap">
			<div class="selectarea">
				<div class="buylabelarea">
					<input v-model="product.sellBuy" name="sellbuybtn" type="radio" value="B" id="buybtn" checked><label for="buybtn" id="buylabel">구매</label>
					<input v-model="product.sellBuy" name="sellbuybtn" type="radio" value="S" id="sellbtn"><label for="sellbtn" id="selllabel">판매</label>
				</div>
				<div class="productinputarea">
					<p>희망하는 상품을 등록하세요</p>
					<label for="nameupload" class="producupload">상품이름</label><input v-model="product.pName" type="text" id="nameupload">
					<label for="modelupload" class="producupload">모델번호</label><input v-model="product.pModel" type="text" id="modelupload">
					<label for="colorupload" class="producupload">상품컬러</label><input v-model="product.pColor" type="text" id="colorupload">
					<label for="priceupload" class="producupload">상품가격</label><input v-model="product.pPrice" type="text" id="priceupload">
					<label for="knameupload" class="producupload">상품한글명</label><input v-model="product.kName" type="text" id="knameupload">
					<label for="launchupload" class="producupload">발매가</label><input v-model="product.launch" type="text" id="launchupload">
					<label for="enddateupload" class="producupload">*마감일자</label><input v-model="product.endDate" type="date" id="enddateupload">
					
					<label>메뉴 분류
						<select v-model="product.pCategorie1">
							<option value="0">카테고리1</option>
							<option value="1">남자</option>
							<option value="2">여자</option>
							<option value="3">신발</option>
							<option value="4">액세서리</option>
						</select>
					</label>
					<label>품목 분류
						<select v-model="product.pCategorie2">
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
					</label>
					<label>사이즈 분류
						<select v-model="product.pSize">
							<option value="a">사이즈</option>
							<option v-for="sItem in computedSizeOptions" :value="sItem.productSize">{{sItem.size}}</option>
						</select>
					</label>
						<div style="margin-top:10px; margin-bottom:10px;"><strong>브랜드 선택</strong></div>
						<div>
							<select v-model="product.brand" @change="handleBrandChange">
								<option value="100">브랜드</option>
								<option v-for="item in list" :value="item.productBrand">{{item.brandName}}</option>
								<option value="0">직접입력</option>
							</select>
							<div v-if="showDirectInput">
								<input v-model="directInputBrand" type="text">
								<span><button @click="fnAddBrand">등록</button></span>
							</div>
						</div>
						<button class="lastbtn" @click="fnAddProduct">상품등록</button>
					</div>					
				</div>
				<div class="selectfileareazone">
					<p>이미지 파일선택</p>
					<label for="file1" class="fileupload">파일선택</label>
					<div class="selectfilearea">
						<img id="uploaded-image" src="" alt="">
						<input type="file" id="file1" name="file1" accept=".gif, .jpg, .png">
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
			sellBuy : "B",
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
	      } else if (this.product.pCategorie2 === '4'|| this.product.pCategorie2 === '5'|| this.product.pCategorie2 === '6'|| this.product.pCategorie2 === '7'|| this.product.pCategorie2 === '8') {
	        return this.sList.slice(18,32); // 신발 카테고리인 경우 18(220)부터 32(290)까지만 보여주도록 처리
	      } else if (this.product.pCategorie2 === '2'){
	        return this.sList.slice(9,17); // 하의 카테고리에 경우 9(28)부터 17(36)까지만 보여주도록 처리
	      } else if (this.product.pCategorie2 === '9' || this.product.pCategorie2 === '10'|| this.product.pCategorie2 === '11'|| this.product.pCategorie2 === '12'){
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
			var nparmap = {brandName : self.product.brand};
			$.ajax({
				url : "addBrand.dox",
				dataType : "json",
				type : "POST",
				data : nparmap,
				success : function(data){
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


//파일 업로드 이미지 DB입력 이전 브라우저 출력을 위한 스크립트 함수 시작
const inputFile = document.getElementById('file1');
const uploadedImage = document.getElementById('uploaded-image');


inputFile.addEventListener('change', function () {
const fileReader = new FileReader();
fileReader.onloadend = function () {
	uploadedImage.src = fileReader.result;
};
if (this.files[0]) {
	fileReader.readAsDataURL(this.files[0]);
}
});
//파일 업로드 이미지 DB입력 이전 브라우저 출력을 위한 스크립트 함수 종료
</script>