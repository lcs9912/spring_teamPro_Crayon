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
	
		/* 결제 정보영역 CSS 시작*/
		
		.mypaylistwrap {
			width:1200px; margin:50px auto;
			}
		.paylistnav {
			float:left; width:190px; color:#000; margin-right:5px; margin-bottom:100px;
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
		.paylistcontainer {float:left; width:1000px; height:380px; margin-bottom:100px;}
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
<%@ include file="../header/shopheader.jsp"%>
<body>
	<div id="app">
		<div class="mypaylistwrap">
			<nav class="paylistnav"><!--마이페이지 목록리스트 태그 시작-->
			<div class="myinfo">
				<h2><a href="mypage.do">마이 페이지</a></h2>
				<h3>쇼핑 정보</h3>
				<ul>
					<li><a href="mypagebuylist.do">구매 내역</a></li>
					<li><a href="mypageselllist.do">판매 내역</a></li>					
					<li><a href="mypageproductinter.do">관심 상품</a></li>
				</ul>
			</div>
			<div class="myinfo">
				<h3>내 정보</h3>
				<ul>
					<li><a href="mypagelogininfo.do">로그인 정보</a></li>
					<li><a href="mypageprofile.do">프로필 관리</a></li>
					<li><a href="mypageaddr.do">주소록</a></li>
					<li style="font-weight:bold; color:#FF6868"><a href="mypagepaylist.do">결제 정보</a></li>
					<li><a href="mypagebank.do">판매 정산 계좌</a></li>					
					<li><a href="mypageaddpoint.do">포인트 충전</a></li>
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
<%@ include file="../header/footer.jsp"%>
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