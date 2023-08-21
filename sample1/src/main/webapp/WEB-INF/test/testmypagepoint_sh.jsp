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

		/* 헤더 로고 및 메뉴 영역 CSS 종료*/
		
		/*pointwrap 영역 CSS 시작*/
		.pointwrap {width:1200px; margin:120px auto;}/*nav 메뉴영역 CSS 시작*/
	
		.pointnav {float:left; width:190px; color:#000; margin-right:5px;}	
		
		.myinfo h2{margin-bottom:20px;}			
		
		.myinfo h3{margin:30px 0;}			
		
		.myinfo ul li{margin:10px 0;}	/*nav 메뉴영역 CSS 종료*/
		
		.pointcontainer{float:left;}/*포인트 영역 CSS 시작*/
			.pointhead {/*포인트헤더영역*/
				width:1000px; height:40px; padding:10px 0;
			}
				.pointhead h2{display:inline-block; width:75px;}
				.pointhead button{
					border-radius: 50%; width:23px; height:23px; color:#777;
					background:#fff; border:1px solid #e9e9e9;}/*헤더영역 종료*/
			.pointbox {/*포인트 숫자현황 박스영역 CSS 시작*/
				width:1000px; height:110px; border:2px solid #f8f8f8; border-radius:10px; 
				background:#f7f5f5;
			}
				.pointtotal {
					width:300px; height:110px; float:left;
				}
					.pointtotal p{
						display:inline-block; width:300px; font-size:12px; color:#777; margin:20px 0 0 30px;
					}
					.pointtotal strong{
						font-size:30px; margin-left:30px;
					}
				.pointreset {
					width:500px; height:110px; float:left;
				}
					.pointreset p{
						display:inline-block; width:500px; font-size:12px; color:#777; margin:20px 0 0 30px;
					}
					.pointreset strong{
						font-size:30px; margin-left:30px;
					}
				.pointbox button{
					background-color:#333; color:#fff; border:0 solid; padding:12px;  font-weight: bold;
					margin-top:30px; width:150px; border-radius:5px;
				}
				.pointcontainer>p{clear:both; font-size:11px; color:#888; margin:15px 0 30px 0}/*포인트 숫자현황박스 영역 CSS 종료*/
			
			.pointlist {/*포인트 상세내역 리스트 영역 CSS 시작*/
				height:480px; border-top:1px solid #000; 
			}
				.pointlistindex{height:50px; line-height:50px; font-size:13px; }
					.pointlistindex p:nth-child(1){ display:inline; float:left;}
					.pointlistindex p:nth-child(2){ display:inline; float:right;}
			.pointlistpage {
				clear:both; border-top:1px solid #e9e9e9;
			}
				.pointlistpage>p{
					text-align: center; margin-top:200px; font-size: 15px;
				}
				
		/*pointwrap 영역 CSS 시작*/
	/*전체 CSS 종료*/
</style>
</head>
<body>
	<div id="app">
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
		<div class="pointwrap">
			<nav class="pointnav"><!--마이페이지 목록리스트 태그 시작-->
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

			<div class="pointcontainer"><!--프로필관리 태그영역 시작-->
				<div class="pointhead">
					<h2>포인트</h2>
					<button><a href="#">?</a></button>
				</div>
				<div class="pointbox">
					<div class="pointtotal">
						<p>사용가능한 포인트</p> <!-- 유저포인트 -->
						<strong>0P</strong>
					</div>
					<div class="pointreset">
						<p>이번달 소멸예정 포인트</p>
						<strong>0P</strong>
					</div>
					<button><a href="#">+포인트 적립하기</a></button>
				</div>
				<p>포인트 유효기간은 적립일로부터 최대 1년까지이며, 유형에 따라 달라질 수 있습니다.</p>
				<div class="pointlist">				
					<div class="pointlistindex">
						<p>상세 내역</p>
						<p>적립/사용</p>
					</div>
					<div class="pointlistpage">
						<p>적립 또는 사용한 내역이 없습니다.</p>
					</div>
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