<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
    <script src="../js/jquery.js"></script>	
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <script src="https://kit.fontawesome.com/15a79bdff8.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>shopping 페이지 틀작업</title>
<style>
        /*SHOP영역 CSS 시작*/ 
        .shopwrap {
            width: 1200px;
            margin: 10px auto;
            z-index: 900;            
        }
            .shopwrap h1 {
                height: 70px;
                text-align: center;
            }
        .shopnav {           
            height: 55px; width:1200px;
            border-bottom: 1px solid #e6e4e4;
            top: 80px;
            background-color: white;        
            position: sticky;
            z-index:90;                
        }
        
        .inputflgbox {width:1200px; margin:20px 0 40px 0; text-align:center;} /*검색창 이후 플래그로 활성화 되는 검색바*/
        	.inputflgbox input{width: 450px; height:70px; border:0px solid #fff; border-bottom:2px solid #333; margin:0 auto; outline:none;
        					font-size:25px; font-weight:bold; display:inline-block;
        	}
        
        /*nav메뉴 CSS*/
        .navmenu > ul > li {
            display: inline-block; float: left; 
            margin: 12px 20px 12px 0; font-size: 17px;}
        
        
        /*상품카테고리 세로선택 영역 시작*/
        aside {
            width: 220px;
            float: left;
            top:120px;
        }
        .sidecate {
            width: 220px;
            background: #fff;
            position: sticky;
            top: 120px;
            max-height: calc(100vh - 200px);
            overflow-y: auto;
            overflow-x: hidden;         
        }
			
			.sidecate::-webkit-scrollbar {width: 1px; /* 스크롤바의 폭 지정 */}
            .sidecate::-webkit-scrollbar-thumb {
                background-color: rgba(255, 255, 255, 0); /* 스크롤바 색상을 투명하게 설정 */
            }
            .sidecate::-webkit-scrollbar-track {
                background-color: rgba(255, 255, 255, 0); /* 스크롤바 배경색을 투명하게 설정 */
            }
            .sidecate h4 { /*상품 세로선택영역 숨겨진 div CHERK CSS 시작*/
                width: 200px; height: 52px; margin-top: 25px;
            }
            .catearea {width:204px; border-bottom: 1px solid #eaeaea;
                       padding-bottom:20px;
            }
                .sidecate .cateselect {
                    width: 204px; height: 65px; 
                    display: block; font-size: 15px;
                    cursor: pointer; padding-top: 15px;                  
                }
                    .sidecate .cateselect p {
                        margin-top:10px; font-size: 16px;color: #e6e4e4;
                    }
                    
                        .catecheckbox label{
                            width:180px; display:inline-block;
                        }
                        .catecheckbox p {
                            font-size: 16px; margin: 20px 0; cursor: pointer;
                        }
                        
                       
                        
                            .shoessize {
                                border: 1px solid #a7a6a6;
                                width: 61px; height: 35px;
                                margin: 4px 7px 4px 0;
                                text-align: center;
                                display: inline-block;
                                line-height: 35px; color: #777;
                            }
                           
                            .wearsize  {
                                border: 1px solid #a7a6a6;
                                height: 35px;
                                line-height: 28px;
                                width: 95px;
                                margin: 4px 6px 4px 0;
                                display: inline-block;                                
                                text-align: center;
                                color: #777;
                            }
                            .clothsize {
                                margin: 20px 0;
                            }
                            .clothsize  {
                                border: 1px solid #a7a6a6;
                                width: 61px; height: 35px;
                                line-height: 35px;
                                margin: 4px 7px 4px 0;
                                display: inline-block;
                                text-align: center;
                                color: #777;
                            }
							.clearfix::after {
							    content: "";
							    display: table;
							    clear: both;
							}
                        /*상품 세로선택영역 숨겨진 div CSS종료*/
                /*상품카테고리 세로메뉴 영역 종료*/
        
        /*상품 품목별 전시영역 시작*/
        .goodsdisplay { /*상품 품목별 4개씩 분류 전시 영역*/
            float: left; width: 980px; margin-bottom:30px;
        }
        .goodsinfo {
            width: 980px;
            height: 24px;
            margin: 20px 0 24px 0;
        }
            .goodsinfo span:nth-child(1) {
                float: left;
                font-size: 14px;
                color: #333;
            }
            .goodsinfo span:nth-child(2) {
                float: right;
            }
        .goodsblock {
            width: 980px;
            height: 401px;
            margin-bottom:50px;
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 5px;
        }
		.goodsblock {
		    display: flex;
		    flex-wrap: wrap;
		    justify-content:space-between;
		}
            .goodsblock article {
                width: 230px;
                height: 401px;
                background: #fff;
                border-radius: 10px;
            }
                .goodsblock article picture {
                    width: 230px;
                    height: 230px;
                    position: relative;
                }
                    .goodsblock article picture img {
                        border-radius: 10px;
                        margin-bottom: 7px;
                    }
                    .goodsblock article picture > span {
                        position: absolute;
                        top: 10px;
                        right: 10px;
                        font-size: 11px;
                        font-weight: bold;
                    }
                /*상품이미지 내부 거래수 스팬태그*/
                .goodsmanual p {
                    font-size: 13px;
                    margin: 3px;
                }
                    .goodsmanual p:nth-child(2) {
                        font-size: 11px;
                        color: #ccc;
                    }
                /*상품설명 영,한 p태그 두개 영역*/
                .goodsprice h4 {
                    margin-top: 5px;
                }
                .goodsprice p {
                    font-size: 11px;
                    color: #ccc;
                }
            /*상품 품목별 전시영역 종료*/
        /*SHOP영역 CSS 종료*/
            /*체크박스 버튼 젤리 애니매이션 효과 CSS 시작*/
            /* .checkbox {display: none;} */
          
            
            .sizearea input[type="checkbox"] { display: none; }
            .sizearea  label {
            	width: 50px;
            }
            /*체크박스 버튼 젤리 애니매이션 효과 CSS 종료*/
            a{
            	cursor: pointer;
            }
			
			i {
			cursor: pointer;	
			}            
          
	
