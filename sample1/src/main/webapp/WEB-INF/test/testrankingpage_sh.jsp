<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://kit.fontawesome.com/15a79bdff8.js" crossorigin="anonymous"></script>
<title>CrayoN 헤더 인클루드 수정페이지</title>
<style>
	* {margin: 0; padding: 0; box-sizing: border-box;}
    li {list-style: none;}
    a {text-decoration: none; color: inherit;}
    img {max-width: 100%; vertical-align: top;}

	/*헤더영역 전체 CSS 시작*/
	.headerwrap{
		width:100%; height:100px; border-bottom: 1px solid #ccc;
		padding-bottom:130px; position:fixed;
		left:0; right:0; top:0; z-index:2; background: #fff;
	}

	.headerwrap header {/*헤더영역 css 시작*/
		width:1200px; height:130px;
		margin:0 auto; 
	}
		.loginmenulist {position:relative; width:1200px; height:20px;}/*로그인 메뉴 CSS 시작*/
			.loginmenulist ul{
				position:absolute; top:5px; right:0;
			}
			.loginmenulist li{
				display:inline-block; margin-left:15px;
			}
			.loginmenulist a {
				font-size:12px;
				font-weight: bold;		
				color: #777;
				display:block;	
			}/*로그인 메뉴 CSS 종료*/
	
		.headermainlogo {/*헤더 로고 CSS*/
			font-weight: bold; 
			position:relative; 
			height:70px;
		}
			.headermainlogo>h1{display:inline-block; width:200px; height:50px;
						font-size:35px; letter-spacing: -1px;
			}
	    .headermenu {/*헤더 대분류 메뉴 CSS 시작*/
       		font-size: 20px;       
			position:absolute;
			top:25px; 
			right:0;
    	}
		.headermenu>li{
			display:inline-block; margin-left:20px;
		}
			.headermenu>li>a {
				display:block;
				color: #333;			    
			}
			
		/*헤더 대분류 메뉴 CSS 종료*/

		.rankingnav {/*헤더 nav메뉴 영역 CSS 시작*/
			font-weight: bold; height:30px; 
			}
			.rankingnav ul {
				font-weight: bold; 
			}

			.rankingnav ul li {
				display: inline-block; line-height:30px;
				margin-right: 15px; 
			}

			.rankingnav ul li a {
				text-align: right; color: black; 
				text-decoration: none; font-size:18px;
			}/*헤더 nav메뉴 영역 CSS 종료*/
	/*헤더영역 전체 CSS 종료*/

	 /*상품 품목별 전시영역 시작*/

	 	.rankwrap {width:1200px; margin:170px auto;}
	 	.goodsdisplay { /*상품 품목별 4개씩 분류 전시 영역*/
            width: 1200px; margin-bottom:30px; 
        }

        .ranktitle {
            width: 1200px; height: 24px;
            margin: 20px 0 24px 0; font-weight: bold;
        }

            .goodsinfo p {                
                font-size: 14px; color: #333;
            }         

        .goodsblock {
            width:1200px;
            height: 401px;
            margin-bottom:50px;
            display: flex;
            justify-content: space-between;
        }

            .goodsblock article {
                width: 285px;
                height: 486px;
                background: #fff;
                border-radius: 10px;
            }

                .goodsblock article picture {
                    width: 285px;
                    height: 230px;
                    position: relative;					
                }
				.goodsblock article a:hover picture{
					width:280px; height:240px; position:relative;
				}
                    .goodsblock article picture img {
                        border-radius: 10px;
                        margin-bottom: 7px;
						background: #b0c9dc;
                    }
					.goodsblock article a:hover picture img {
						transform: scale(1.05);
						transition: transform 0.3s ease-in-out;
					}
					.goodsblock article a {
						position: relative;
						display: inline-block;
					}
                    .goodsblock article a>span {
                        position: absolute;
                        top: 10px; left: 10px; text-align: center;
                        font-size: 15px; font-weight: bold;
						width:25px; height:25px; color:#fff;
						border-radius:5px; background: #333;
						line-height: 25px; z-index: 1;
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

				.dropdownbtn {
					height:100px; border-bottom:1px solid #ccc; text-align: center;
				}

				.dropdownbtn button{border:1px solid #ccc; font-size:16px; background:#fff;
					width:100px; height:50px; border-radius: 15px;
				}
            /*상품 품목별 전시영역 종료*/

</style>
</head>
<body>
<div id="headerApp">
	<div class="headerwrap"><!--헤더영역 div 시작-->
		<header>
			<div class="loginmenulist"><!--헤더 로그인 메뉴영역 시작-->
				<ul>
					<li class="loginbtn" v-if="loginOut != '' "><a href="login.do">로그아웃</a></li>
					<li class="loginbtn" v-else><a href="login.do">로그인</a></li>					
					<li class="#"><a href="#">장바구니</a></li>
					<li class="#"><a href="#">관심상품</a></li>
					<li class="#"><a href="mypage.do">마이페이지</a></li>
				</ul>
			</div><!--헤더 로그인 메뉴영역 종료-->
			<div class="headermainlogo"><!--헤더 대분류 메뉴영역 시작-->
				<h1><a href="#">CrayoN</a></h1>
				<ul class="headermenu">
					<li><a href="testrankingpage.do">HOME</a></li>
					<li><a href="#">STYLE</a></li>
					<li><a href="testshopping.do">SHOP</a></li>
					<li class="#"><a href="search.do"><i class="fa-solid fa-magnifying-glass"></i></a></li>
				</ul>
			</div><!--헤더 대분류 메뉴영역 종료-->
			<nav class="rankingnav"><!--헤더 nav 메뉴 영역 시작-->
				<div>
					<ul class="headerKindList">
						<!-- 헤더 종류별 리스트 -->		
						<li>
							<a href="#">랭킹</a>
						</li>
		
						<li>
							<a href="#">남성</a>
						</li>		
						<li>
							<a href="#">여성</a>
						</li>		
						<li>
							<a href="#">신발</a>
						</li>		
						<li>
							<a href="#">악세사리</a>
						</li>	
					</ul>
				</div>
			</nav><!--헤더 nav 메뉴 영역 종료-->
		</header>	
	</div><!--헤더영역 div 종료-->
	<div class="rankwrap">
	<div class="goodsdisplay">
		<!--상품전시 영역 시작-->
		<div class="ranktitle">
			<p>남성 신발 인기 순위</p>		
		</div>
		<div class="goodsblock">
			<!--상품전시  4개 한줄 영역 아티클 태그 시작-->
			<article>
				<a href="#">
					<!-- 링크로 상품 상세 구매판매 페이지로 전환-->
					<picture>
						<!-- 업로드 된 이미지 파일 추가되는 태그-->						
						<img src="https://user-images.githubusercontent.com/137017779/261182897-49746f50-7bc3-4043-a112-80460cf58e86.jpg">
					</picture>
					<span>1</span>
					<div><h5>Yeezy</h5></div><!--상품명-->
					<div class="goodsmanual">
						<p>Yeezy Gap Engineered By Balenciaga Dove 3/4 Sleeve T-Shirt Black</p><!--상품설명 영문-->
						<p>이지 갭 엔지니어드 바이 발렌시아가 도브 3/4 슬리브 티셔츠 블랙</p><!--상품설명 영문-->
					</div>
					<div class="goodsprice">
						<h4>138,000</h4>
						<p>즉시구매가</p>
					</div>				
				</a>
			</article>
			<article>
				<a href="#">
					<picture>
						<img src="https://user-images.githubusercontent.com/137017779/261182852-4eb0781f-a06a-44bd-b488-d17791a9e155.jpg">
					</picture>
					<span>2</span>
					<div><h5>Essentials</h5></div>
					<div class="goodsmanual">
						<p>Essentials The Black Collection T-Shirt Black - 23SS</p>
						<p>에센셜 더 블랙 컬렉션 티셔츠 블랙 - 23SS</p>
					</div>
					<div class="goodsprice">
						<h4>82,000원</h4>
						<p>즉시구매가</p>
					</div>					
				</a>
			</article>
			<article>
				<a href="#">
					<picture>						
						<img src="https://user-images.githubusercontent.com/137017779/261182930-f7012e12-66cf-418a-a8ff-e2c5f588c8d2.jpg">
					</picture>
					<span>3</span>
					<div><h5>Nike</h5></div>
					<div class="goodsmanual">
						<p>Nike Air Force 1 '07 Fresh Black</p>
						<p>나이키 에어포스 1 '07 프레쉬 블랙</p>
					</div>
					<div class="goodsprice">
						<h4>141,000원</h4>
						<p>즉시구매가</p>
					</div>					
				</a>
			</article>
			<article>
				<a href="#">
					<picture>						
						<img src="https://user-images.githubusercontent.com/137017779/261182978-b4e1127b-8294-476b-b284-7f9ca8e1bf84.jpg">
					</picture>
					<span>4</span>
					<div><h5>Nike</h5></div>
					<div class="goodsmanual">
						<p>Nike x Peaceminusone Wide Pants Black (DR0096-010)</p>
						<p>나이키 x 피스마이너스원 와이드 팬츠 블랙 (DR0096-010)</p>
					</div>
					<div class="goodsprice">
						<h4>179,000원</h4>
						<p>즉시구매가</p>
					</div>					
				</a>
			</article>			
		</div><!-- 한줄에 4개씩 상품전시 영역 아티클 태그 종료-->
		<div class="dropdownbtn"><button>더보기</button></div>
	</div><!--상품전시 영역 종료-->
	<div class="goodsdisplay">
		<!--상품전시 영역 시작-->
		<div class="ranktitle">
			<p>여성 신발 인기 순위</p>		
		</div>
		<div class="goodsblock">
			<!--상품전시  4개 한줄 영역 아티클 태그 시작-->
			<article>
				<a href="#">
					<!-- 링크로 상품 상세 구매판매 페이지로 전환-->
					<picture>
						<!-- 업로드 된 이미지 파일 추가되는 태그-->						
						<img src="https://user-images.githubusercontent.com/137017779/261182897-49746f50-7bc3-4043-a112-80460cf58e86.jpg">
					</picture>
					<span>1</span>
					<div><h5>Yeezy</h5></div><!--상품명-->
					<div class="goodsmanual">
						<p>Yeezy Gap Engineered By Balenciaga Dove 3/4 Sleeve T-Shirt Black</p><!--상품설명 영문-->
						<p>이지 갭 엔지니어드 바이 발렌시아가 도브 3/4 슬리브 티셔츠 블랙</p><!--상품설명 영문-->
					</div>
					<div class="goodsprice">
						<h4>138,000</h4>
						<p>즉시구매가</p>
					</div>				
				</a>
			</article>
			<article>
				<a href="#">
					<picture>						
						<img src="https://user-images.githubusercontent.com/137017779/261182852-4eb0781f-a06a-44bd-b488-d17791a9e155.jpg">
					</picture>
					<span>2</span>
					<div><h5>Essentials</h5></div>
					<div class="goodsmanual">
						<p>Essentials The Black Collection T-Shirt Black - 23SS</p>
						<p>에센셜 더 블랙 컬렉션 티셔츠 블랙 - 23SS</p>
					</div>
					<div class="goodsprice">
						<h4>82,000원</h4>
						<p>즉시구매가</p>
					</div>					
				</a>
			</article>
			<article>
				<a href="#">
					<picture>						
						<img src="https://user-images.githubusercontent.com/137017779/261182930-f7012e12-66cf-418a-a8ff-e2c5f588c8d2.jpg">
					</picture>
					<span>3</span>
					<div><h5>Nike</h5></div>
					<div class="goodsmanual">
						<p>Nike Air Force 1 '07 Fresh Black</p>
						<p>나이키 에어포스 1 '07 프레쉬 블랙</p>
					</div>
					<div class="goodsprice">
						<h4>141,000원</h4>
						<p>즉시구매가</p>
					</div>					
				</a>
			</article>
			<article>
				<a href="#">
					<picture>						
						<img src="https://user-images.githubusercontent.com/137017779/261182978-b4e1127b-8294-476b-b284-7f9ca8e1bf84.jpg">
					</picture>
					<span>4</span>
					<div><h5>Nike</h5></div>
					<div class="goodsmanual">
						<p>Nike x Peaceminusone Wide Pants Black (DR0096-010)</p>
						<p>나이키 x 피스마이너스원 와이드 팬츠 블랙 (DR0096-010)</p>
					</div>
					<div class="goodsprice">
						<h4>179,000원</h4>
						<p>즉시구매가</p>
					</div>					
				</a>
			</article>
		</div><!-- 한줄에 4개씩 상품전시 영역 아티클 태그 종료-->
		<div class="dropdownbtn"><button>더보기</button></div>			
	</div><!--상품전시 영역 종료-->
	<div class="goodsdisplay">
		<!--상품전시 영역 시작-->
		<div class="ranktitle">
			<p>지금 많이 거래되는 상품</p>		
		</div>
		<div class="goodsblock">
			<!--상품전시  4개 한줄 영역 아티클 태그 시작-->
			<article>
				<a href="#">
					<!-- 링크로 상품 상세 구매판매 페이지로 전환-->
					<picture>
						<!-- 업로드 된 이미지 파일 추가되는 태그-->						
						<img src="https://user-images.githubusercontent.com/137017779/261182897-49746f50-7bc3-4043-a112-80460cf58e86.jpg">
					</picture>
					<span>1</span>
					<div><h5>Yeezy</h5></div><!--상품명-->
					<div class="goodsmanual">
						<p>Yeezy Gap Engineered By Balenciaga Dove 3/4 Sleeve T-Shirt Black</p><!--상품설명 영문-->
						<p>이지 갭 엔지니어드 바이 발렌시아가 도브 3/4 슬리브 티셔츠 블랙</p><!--상품설명 영문-->
					</div>
					<div class="goodsprice">
						<h4>138,000</h4>
						<p>즉시구매가</p>
					</div>				
				</a>
			</article>
			<article>
				<a href="#">
					<picture>
						<img src="https://user-images.githubusercontent.com/137017779/261182852-4eb0781f-a06a-44bd-b488-d17791a9e155.jpg">
					</picture>
					<span>2</span>
					<div><h5>Essentials</h5></div>
					<div class="goodsmanual">
						<p>Essentials The Black Collection T-Shirt Black - 23SS</p>
						<p>에센셜 더 블랙 컬렉션 티셔츠 블랙 - 23SS</p>
					</div>
					<div class="goodsprice">
						<h4>82,000원</h4>
						<p>즉시구매가</p>
					</div>					
				</a>
			</article>
			<article>
				<a href="#">
					<picture>						
						<img src="https://user-images.githubusercontent.com/137017779/261182930-f7012e12-66cf-418a-a8ff-e2c5f588c8d2.jpg">
					</picture>
					<span>3</span>
					<div><h5>Nike</h5></div>
					<div class="goodsmanual">
						<p>Nike Air Force 1 '07 Fresh Black</p>
						<p>나이키 에어포스 1 '07 프레쉬 블랙</p>
					</div>
					<div class="goodsprice">
						<h4>141,000원</h4>
						<p>즉시구매가</p>
					</div>					
				</a>
			</article>
			<article>
				<a href="#">
					<picture>						
						<img src="https://user-images.githubusercontent.com/137017779/261182978-b4e1127b-8294-476b-b284-7f9ca8e1bf84.jpg">
					</picture>
					<span>4</span>
					<div><h5>Nike</h5></div>
					<div class="goodsmanual">
						<p>Nike x Peaceminusone Wide Pants Black (DR0096-010)</p>
						<p>나이키 x 피스마이너스원 와이드 팬츠 블랙 (DR0096-010)</p>
					</div>
					<div class="goodsprice">
						<h4>179,000원</h4>
						<p>즉시구매가</p>
					</div>					
				</a>
			</article>
		</div><!-- 한줄에 4개씩 상품전시 영역 아티클 태그 종료-->
		<div class="dropdownbtn"><button>더보기</button></div>
	</div><!--상품전시 영역 종료-->
	</div>
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
</script>