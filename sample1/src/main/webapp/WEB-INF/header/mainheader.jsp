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
        * {	font-family: 'GmarketSansMedium';
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
		@font-face {
		    font-family: 'GmarketSansMedium';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;
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
		input {outline:none;}
        /*헤더영역 전체 CSS 시작*/
        .headerwrap {
            width: 100%;
            height: 100px;
            border-bottom: 1px solid #ccc;
            padding-bottom: 130px;
            position: fixed;
            left: 0;
            right: 0;
            top: 0;
            z-index: 2;
            background: #fff;
        }

            .headerwrap header { /*헤더영역 css 시작*/
                width: 1200px;
                height: 130px;
                margin: 0 auto;
            }

        .loginmenulist {
            position: relative;
            width: 1200px;
            height: 20px;
        }
            /*로그인 메뉴 CSS 시작*/
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
            height: 70px;
        }

            .headermainlogo > h1 {
                display: inline-block;
                width: 200px;
                height: 50px;
                font-size: 35px;
                letter-spacing: -7px;
            }
            .headermainlogo > h1:hover{
            	animation:jelly 1s ease;
            }

                .char {
                    animation-name: rainbow;
                    animation-duration: 1s;
                    animation-iteration-count: 1;
                    animation-fill-mode: forwards;
                }

                .c {animation-delay: 0s;}
                .r {animation-delay: 0.2s;}
                .a {animation-delay: 0.4s;}
                .y {animation-delay: 0.6s;}
                .o {animation-delay: 0.8s;}
                .n {animation-delay: 1.0s;}

                @keyframes rainbow {
                    0% {color: rgb(51 51 51); font-size: 35px;}
                    15% {color: red; font-size: 34px;}
                    30% {color: orange; font-size: 33px;}
                    45% {color: yellow; font-size: 32px;}
                    60% {color: green; font-size: 32px;}
                    75% {color: navy; font-size: 33px;}
                    90% {color: purple; font-size: 34px;}
                    100% {color: rgb(51 51 51); font-size: 35px;}
                }
				 @keyframes jelly {
		            from {transform: scale(1, 1);}
		            30% {transform: scale(0.75, 1.25);}
		            40% {transform: scale(1.25, 0.75);}
		            50% {transform: scale(0.85, 1.15);}
		            65% {transform: scale(1.05, 0.95);}
		            75% {transform: scale(0.75, 1.25);}
		        to {transform: scale(1, 1);}
      			}


        .headermenu { /*헤더 대분류 메뉴 CSS 시작*/
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

        /*헤더 대분류 메뉴 CSS 종료*/

        .rankingnav { /*헤더 nav메뉴 영역 CSS 시작*/
            font-weight: bold;
            height: 30px;
        }

            .rankingnav ul {
                font-weight: normal;
            }

                .rankingnav ul li {
                    display: inline-block;
                    line-height: 36px;
                    margin-right: 15px;
                }

                    .rankingnav ul li a {
                        text-align: right;
                        color: black;
                        text-decoration: none;
                        font-size: 16px;
                    }

        .headerKindList li a::after {
            display: none;
            content: '';
            width: 100%;
            height: 2px;
            background-color: #000;
            margin-top: 3px;
        }

        .headerKindList li a.active {
            font-weight: bold;
        }

            .headerKindList li a.active::after {
                display: block;
            }

        /*헤더 nav메뉴 영역 CSS 종료*/
        /*헤더영역 전체 CSS 종료*/
    </style>
</head>
<body>
	<div id="hApp">
        <div class="headerwrap">
            <!--헤더영역 div 시작-->
            <header>
                <div class="loginmenulist">
                    <!--헤더 로그인 메뉴영역 시작-->
                    <ul>
                        <li class="#"><a href="faq.do">고객센터</a></li>                       
                        <li class="#"><a href="mypageproductinter.do">관심상품</a></li>
                        <li class="#"><a href="mypage.do">마이페이지</a></li>
                        <li class="loginbtn" v-if="loginOut != '' "><a href="login.do">로그아웃</a></li>
                        <li class="loginbtn" v-else><a href="login.do">로그인</a></li>                        
                    </ul>
                </div><!--헤더 로그인 메뉴영역 종료-->
                <div class="headermainlogo">
                    <h1><a href="mainslider.do">
                        <span class="char c">C</span>
                        <span class="char r">r</span>
                        <span class="char a">a</span>
                        <span class="char y">y</span>
                        <span class="char o">o</span>
                        <span class="char n">N</span>
                    </a></h1>            
                    <ul class="headermenu">
                        <li><a href="mainslider.do">HOME</a></li>
                        <li><a href="style.do">STYLE</a></li>
                        <li><a href="mainpageshopping.do">SHOP</a></li>
                        <li><a href="productRegister.do">UP<i class="fa-solid fa-plus"></i></a></li>
                        <li class="#"><a href="search.do"><i class="fa-solid fa-magnifying-glass"></i></a></li>
                    </ul>
                </div><!--헤더 대분류 메뉴영역 종료-->
                <nav class="rankingnav">
                    <!--헤더 nav 메뉴 영역 시작-->
                    <div>
                        <ul class="headerKindList">
                            <!-- 헤더 종류별 리스트 -->
                             <li>
                                <a href="mainslider.do" :class="{active : activeValue == '0'}">추천</a>
                            </li>
                            <li>
                                <a href="mainpageranking.do" :class="{active : activeValue == '1'}">랭킹</a>
                            </li>
                            <li>
                                <a href="mainpageman.do" :class="{active : activeValue == '2'}">남성</a>
                            </li>
                            <li>
                                <a href="mainpagewoman.do" :class="{active : activeValue == '3'}">여성</a>
                            </li>
                            <li>
                                <a href="#" @click="fnActive('4')">신발</a>
                            </li>
                            <li>
                                <a href="#" @click="fnActive('5')">악세사리</a>
                            </li>
                             <li>
                                <a href="auction.do" @click="fnActive('6')">경매</a>
                            </li>
                        </ul>
                    </div>
                </nav><!--헤더 nav 메뉴 영역 종료-->
            </header>
        </div><!--헤더영역 div 종료-->
    </div>
</body>
</html>
<script>
var hApp = new Vue({
	el : '#hApp',
	data : {
		loginOut : "${sessionId}",
		activeValue : "0"
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
		fnActive : function(v){
			var self = this;
			self.activeValue = v;
		}
	}, // methods
	created : function() {
		var self = this;
		
	}// created
});

/* 	$(document).ready(function () {//rankingnav li 클릭효과 함수
	    
		$(".headerKindList li a").first().addClass("active");
	    $(".headerKindList li a").on("click", function () {            
	        $(".headerKindList li a").removeClass("active");
	        $(this).addClass("active");
	    });
	}); */
	
	const charElements = document.querySelectorAll(".char");
    const toggleAnimation = () => {
        charElements.forEach((charElement) => {
            charElement.classList.toggle("char");
            void charElement.offsetWidth;
            charElement.classList.toggle("char");
        });
    };
    setInterval(toggleAnimation, 8000);

</script>