</style>
</head>
<%@ include file="../header/shopheader.jsp"%>
<body>
	<div id="app">
        <div class="shopwrap">
            <!-- 쇼핑 페이지 전체감싸기 태그.  쇼핑 메뉴, 슬라이드 브랜드 선택 영역, 세로 상세품목 선택영역, 상품전시 영역 시작 -->
            <h1 v-if="!searchFlg">SHOP</h1>
            <div class="inputflgbox" v-if="searchFlg">
            	<input v-model="searchName" @keyup.enter="fnGetList(searchName)"><i class="fa-solid fa-xmark" @click="fnInputFlg"></i>
            </div>
            <nav class="shopnav" v-if="!searchFlg">
                <!--쇼핑메뉴 시작-->
                <div class="navmenu">
                    <ul>
                        <li><a @click="fnReset">전체</a></li>
                        <li><a @click="fnReset">상의</a></li>
                        <li><a @click="fnReset">하의</a></li>
                        <li><a @click="fnReset">아우터</a></li>
                        <li><a @click="fnReset">신발</a></li>
                        <li><a @click="fnReset">가방</a></li>
                        <li><a @click="fnReset">지갑</a></li>
                        <li><a @click="fnReset">시계</a></li>
                        <li><a @click="fnReset">패션잡화</a></li>
                        
                    </ul>
                </div>
            </nav><!--쇼핑메뉴 종료-->            
            <div class="shopcontainer">
                <!--세로 상세품목 선택영역, 상품전시 영역 시작-->
                <aside>
                    <!--세로 상세품목 선택영역 시작-->
                    <div class="sidecate">
                        <h4>필터</h4>
                        <div class="allcatearea catearea">
                            <!--카테고리 인풋영역 시작 -->         
                                             
                            <div class="allcatebox cateselect" v-if="!cate1Flg" @click="cate1Flg = true">  <!-- 클릭 하면 카테고리 on -->
                                카테고리1
                                <p>더보기</p>
                            </div>
                            <div class="allcatecheck catecheckbox"  v-else>
                                <p class="catecheckptag" @click="cate1Flg = false">카테고리1</p>  <!-- 클릭 하면 카테고리 off -->
                                <div v-for="itemCate1 in cate1">
	                                <label>
				                    	<input type="checkbox" name="goodsallcate" 
				                    	:value="itemCate1.categorie1" v-model="cate1Value"
				                    	class="checkbox" @change="fnGetList">
										<span class="eventcheckbox"></span>{{itemCate1.c1Text}}
			                        </label>
                          		</div>
                        </div><!--카테고리 div영역 종료 -->
                        
                        
                        <div class="genderarea catearea"><!--카테고리2 div영역 시작 -->
                            <div class="genderbox cateselect" v-if="!cate2Flg" @click="cate2Flg = true">
                                카테고리2
                                <p>더보기</p>
                            </div>
                            <div class="gendercheck catecheckbox" v-else>
                                <p class="gendercheckptag" @click="cate2Flg = false">카테고리2</p>
                                <div v-for="itemCate2 in cate2">
                                	<label>
		                                <input type="checkbox" name="goodsallcate" 
		                                :value="itemCate2.categorie2" v-model="cate2Value"
		                                class="checkbox" @change="fnGetList">
		                                <span class="eventcheckbox"></span>{{itemCate2.c2Text}}
	                                </label>
                                </div>
                            </div>
                        </div><!--성별 div영역 종료 -->
                        <div class="sizearea catearea"><!--사이즈 div영역 시작 -->                            
                            <div class="sizebox cateselect" v-if="!sizeFlg" @click="sizeFlg = true">
                                사이즈
                                <p>모든 사이즈</p>
                            </div>
                            <div class="sizecheck catecheckbox" v-else>
                                <!--사이즈 테이블 영역 시작-->
                                <p class="sizecheckptag" @click="sizeFlg = false">사이즈</p>
                                
                                <p>상의</p>
                                <div v-for="topItem in topList" class="wearsize">  
	                                <label :class="{ 'active': sizeArr.includes(topItem.productSize) }">                             
		                                <input type="checkbox" :value="topItem.productSize" v-model="sizeArr" @change="fnGetList">
		                                {{topItem.size}}
		                            </label>
                                </div>
                                
                                <p>하의</p>
                                <div v-for="bottomItem in bottomList" class="clothsize">
                                    <label>
	                                    <input type="checkbox" :value="bottomItem.productSize" v-model="sizeArr" @change="fnGetList">
	                                    <span>{{bottomItem.size}}</span>  
                                    </label>                               
                                </div>
                                
                               	<p>신발</p>
                                <div v-for="shoesItem in shoesList" class="shoessize">
                                	<label>
	                                    <input type="checkbox" :value="shoesItem.productSize" v-model="sizeArr" @change="fnGetList">
	                                    <span>{{shoesItem.size}}</span>
                                    </label>
                                </div>
                                
                            </div><!--사이즈 테이블 영역 종료-->
                        </div><!--사이즈 div영역 종료 -->
                        <div class="pricearea catearea"><!--가격 div영역 시작 -->                            
                            <div class="pricebox cateselect" v-if="!priceFlg" @click="priceFlg = true">
                                가격
                                <p>모든 가격</p>
                            </div>
                            <div class="pricecheck catecheckbox" v-else>
                                <p class="pricecheckptag"  @click="priceFlg = false">가격</p>
                                <label>
	                                <input type="checkbox" name="goodsallcate" class="checkbox">
	                                <span class="eventcheckbox"></span>10만 이하
                                </label>
                                <label>
	                                <input type="checkbox" name="goodsallcate" class="checkbox">
	                                <span class="eventcheckbox"></span>10~30만원
                                </label>
                                <label>
	                                <input type="checkbox" name="goodsallcate" class="checkbox">
	                                <span class="eventcheckbox"></span>30~50만원
                                </label>
                                <label>
	                                <input type="checkbox" name="goodsallcate" class="checkbox">
	                                <span class="eventcheckbox"></span>50~100만원
                                </label>
                                <label>
	                                <input type="checkbox" name="goodsallcate" class="checkbox">
	                                <span class="eventcheckbox"></span>100~300만원
                                </label>
                                <label>
	                                <input type="checkbox" name="goodsallcate" class="checkbox">
	                                <span class="eventcheckbox"></span>300만 이상
                                </label>
                            </div>
                        </div><!--가격 인풋영역 종료 -->
                    </div>
                </aside><!--세로 상세품목 선택영역 종료-->
                <div class="goodsdisplay">
                    <!--상품전시 영역 시작-->
                    <div class="goodsinfo">
                        <span>상품 {{shopList.length}}</span> <!-- 검색된 상품 갯수 -->
                        <span>인기순</span> <!-- 정렬 조건 -->
                    </div>
                    
                    <div class="goodsblock" v-for="(group, index) in shopListGrouped" :key="index">
                        <!--상품전시  4개 한줄 영역 아티클 태그 시작-->
                        <div  v-for="item in group" :key="item.productId" class="goodsitem">
	                        <article>  <!-- v-for 시작  -->
	                            <a @click="fnProInfo(item.productModel)"> 
	                                <!-- 링크로 상품 상세 구매판매 페이지로 전환-->
	                                <picture>
	                                    <!-- 업로드 된 이미지 파일 추가되는 태그-->
	                                    
	                                    <img :src="item.pImgPath">
	                                </picture>
	                                <div><h5>{{item.brandName}}</h5></div><!--브랜드 명-->
	                                <div class="goodsmanual">
	                                    <p>{{item.productName}}</p><!--상품명 영문-->
	                                    <p>{{item.productKname}}</p><!--상품명 한문-->
	                                </div>
	                                <div class="goodsprice">
	                                    <h4>{{item.buyminprice}}</h4>
	                                    <p>즉시구매가</p>
	                                </div>
	                                <div>
	                                    <span>관심 갯수 : {{item.productInterest}}</span>  <!-- 관심 갯수 -->
	                                    
	                                </div>
	                            </a>
	                        </article>
                        </div>
                    </div><!-- 한줄에 4개씩 상품전시 영역 아티클 태그 종료-->
                </div><!--상품전시 영역 종료-->
            </div><!--세로 상세품목 선택영역, 상품전시 영역 시작-->
        </div><!-- 쇼핑 페이지 전체감싸기 태그, 슬라이드 메뉴, 세로 메뉴, 상품전시 영역 종료 -->
    </div>	
