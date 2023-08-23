<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"> 
    <script src="../js/jquery.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <script src="https://kit.fontawesome.com/15a79bdff8.js" crossorigin="anonymous"></script>
    <title>CrayoN shop, style페이지 헤더 인클루드 수정페이지</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        li {
            list-style: none; outline:none;
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
            z-index: 1000;
        }

            .headerwrap header {
                width: 1200px;
                height: 80px;
                margin: 0 auto;
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                z-index: 100;
                background: #fff;
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
                letter-spacing: -5px;
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

        /*헤더 메뉴 CSS 종료*/
    </style>
</head>
<body>
    <div id="headerApp">
        <div class="headerwrap">
            <header>
                <div class="loginmenulist">
                    <ul>
                        <li class="#"><a href="faq.do">고객센터</a></li>                        
                        <li class="#"><a href="#">장바구니</a></li>
                        <li class="#"><a href="mypageproductinter.do">관심상품</a></li>
                        <li class="#"><a href="mypage.do">마이페이지</a></li>
                        <li class="loginbtn" v-if="loginOut != '' "><a href="login.do">로그아웃</a></li>
                        <li class="loginbtn" v-else><a href="login.do">로그인</a></li> 
                    </ul>
                </div>
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
                        <li><a href="mainpageranking.do">STYLE</a></li>
                        <li><a href="mainpageshopping.do">SHOP</a></li>
                        <li class="#"><a href="search.do"><i class="fa-solid fa-magnifying-glass"></i></a></li>
                    </ul>
                </div>
            </header>
        </div>
    </div>
</body>
</html>
<script>
    var headerApp = new Vue({
        el: '#headerApp',
        data: {
            loginOut: "${sessionId}"
        },// data
        methods: {
            fnCheck: function () {
                var self = this;
                var nparmap = {}
                $.ajax({
                    url: "list.dox",
                    dataType: "json",
                    type: "POST",
                    data: nparmap,
                    success: function (data) {

                    }
                });
            },
        }, // methods
        created: function () {
            var self = this;

        }// created
    });

    const charElements = document.querySelectorAll(".char");
    const toggleAnimation = () => {
        charElements.forEach((charElement) => {
            charElement.classList.toggle("char");
            void charElement.offsetWidth;
            charElement.classList.toggle("char");
        });
    };


</script>