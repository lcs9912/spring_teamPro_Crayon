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
                width: 200px; height: 50px;
                font-size: 35px; letter-spacing: -1px;
            }

        .headermenu { /*헤더 shop메뉴 CSS 시작*/
            font-size: 20px; position: absolute;
            top: 25px; right: 0;
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

		/* 헤더 로고 및 메뉴 영역 CSS 종료*/
		
		.mypaylistwrap {
			width:1200px; margin:120px auto;
			}
		.paylistnav {
			float:left; width:190px; color:#000; margin-right:5px; 
			}
		
		.myinfo h2{
				margin-bottom:20px;
			}	
	
		
		.myinfo h3{
				margin:30px 0;
			}	
			
		.myinfo ul li{
			margin:10px 0;
			}	
		
		/*결제정보 영역 CSS 시작*/
		.paylistcontainer {float:left; width:1000px; height:380px; }
				.paylisthead {margin-top:10px;}
				.paylisthead h2{
		    		width:100px; display:inline-block; padding-bottom:15px;
		     	}
				.paylisthead p{
					font-size:12px; color:#888; display:inline-block;
				}
		     	.paylisthead .paylistbtn {float:right; border:1px solid #333;}
		     	.paylist {
		     		clear:both; height:250px; margin:0; text-align:center; line-height:250px;
					padding:100px 0; background:#f5f5f5; border-top:3px solid #333;
				}
		     	.paylist p{display:inline-block; width:1000px; height:20px; 
					font-size:12px; color:#888; text-align: center; margin-bottom:30px;
				}
				.paylistbtn{
					border:1px solid #e9e9e9; border-radius:10px; padding:8px;
					margin-left:5px; font-size:12px; color:#555; background:#fff;
				}	
 
		/*결제정보 영역 CSS 종료*/
		
</style>
</head>
<body><div id="app">
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
                        <li class="#"><a href="faq.do">고객센터</a></li>
                    </ul>
                </div>
                <div class="headermainlogo">
                    <h1><a href="#">CrayoN</a></h1>
                    <ul class="headermenu">
                        <li><a href="testrankingpage.do">HOME</a></li>
                        <li><a href="#">STYLE</a></li>
                        <li><a href="testshopping.do">SHOP</a></li>                   
                        <li class="#"><a href="search.do"><i class="fa-solid fa-magnifying-glass"></i></a></li>
                    </ul>
                </div>
            </header>
        </div>
        </div>
		<div class="mypaylistwrap">
			<nav class="paylistnav"><!--마이페이지 목록리스트 태그 시작-->
			<div class="myinfo">
				<h2><a href="mypage.do">마이 페이지</a></h2>
				<h3>쇼핑 정보</h3>
				<ul>
					<li><a href="/mypagebuylist.do">구매 내역</a></li>
					<li><a href="mypageselllist.do">판매 내역</a></li>
					<li><a href="#">보관 판매</a></li>
					<li><a href="#">관심 상품</a></li>
				</ul>
			</div>
			<div class="myinfo">
				<h3>내 정보</h3>
				<ul>
					<li><a href="mypagelogininfo.do">로그인 정보</a></li>
					<li><a href="#">프로필 관리</a></li>
					<li><a href="#">주소록</a></li>
					<li><a href="#">결제 정보</a></li>
					<li><a href="#">판매 정산 계좌</a></li>
					<li><a href="#">현금영수증 정보</a></li>
					<li><a href="#">포인트</a></li>
				</ul>
			</div>
			</nav><!--마이페이지 목록리스트 태그 종료-->
	
			<div class="paylistcontainer"><!--프로필관리 태그영역 시작-->
				<div class="paylisthead">
					<h2>결제정보</h2>
					<p>수수료(페널티, 착불배송비 등)가 정산되지 않을 경우, 별도 고지 없이 해당 금액을 결제 시도할 수 있습니다.</p>
					<button class="paylistbtn"><a href="#">+ 새 카드 추가하기</a></button>
				</div>
				<div class="paylist">
					<p>추가하신 결제정보가 없습니다.</p>				
				</div>
			</div>
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