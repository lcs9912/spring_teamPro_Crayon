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

                    .sidecate .catecheckbox {display: none;}
                        .catecheckbox label{
                            width:180px; display:inline-block;
                        }

                        .catecheckbox p {
                            font-size: 16px; margin: 20px 0; cursor: pointer;
                        }
                        
                            .shoessize td {
                                border: 1px solid #a7a6a6;
                                width: 61px; height: 35px;
                                margin: 4px 7px 4px 0;
                                text-align: center;
                                display: inline-block;
                                line-height: 35px; color: #777;
                            }
                           
                            .wearsize td {
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

                            .clothsize td {
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
            grid-template-columns: repeat(4, 1fr); /* 가로로 4개씩 나열 */
            gap: 5px; /* 각 상품 사이의 간격 */
        }

		.goodsblock {
		    display: flex;
		    flex-wrap: wrap;
		    gap: 5px;
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
            .checkbox {display:none;}
            .checked {
                border-color: transparent;
                background: #333;
                animation: jelly 0.6s ease;
            }
            .eventcheckbox::after {
                content: '';
                position: absolute;
                top: 39%;
                left: 8%;
                width: 10px;
                height: 6px;
                border-left: solid white 3px;
                border-bottom: solid white 3px;
                transform-origin: top left;
                transform: rotate(-45deg);          
            }

            .checkbox:checked ~ .eventcheckbox::after {
                transform-origin: top right;
                opacity: 1;    
            }

            .eventcheckbox {display:inline-block; position:relative; margin-right:5px;
                            width:18px; height:18px; border:1px solid #c8ccd4;
                            border-radius:3px; transition:background 0.1s ease;
                            cursor:pointer; vertical-align:middle;}
    
            @keyframes jelly {
                from{transform:scale(1, 1);}
                30%{transform:scale(1.25, 0.75);}
                40%{transform:scale(0.75, 1.25);}
                50%{transform:scale(1.15, 0.85);}
                65%{transform:scale(0.95, 1.05);}
                75%{transform:scale(1.05, 0.95);}
                to{transform:scale(1, 1);}
            }
            /*체크박스 버튼 젤리 애니매이션 효과 CSS 종료*/

	
</style>

</head>
<%@ include file="../header/shopheader.jsp"%>
<body>
	<div id="app">
        <div class="shopwrap">
            <!-- 쇼핑 페이지 전체감싸기 태그.  쇼핑 메뉴, 슬라이드 브랜드 선택 영역, 세로 상세품목 선택영역, 상품전시 영역 시작 -->
            <h1 v-if='searchName == ""'>SHOP</h1>
            <input  v-if='searchName != ""' v-model="searchName">
            <nav class="shopnav">
                <!--쇼핑메뉴 시작-->
                <div class="navmenu">
                    <ul>
                        <li><a href="#">전체</a></li>
                        <li><a href="#">럭셔리</a></li>
                        <li><a href="#">상의</a></li>
                        <li><a href="#">하의</a></li>
                        <li><a href="#">아우터</a></li>
                        <li><a href="#">신발</a></li>
                        <li><a href="#">가방</a></li>
                        <li><a href="#">지갑</a></li>
                        <li><a href="#">시계</a></li>
                        <li><a href="#">패션잡화</a></li>
                        <li><a href="#">컬렉터블</a></li>
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
                            <div class="allcatebox cateselect">
                                카테고리
                                <p>모든 카테고리</p>
                            </div>
                            <div class="allcatecheck catecheckbox">
                                <p class="catecheckptag">카테고리</p>
                                <input type="checkbox" id="topwear" name="goodsallcate" class="checkbox">
                                <label for="topwear"><span class="eventcheckbox"></span>상의</label>
                                <input type="checkbox" id="lowest" name="goodsallcate" class="checkbox">
                                <label for="lowest"><span class="eventcheckbox"></span>하의</label>
                                <input type="checkbox" id="outer" name="goodsallcate" class="checkbox">
                                <label for="outer"><span class="eventcheckbox"></span>아우터</label>
                                <input type="checkbox" id="shoes" name="goodsallcate" class="checkbox">
                                <label for="shoes"><span class="eventcheckbox"></span>신발</label>
                                <input type="checkbox" id="sneakers" name="goodsallcate" class="checkbox">
                                <label for="sneakers"><span class="eventcheckbox"></span>스니커즈</label>                                
                                <input type="checkbox" id="boots" name="goodsallcate" class="checkbox">
                                <label for="boots"><span class="eventcheckbox"></span>부츠</label>
                                <input type="checkbox" id="flatshoes" name="goodsallcate" class="checkbox">
                                <label for="flatshoes"><span class="eventcheckbox"></span>플랫슈즈</label>
                                <input type="checkbox" id="loafer" name="goodsallcate" class="checkbox">
                                <label for="loafer"><span class="eventcheckbox"></span>로퍼</label>
                                <input type="checkbox" id="bag" name="goodsallcate" class="checkbox">
                                <label for="bag"><span class="eventcheckbox"></span>가방</label>
                                <input type="checkbox" id="wallet" name="goodsallcate" class="checkbox">
                                <label for="wallet"><span class="eventcheckbox"></span>지갑</label>
                                <input type="checkbox" id="watch" name="goodsallcate" class="checkbox">
                                <label for="watch"><span class="eventcheckbox"></span>시계</label>
                                <input type="checkbox" id="cap" name="goodsallcate" class="checkbox">
                                <label for="cap"><span class="eventcheckbox"></span>모자</label>
                            </div>
                        </div><!--카테고리 div영역 종료 -->
                        <div class="genderarea catearea"><!--성별 div영역 시작 -->
                            <div class="genderbox cateselect">
                                성별
                                <p>모든 성별</p>
                            </div>
                            <div class="gendercheck catecheckbox">
                                <p class="gendercheckptag">성별</p>
                                <input type="checkbox" id="male" name="goodsallcate" class="checkbox">
                                <label for="male"><span class="eventcheckbox"></span>남성</label>
                                <input type="checkbox" id="female" name="goodsallcate" class="checkbox">
                                <label for="female"><span class="eventcheckbox"></span>여성</label>
                            </div>
                        </div><!--성별 div영역 종료 -->
                        <div class="sizearea catearea"><!--사이즈 div영역 시작 -->                            
                            <div class="sizebox cateselect">
                                사이즈
                                <p>모든 사이즈</p>
                            </div>
                            <div class="sizecheck catecheckbox">
                                <!--사이즈 테이블 영역 시작-->
                                <p class="sizecheckptag">사이즈</p>
                                <p>신발</p>
                                <table class="shoessize">
                                    <tr>
                                        <td><a href="#">220</a></td>
                                        <td><a href="#">225</a></td>
                                        <td><a href="#">230</a></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#">235</a></td>
                                        <td><a href="#">240</a></td>
                                        <td><a href="#">245</a></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#">250</a></td>
                                        <td><a href="#">255</a></td>
                                        <td><a href="#">260</a></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#">265</a></td>
                                        <td><a href="#">270</a></td>
                                        <td><a href="#">275</a></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#">280</a></td>
                                        <td><a href="#">285</a></td>
                                        <td><a href="#">290</a></td>
                                    </tr>
                                </table>
                                <p>의류</p>
                                <table class="wearsize">
                                    <tr>
                                        <td><a href="#">XXS</a></td>
                                        <td><a href="#">XS</a></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#">S</a></td>
                                        <td><a href="#">M</a></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#">L</a></td>
                                        <td><a href="#">XL</a></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#">XXL</a></td>
                                        <td><a href="#">XXXL</a></td>
                                    </tr>
                                </table>
                                <table class="clothsize">
                                    <tr>
                                        <td><a href="#">28</a></td>
                                        <td><a href="#">29</a></td>
                                        <td><a href="#">30</a></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#">31</a></td>
                                        <td><a href="#">32</a></td>
                                        <td><a href="#">33</a></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#">34</a></td>
                                        <td><a href="#">35</a></td>
                                        <td><a href="#">36</a></td>
                                    </tr>
                                </table>
                            </div><!--사이즈 테이블 영역 종료-->
                        </div><!--사이즈 div영역 종료 -->
                        <div class="pricearea catearea"><!--가격 div영역 시작 -->                            
                            <div class="pricebox cateselect">
                                가격
                                <p>모든 가격</p>
                            </div>
                            <div class="pricecheck catecheckbox">
                                <p class="pricecheckptag">가격</p>
                                <input type="checkbox" id="tenlow" name="goodsallcate" class="checkbox">
                                <label for="tenlow"><span class="eventcheckbox"></span>10만 이하</label>
                                <input type="checkbox" id="tenhigh" name="goodsallcate" class="checkbox">
                                <label for="tenhigh"><span class="eventcheckbox"></span>10~30만원</label>
                                <input type="checkbox" id="thirtyhigh" name="goodsallcate" class="checkbox">
                                <label for="thirtyhigh"><span class="eventcheckbox"></span>30~50만원</label>
                                <input type="checkbox" id="fiftyhigh" name="goodsallcate" class="checkbox">
                                <label for="fiftyhigh"><span class="eventcheckbox"></span>50~100만원</label>
                                <input type="checkbox" id="hundredhigh" name="goodsallcate" class="checkbox">
                                <label for="hundredhigh"><span class="eventcheckbox"></span>100~300만원</label>
                                <input type="checkbox" id="threehunredhigh" name="goodsallcate" class="checkbox">
                                <label for="threehunredhigh"><span class="eventcheckbox"></span>300만 이상</label>
                            </div>
                        </div><!--가격 인풋영역 종료 -->
                    </div>
                </aside><!--세로 상세품목 선택영역 종료-->
                <div class="goodsdisplay">
                    <!--상품전시 영역 시작-->
                    <div class="goodsinfo">
                        <span>상품 5000</span> <!-- 검색된 상품 갯수 -->
                        <span>인기순</span> <!-- 정렬 조건 -->
                    </div>
                    
                    <div class="goodsblock" v-for="(group, index) in shopListGrouped" :key="index">
                        <!--상품전시  4개 한줄 영역 아티클 태그 시작-->
                        <div  v-for="item in group" :key="item.productId" class="goodsitem">
	                        <article>  <!-- v-for 시작  -->
	                            <a @click="fnProInfo(item.productModel)"> 
	                                <!-- 링크로 상품 상세 구매판매 페이지로 전환-->
	                                <picture >
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
            var nparmap = {searchName : self.searchName}
            console.log(self.searchName);
              $.ajax({
                    url:"/shopList.dox",
                    dataType:"json",
                    type : "POST",
                    data : nparmap,
                    success : function(data) {
                    	self.shopList = data.shopList;
                    	console.log(self.shopList);
                    	console.log(self.searchName);
                    	
						
                    }
                });
        },
        // 상품상세페이지 이동
        fnProInfo : function(productModel){
        	var self = this;
        	$.pageChange("/product.do", {modelNum : productModel});
        	console.log(productModel);
        	
        },
    }, // methods
    created : function() {
        var self = this;
		self.fnGetList();
    }// created
});

    $(function () {//사이드카테고리 선택영역에서 영역클릭 시 div가 보여지고 감춰지는 스크립트
        $(".allcatebox").on("click", function () {//모든 카테고리 div를 클릭하면
            $(".allcatecheck").show();//카테고리 체크박스 div를 보여주고
            $(this).hide(); // 모든 카테고리 div를 숨김
        });
        $(".catecheckptag").on("click", function () {//모든 체크박스의 P태그를 클릭하면
            $(".allcatebox").show();//모든 카테고리를 보여주고
            $(".allcatecheck").hide(); // 카테고리 체크박스 div를 숨김
        });

        $(".genderbox").on("click", function () {//클래스만 젠더로 바꾸고 카테고리와 같은 함수명령
            $(".gendercheck").show();
            $(this).hide();
        });
        $(".gendercheckptag").on("click", function () {
            $(".genderbox").show();
            $(".gendercheck").hide();
        });

        $(".sizebox").on("click", function () {
            $(".sizecheck").show();
            $(this).hide();
        });

        $(".sizecheckptag").on("click", function () {//클래스만 사이즈로 바꿈
            $(".sizebox").show();
            $(".sizecheck").hide();
        });
        $(".pricebox").on("click", function () {
            $(".pricecheck").show();
            $(this).hide();
        });

        $(".pricecheckptag").on("click", function () {//클래스만 가격으로 바꿈
            $(".pricebox").show();
            $(".pricecheck").hide();
        });
    });

   $(function () {
        $("input[type='checkbox']").change(function () {
            $(this).next("label").find(".eventcheckbox").toggleClass("checked");
        });
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