</body>
</html>
<script>
var app = new Vue({
    el : '#app',
    data : {
    	shopList : [],
        uId : "${sessionId}",
        searchName : "${map.searchName}",
        cate1 : [],
    	cate2 : [],
    	shoesList : [],
    	topList : [],
    	bottomList : [],
    	
    	
    	
    	
    	// 검색 벨류
    	sizeArr : [],
    	cate1Value : [],
    	cate2Value : [],
    	
    	// 카테고리 플러그
        cate1Flg : false,
        cate2Flg : false,
        sizeFlg : false,
        priceFlg : false,
        attachRed : false,
        searchFlg : false,
    },// data
    computed: {
        shopListGrouped() {
            // 상품 리스트를 4개씩 그룹화하여 반환하는 계산된 속성
            const grouped = [];
            for (let i = 0; i < this.shopList.length; i += 4) {
                grouped.push(this.shopList.slice(i, i + 4));
            }
            return grouped;
        }
    },
    methods : {
    	// SHOP 리스트 출력
        fnGetList : function(){
            var self = this;
            var arrSize = JSON.stringify(self.sizeArr);
            var arrCate1 = JSON.stringify(self.cate1Value);
            var arrCate2 = JSON.stringify(self.cate2Value);
            console.log(self.seachName);
            var nparmap = {
            		searchName : self.searchName,
            		sizeArr : arrSize,
            		cate1Value : arrCate1,
            		cate2Value : arrCate2
            }
            //console.log(self.searchName);
			//console.log(self.cate1Value);
			//console.log(self.cate2Value);
              $.ajax({
                    url:"/shopList.dox",
                    dataType:"json",
                    type : "POST",
                    data : nparmap,
                    success : function(data) {
                    	self.shopList = data.shopList;
                    	console.log(self.shopList);
                    	console.log(self.sizeArr);
                    	if(self.searchName != "" && self.searchName != null){
                    		self.searchFlg = true;
                    	}else{
                    		self.searchFlg = false;
                    	}	
                    }
                });
        },
        // 카테고리 리스트 출력
        fnCateList : function(){
            var self = this;
            
            var nparmap = {searchName : self.searchName};
            
            console.log(self.searchName);
              $.ajax({
                    url:"/searchCate.dox",
                    dataType:"json",
                    type : "POST",
                    data : nparmap,
                    success : function(data) {
                    	self.cate1 = data.cate1;
                    	self.cate2 = data.cate2;
                    	console.log(self.cate1);
                    	
						
                    }
                });
        },
        // 상품상세페이지 이동
        fnProInfo : function(productModel){
        	var self = this;
        	$.pageChange("/product.do", {modelNum : productModel});
        },
        // 사이즈 테이블 리스트
        fnSizeList : function(){
			var self = this;
			var param = {};
			$.ajax({
				url : "/size.dox",
				dataType : "json",
				type : "POST",
				data : param,
				success : function(data) {
					self.topList = data.size.slice(0,8);
					self.bottomList = data.size.slice(8,17);
					self.shoesList = data.size.slice(17,32);
					
				}
			});
		},
		// 헤더 검색인풋
		fnSearchFlg : function(){
			var self = this;
			if(self.searchName != '' && self.searchName != null){
				self.searchFlg = true;
			} else{
				self.searchFlg = false;
			}
			console.log(self.searchFlg);
		},
		// 카테고리 전체 클릭시
		fnReset : function(){
			location.reload();
		},
		// 헤더 인풋 옆 x 클릭
		fnInputFlg : function(){
			var self = this;
			self.searchName = "";
			self.fnGetList();
			self.searchFlg = false;
		}
		
      
       
    }, // methods
    created : function() {
        var self = this;
		self.fnGetList();
		self.fnCateList();
		self.fnSizeList();
		self.fnSearchFlg();
    }// created
});
    

        
   $(document).ready(function () {
        // 스크롤 이벤트 처리
        $(window).scroll(function () {
            var scrollTop = $(window).scrollTop(); // 스크롤 위치 가져오기 
            var sidecateHeight = $(".sidecate").height();
            // shopnav 위치 조정
            if (scrollTop > 80) {
                $(".shopnav").css({ "position": "fixed", "top": "80" });
            } else {
                $(".shopnav").css({ "position": "static", "top": "auto" });
            }
                        
        });
   });
 
</script>