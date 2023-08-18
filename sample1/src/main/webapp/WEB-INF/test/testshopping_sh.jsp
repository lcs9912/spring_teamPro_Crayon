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

* {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        li {
            list-style: none;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        img {
            max-width: 100%;
            vertical-align: top;
        }

        table {
            border-collapse: collapse;
        }

        .headerwrap { /*로그인 메뉴 CSS 시작*/
            width: 100%;
            height: 80px;
            background: #fff;
            padding-bottom: 80px;
            position: fixed;
            left: 0;
            right: 0;
            top: 0;
            z-index: 2;
        }

            .headerwrap header {
                width: 1200px;
                height: 80px;
                margin: 0 auto;
            }

        .loginmenulist {
            position: relative;
            width: 1200px;
            height: 20px;
        }

            .loginmenulist ul {
                position: absolute;
                top: 5px;
                right: 0;
            }

            .loginmenulist li {
                display: inline-block;
                margin-left: 15px;
            }

            .loginmenulist a {
                font-size: 12px;
                font-weight: bold;
                color: #777;
                display: block;
            }
        /*로그인 메뉴 CSS 종료*/

        .headermainlogo { /*헤더 로고 CSS*/
            font-weight: bold;
            position: relative;
            height: 50px;
        }

            .headermainlogo > h1 {
                display: inline-block;
                width: 200px;
                height: 50px;
                font-size: 35px;
                letter-spacing: -1px;
            }

        .headermenu { /*헤더 shop메뉴 CSS 시작*/
            font-size: 20px;
            position: absolute;
            top: 25px;
            right: 0;
        }

            .headermenu > li {
                display: inline-block;
                margin-left: 20px;
            }

                .headermenu > li > a {
                    display: block;
                    color: #333;
                }

        /*헤더 shop메뉴 CSS 종료*/

        /*SHOP영역 CSS 시작*/
        .shopwrap {
            width: 1200px;
            margin: 70px auto;            
        }

            .shopwrap h1 {
                height: 70px;
                text-align: center;
            }

        .shopnav {
            height: 55px;
            border-bottom: 1px solid #e6e4e4;
        }
        /*nav메뉴 CSS*/
        .navmenu > ul > li {
            display: inline-block; float: left;
            margin: 12px 20px 12px 0; font-size: 17px;}

        .shopcontainer {clear: both;}
        


        /*상품카테고리 세로선택 영역 시작*/
        aside {
            width: 220px; float: left;           
        }

        .sidecate {
            width: 220px; height: 761px;           
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
                            font-size: 16px; margin: 20px 0;
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
            display: flex;
            justify-content: space-between;
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

	/*푸터 CSS 시작*/
	.footerwrap{
		clear:both;		
		margin:0 auto;
		border-top:1px solid #999;
		width:1295px; height:543px;		
	}
	
	footer {
		box-sizing:border-box;
		padding:50px 0;
		width:1200px; height:543px;
		margin:0 auto;
	}
		
	.servicearea {
		margin-bottom:30px;
	}
	
	.customerinfo {
		width:300px; float:right; 
		font-size:13px; 
		color:#777;
		}
	.customerinfo h3{
		font-size:19px; margin-bottom:10px;
		color:#000;
	}
	
	.footerul {
		float:left; margin-right:150px;
		}
	
	.footerul li {
		margin:10px 0;
		
	}
	
	.footerul li a{
		display:block;
		color:#777;
		}	
	.servicearea:after {
	    clear: both;
	    content: '';
	    display: block;
	    }
	
	.companyinfo {
		border-top:1px solid #999;
		}
	
	.companyinfo p {
		font-size:13px;	color:#777; width:700px;
		margin-bottom:20px; 	
		}
	.footerul2 {
		margin:25px 0;
	}
		    
	.footerul2 li{
		float:left; font-size:16px; margin-right:15px;
		} 
	
	.footerul2 li:nth-child(5){
		font-weight:bold;
	}   
		
	.footerul2:after {
	    clear: both;
	    content: '';
	    display: block;
	    }
	    
	.footernotice{
		width:700px; font-size:13px;
		color:#777; 
		}
	.footernotice p{
		margin:10px 0; color:#000; font-size:15px; font-weight:bold;
	}
	
	.questionbtn {
		background-color:#000; color:#fff; border:0 solid; padding:10px;  font-weight: bold;
		margin-top:20px; width:180px;
	}
	.questionbtn a{
		display:block;
	}	
	/*푸터 CSS 종료*/
</style>

</head>
<body>
<div id="headerApp">
        <div class="headerwrap">
            <header>
                <div class="loginmenulist">
                    <ul>
                        <li class="loginbtn" v-if="loginOut != '' "><a href="login.do">로그아웃</a></li>
                        <li class="loginbtn" v-else><a href="login.do">로그인</a></li>
                        <li class="#"><a href="#">장바구니</a></li>
                        <li class="#"><a href="#">관심상품</a></li>
                        <li class="#"><a href="mypage.do">마이페이지</a></li>
                    </ul>
                </div>
                <div class="headermainlogo">
                    <h1><a href="#">CrayoN</a></h1>
                    <ul class="headermenu">
                        <li><a href="#">HOME</a></li>
                        <li><a href="#">STYLE</a></li>
                        <li><a href="#">SHOP</a></li>                   
                        <li class="#"><a href="search.do"><i class="fa-solid fa-magnifying-glass"></i></a></li>
                    </ul>
                </div>
            </header>
        </div>
        <div class="shopwrap">
            <!-- 쇼핑 페이지 전체감싸기 태그.  쇼핑 메뉴, 슬라이드 브랜드 선택 영역, 세로 상세품목 선택영역, 상품전시 영역 시작 -->
            <h1>SHOP</h1>
            <nav class="shopnav">
                <!--쇼핑메뉴 시작-->
                <div class="navmenu">
                    <ul>
                        <li><a href="#">전체</a></li>
                        <li><a href="#">럭셔리</a></li>
                        <li><a href="#">신발</a></li>
                        <li><a href="#">가방</a></li>
                        <li><a href="#">아우터</a></li>
                        <li><a href="#">상의</a></li>
                        <li><a href="#">하의</a></li>
                        <li><a href="#">지갑</a></li>
                        <li><a href="#">시계</a></li>
                        <li><a href="#">패션잡화</a></li>
                        <li><a href="#">컬렉터블</a></li>
                        <li><a href="#">뷰티</a></li>
                        <li><a href="#">테크</a></li>
                        <li><a href="#">캠핑</a></li>
                        <li><a href="#">가구/리빙</a></li>
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
                        <span>상품 5000</span>
                        <span>인기순</span>
                    </div>
                    <div class="goodsblock">
                        <!--상품전시  4개 한줄 영역 아티클 태그 시작-->
                        <article>
                            <a href="#">
                                <!-- 링크로 상품 상세 구매판매 페이지로 전환-->
                                <picture>
                                    <!-- 업로드 된 이미지 파일 추가되는 태그-->
                                    <span>거래 2,859</span>
                                    <img src="https://user-images.githubusercontent.com/137017779/261182897-49746f50-7bc3-4043-a112-80460cf58e86.jpg">
                                </picture>
                                <div><h5>Yeezy</h5></div><!--상품명-->
                                <div class="goodsmanual">
                                    <p>Yeezy Gap Engineered By Balenciaga Dove 3/4 Sleeve T-Shirt Black</p><!--상품설명 영문-->
                                    <p>이지 갭 엔지니어드 바이 발렌시아가 도브 3/4 슬리브 티셔츠 블랙</p><!--상품설명 영문-->
                                </div>
                                <div class="goodsprice">
                                    <h4>138,000</h4>
                                    <p>즉시구매가</p>
                                </div>
                                <div>
                                    <span>2365</span>
                                    <span>60</span>
                                </div>
                            </a>
                        </article>
                        <article>
                            <a href="#">
                                <picture>
                                    <span>거래 540</span>
                                    <img src="https://user-images.githubusercontent.com/137017779/261182852-4eb0781f-a06a-44bd-b488-d17791a9e155.jpg">
                                </picture>
                                <div><h5>Essentials</h5></div>
                                <div class="goodsmanual">
                                    <p>Essentials The Black Collection T-Shirt Black - 23SS</p>
                                    <p>에센셜 더 블랙 컬렉션 티셔츠 블랙 - 23SS</p>
                                </div>
                                <div class="goodsprice">
                                    <h4>82,000원</h4>
                                    <p>즉시구매가</p>
                                </div>
                                <div>
                                    <span>1,104</span>
                                    <span>11</span>
                                </div>
                            </a>
                        </article>
                        <article>
                            <a href="#">
                                <picture>
                                    <span>거래 740</span>
                                    <img src="https://user-images.githubusercontent.com/137017779/261182930-f7012e12-66cf-418a-a8ff-e2c5f588c8d2.jpg">
                                </picture>
                                <div><h5>Nike</h5></div>
                                <div class="goodsmanual">
                                    <p>Nike Air Force 1 '07 Fresh Black</p>
                                    <p>나이키 에어포스 1 '07 프레쉬 블랙</p>
                                </div>
                                <div class="goodsprice">
                                    <h4>141,000원</h4>
                                    <p>즉시구매가</p>
                                </div>
                                <div>
                                    <span>3,602</span>
                                    <span>30</span>
                                </div>
                            </a>
                        </article>
                        <article>
                            <a href="#">
                                <picture>
                                    <span>거래 3,480</span>
                                    <img src="https://user-images.githubusercontent.com/137017779/261182978-b4e1127b-8294-476b-b284-7f9ca8e1bf84.jpg">
                                </picture>
                                <div><h5>Nike</h5></div>
                                <div class="goodsmanual">
                                    <p>Nike x Peaceminusone Wide Pants Black (DR0096-010)</p>
                                    <p>나이키 x 피스마이너스원 와이드 팬츠 블랙 (DR0096-010)</p>
                                </div>
                                <div class="goodsprice">
                                    <h4>179,000원</h4>
                                    <p>즉시구매가</p>
                                </div>
                                <div>
                                    <span>6,522</span>
                                    <span>434</span>
                                </div>
                            </a>
                        </article>
                    </div><!-- 한줄에 4개씩 상품전시 영역 아티클 태그 종료-->
                    <div class="goodsblock">
                        <!--상품전시  4개 한줄 영역 아티클 태그 시작-->
                        <article>
                            <a href="#">
                                <!-- 링크로 상품 상세 구매판매 페이지로 전환-->
                                <picture>
                                    <!-- 업로드 된 이미지 파일 추가되는 태그-->
                                    <span>거래 2,859</span>
                                    <img src="https://user-images.githubusercontent.com/137017779/261182897-49746f50-7bc3-4043-a112-80460cf58e86.jpg">
                                </picture>
                                <div><h5>Yeezy</h5></div><!--상품명-->
                                <div class="goodsmanual">
                                    <p>Yeezy Gap Engineered By Balenciaga Dove 3/4 Sleeve T-Shirt Black</p><!--상품설명 영문-->
                                    <p>이지 갭 엔지니어드 바이 발렌시아가 도브 3/4 슬리브 티셔츠 블랙</p><!--상품설명 영문-->
                                </div>
                                <div class="goodsprice">
                                    <h4>138,000</h4>
                                    <p>즉시구매가</p>
                                </div>
                                <div>
                                    <span>2365</span>
                                    <span>60</span>
                                </div>
                            </a>
                        </article>
                        <article>
                            <a href="#">
                                <picture>
                                    <span>거래 540</span>
                                    <img src="https://user-images.githubusercontent.com/137017779/261182852-4eb0781f-a06a-44bd-b488-d17791a9e155.jpg">
                                </picture>
                                <div><h5>Essentials</h5></div>
                                <div class="goodsmanual">
                                    <p>Essentials The Black Collection T-Shirt Black - 23SS</p>
                                    <p>에센셜 더 블랙 컬렉션 티셔츠 블랙 - 23SS</p>
                                </div>
                                <div class="goodsprice">
                                    <h4>82,000원</h4>
                                    <p>즉시구매가</p>
                                </div>
                                <div>
                                    <span>1,104</span>
                                    <span>11</span>
                                </div>
                            </a>
                        </article>
                        <article>
                            <a href="#">
                                <picture>
                                    <span>거래 740</span>
                                    <img src="https://user-images.githubusercontent.com/137017779/261182930-f7012e12-66cf-418a-a8ff-e2c5f588c8d2.jpg">
                                </picture>
                                <div><h5>Nike</h5></div>
                                <div class="goodsmanual">
                                    <p>Nike Air Force 1 '07 Fresh Black</p>
                                    <p>나이키 에어포스 1 '07 프레쉬 블랙</p>
                                </div>
                                <div class="goodsprice">
                                    <h4>141,000원</h4>
                                    <p>즉시구매가</p>
                                </div>
                                <div>
                                    <span>3,602</span>
                                    <span>30</span>
                                </div>
                            </a>
                        </article>
                        <article>
                            <a href="#">
                                <picture>
                                    <span>거래 3,480</span>
                                    <img src="https://user-images.githubusercontent.com/137017779/261182978-b4e1127b-8294-476b-b284-7f9ca8e1bf84.jpg">
                                </picture>
                                <div><h5>Nike</h5></div>
                                <div class="goodsmanual">
                                    <p>Nike x Peaceminusone Wide Pants Black (DR0096-010)</p>
                                    <p>나이키 x 피스마이너스원 와이드 팬츠 블랙 (DR0096-010)</p>
                                </div>
                                <div class="goodsprice">
                                    <h4>179,000원</h4>
                                    <p>즉시구매가</p>
                                </div>
                                <div>
                                    <span>6,522</span>
                                    <span>434</span>
                                </div>
                            </a>
                        </article>
                    </div><!-- 한줄에 4개씩 상품전시 영역 아티클 태그 종료-->
                    <div class="goodsblock">
                        <!--상품전시  4개 한줄 영역 아티클 태그 시작-->
                        <article>
                            <a href="#">
                                <!-- 링크로 상품 상세 구매판매 페이지로 전환-->
                                <picture>
                                    <!-- 업로드 된 이미지 파일 추가되는 태그-->
                                    <span>거래 2,859</span>
                                    <img src="https://user-images.githubusercontent.com/137017779/261182897-49746f50-7bc3-4043-a112-80460cf58e86.jpg">
                                </picture>
                                <div><h5>Yeezy</h5></div><!--상품명-->
                                <div class="goodsmanual">
                                    <p>Yeezy Gap Engineered By Balenciaga Dove 3/4 Sleeve T-Shirt Black</p><!--상품설명 영문-->
                                    <p>이지 갭 엔지니어드 바이 발렌시아가 도브 3/4 슬리브 티셔츠 블랙</p><!--상품설명 영문-->
                                </div>
                                <div class="goodsprice">
                                    <h4>138,000</h4>
                                    <p>즉시구매가</p>
                                </div>
                                <div>
                                    <span>2365</span>
                                    <span>60</span>
                                </div>
                            </a>
                        </article>
                        <article>
                            <a href="#">
                                <picture>
                                    <span>거래 540</span>
                                    <img src="https://user-images.githubusercontent.com/137017779/261182852-4eb0781f-a06a-44bd-b488-d17791a9e155.jpg">
                                </picture>
                                <div><h5>Essentials</h5></div>
                                <div class="goodsmanual">
                                    <p>Essentials The Black Collection T-Shirt Black - 23SS</p>
                                    <p>에센셜 더 블랙 컬렉션 티셔츠 블랙 - 23SS</p>
                                </div>
                                <div class="goodsprice">
                                    <h4>82,000원</h4>
                                    <p>즉시구매가</p>
                                </div>
                                <div>
                                    <span>1,104</span>
                                    <span>11</span>
                                </div>
                            </a>
                        </article>
                        <article>
                            <a href="#">
                                <picture>
                                    <span>거래 740</span>
                                    <img src="https://user-images.githubusercontent.com/137017779/261182930-f7012e12-66cf-418a-a8ff-e2c5f588c8d2.jpg">
                                </picture>
                                <div><h5>Nike</h5></div>
                                <div class="goodsmanual">
                                    <p>Nike Air Force 1 '07 Fresh Black</p>
                                    <p>나이키 에어포스 1 '07 프레쉬 블랙</p>
                                </div>
                                <div class="goodsprice">
                                    <h4>141,000원</h4>
                                    <p>즉시구매가</p>
                                </div>
                                <div>
                                    <span>3,602</span>
                                    <span>30</span>
                                </div>
                            </a>
                        </article>
                        <article>
                            <a href="#">
                                <picture>
                                    <span>거래 3,480</span>
                                    <img src="https://user-images.githubusercontent.com/137017779/261182978-b4e1127b-8294-476b-b284-7f9ca8e1bf84.jpg">
                                </picture>
                                <div><h5>Nike</h5></div>
                                <div class="goodsmanual">
                                    <p>Nike x Peaceminusone Wide Pants Black (DR0096-010)</p>
                                    <p>나이키 x 피스마이너스원 와이드 팬츠 블랙 (DR0096-010)</p>
                                </div>
                                <div class="goodsprice">
                                    <h4>179,000원</h4>
                                    <p>즉시구매가</p>
                                </div>
                                <div>
                                    <span>6,522</span>
                                    <span>434</span>
                                </div>
                            </a>
                        </article>
                    </div><!-- 한줄에 4개씩 상품전시 영역 아티클 태그 종료-->
                    <div class="goodsblock">
                        <!--상품전시  4개 한줄 영역 아티클 태그 시작-->
                        <article>
                            <a href="#">
                                <!-- 링크로 상품 상세 구매판매 페이지로 전환-->
                                <picture>
                                    <!-- 업로드 된 이미지 파일 추가되는 태그-->
                                    <span>거래 2,859</span>
                                    <img src="https://user-images.githubusercontent.com/137017779/261182897-49746f50-7bc3-4043-a112-80460cf58e86.jpg">
                                </picture>
                                <div><h5>Yeezy</h5></div><!--상품명-->
                                <div class="goodsmanual">
                                    <p>Yeezy Gap Engineered By Balenciaga Dove 3/4 Sleeve T-Shirt Black</p><!--상품설명 영문-->
                                    <p>이지 갭 엔지니어드 바이 발렌시아가 도브 3/4 슬리브 티셔츠 블랙</p><!--상품설명 영문-->
                                </div>
                                <div class="goodsprice">
                                    <h4>138,000</h4>
                                    <p>즉시구매가</p>
                                </div>
                                <div>
                                    <span>2365</span>
                                    <span>60</span>
                                </div>
                            </a>
                        </article>
                        <article>
                            <a href="#">
                                <picture>
                                    <span>거래 540</span>
                                    <img src="https://user-images.githubusercontent.com/137017779/261182852-4eb0781f-a06a-44bd-b488-d17791a9e155.jpg">
                                </picture>
                                <div><h5>Essentials</h5></div>
                                <div class="goodsmanual">
                                    <p>Essentials The Black Collection T-Shirt Black - 23SS</p>
                                    <p>에센셜 더 블랙 컬렉션 티셔츠 블랙 - 23SS</p>
                                </div>
                                <div class="goodsprice">
                                    <h4>82,000원</h4>
                                    <p>즉시구매가</p>
                                </div>
                                <div>
                                    <span>1,104</span>
                                    <span>11</span>
                                </div>
                            </a>
                        </article>
                        <article>
                            <a href="#">
                                <picture>
                                    <span>거래 740</span>
                                    <img src="https://user-images.githubusercontent.com/137017779/261182930-f7012e12-66cf-418a-a8ff-e2c5f588c8d2.jpg">
                                </picture>
                                <div><h5>Nike</h5></div>
                                <div class="goodsmanual">
                                    <p>Nike Air Force 1 '07 Fresh Black</p>
                                    <p>나이키 에어포스 1 '07 프레쉬 블랙</p>
                                </div>
                                <div class="goodsprice">
                                    <h4>141,000원</h4>
                                    <p>즉시구매가</p>
                                </div>
                                <div>
                                    <span>3,602</span>
                                    <span>30</span>
                                </div>
                            </a>
                        </article>
                        <article>
                            <a href="#">
                                <picture>
                                    <span>거래 3,480</span>
                                    <img src="https://user-images.githubusercontent.com/137017779/261182978-b4e1127b-8294-476b-b284-7f9ca8e1bf84.jpg">
                                </picture>
                                <div><h5>Nike</h5></div>
                                <div class="goodsmanual">
                                    <p>Nike x Peaceminusone Wide Pants Black (DR0096-010)</p>
                                    <p>나이키 x 피스마이너스원 와이드 팬츠 블랙 (DR0096-010)</p>
                                </div>
                                <div class="goodsprice">
                                    <h4>179,000원</h4>
                                    <p>즉시구매가</p>
                                </div>
                                <div>
                                    <span>6,522</span>
                                    <span>434</span>
                                </div>
                            </a>
                        </article>
                    </div><!-- 한줄에 4개씩 상품전시 영역 아티클 태그 종료-->
                </div><!--상품전시 영역 종료-->
            </div><!--세로 상세품목 선택영역, 상품전시 영역 시작-->
        </div><!-- 쇼핑 페이지 전체감싸기 태그, 슬라이드 메뉴, 세로 메뉴, 상품전시 영역 종료 -->
    </div>



		<div class="footerwrap">
		<footer>
		<div class="servicearea">
			<div class="customerinfo">
				<h3>고객센터 1588-7813</h3>
				<p>운영시간 평일 11:00 - 18:00 (토 일, 공휴일 휴무)  점심시간 평일 13:00 - 14:00</p>
				<p>1:1 문의하기는 앱에서만 가능합니다.</p>
				<button class="questionbtn"><a href="#">자주묻는질문</a></button>
			</div>
			<div>
				<ul class="footerul">
					<h3>이용안내</h3>
					<li><a href="#">검수기준</a></li>
					<li><a href="#">이용정책</a></li>
					<li><a href="#">페널티 정책</a></li>
					<li><a href="#">커뮤니티 가이드라인</a></li>
				</ul>
			</div>
			<div>
				<ul class="footerul">
					<h3>고객지원</h3>
					<li><a href="#">공지사항</a></li>
					<li><a href="#">서비스 소개</a></li>
					<li><a href="#">스토어 안내</a></li>
					<li><a href="#">판매자 방문접수</a></li>
				</ul>
			</div>
			</div>
		<div class="companyinfo">
			<ul class="footerul2">
				<li><a href="#">회사소개</a></li>
				<li><a href="#">인재채용</a></li>
				<li><a href="#">제휴제안</a></li>
				<li><a href="#">이용약관</a></li>
				<li><a href="#">개인정보처리방침</a></li>
			</ul>
			<p>크림 주식회사 · 대표 김창욱사업자등록번호 : 570-88-01618 사업자정보확인통신판매업 : 제 2021-성남분당C-0093호사업장소재지 : 경기도 성남시 분당구 분당내곡로 131 판교테크원 타워1, 8층호스팅 서비스 : 네이버 클라우드</p>
		</div>
		<div class="footernotice">
			<p>신한은행 채무지급보증 안내</p>
			당사는 고객님의 현금 결제 금액에 대해 신한은행과 채무지급보증 계약을 체결하여 안전거래를 보장하고 있습니다.서비스가입 사실 확인
			크림(주)는 통신판매 중개자로서 통신판매의 당사자가 아닙니다. 본 상품은 개별판매자가 등록한 상품으로 상품, 상품정보, 거래에 관한 의무와 책임은 각 판매자에게 있습니다. 단, 이용약관 및 정책, 기타 거래 체결 과정에서 고지하는 내용 등에 따라 검수하고 보증하는 내용에 대한 책임은 크림(주)에 있습니다.
		</div>
	</footer>
	</div>
</body>
</html>
<script>
var headerApp = new Vue({
    el : '#headerApp',
    data : {
        loginOut : "${sessionId}"
    },// data
    methods : {
        fnCheck : function(){
            var self = this;
            var nparmap = {}
              $.ajax({
                    url:"list.dox",
                    dataType:"json",
                    type : "POST",
                    data : nparmap,
                    success : function(data) {

                    }
                });
        },
    }, // methods
    created : function() {
        var self = this;

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
 
</script>
