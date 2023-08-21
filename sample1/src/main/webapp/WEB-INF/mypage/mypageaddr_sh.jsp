<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 주소록 페이지</title>

<style>
* {margin:0; padding:0;}

table {
	border: 0px solid black;
	border-collapse: collapse;
	text-align: center;
}

th, td {
	border: 1px solid black;
	padding: 5px 10px;
}

li {
	list-style:none;
	}


a {	text-decoration:none;
	color: inherit;
	}

.myaddrwrap {
	width:1200px; margin:0 auto;
	}
.addrnav {
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
	
/*주소록 영역 CSS 시작*/
.addrcontainer {float:left; width:1000px; height:380px; }
		.addrhead {margin-top:10px;}
		.addrhead h2{
    		width:100px; display:inline-block;
     	}
     	.addrhead .addrbtn {float:right; border:1px solid #333;}
     	.addrlist {
     		clear:both; height:380px; margin:0; text-align:center; line-height:20px;
			padding:100px 0;
		}
     	.addrlist p{display:inline-block; width:1000px; height:20px; 
			font-size:12px; color:#888; text-align: center; margin-bottom:30px;
		}
		.addrbtn{
			border:1px solid #e9e9e9; border-radius:10px; padding:8px;
			margin-left:5px; font-size:12px; color:#555; background:#fff;
		}	
		
		
		
 
/*주소록 영역 CSS 종료*/

</style>

</head>
<%@ include file="../header/header1.jsp"%>
<%@ include file="../header/header2.jsp"%>
<body>
	<div id="app">
	<div class="myaddrwrap">
		<nav class="addrnav"><!--마이페이지 목록리스트 태그 시작-->
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
				<li><a href="mypageaddpoint.do">포인트 충전</a></li>
			</ul>
		</div>
		</nav><!--마이페이지 목록리스트 태그 종료-->

		<div class="addrcontainer"><!--프로필관리 태그영역 시작-->
			<div class="addrhead">
				<h2>주소록</h2>
				<button class="addrbtn"><a href="#">+ 새 배송지 추가</a></button>
			</div>
			<div class="addrlist">
				<p>배송지 정보가 없습니다.<br>
				새 배송지를 등록해주세요.</p>
				<button class="addrbtn"><a href="#">+ 새 배송지 추가</a></button>
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
			info : {},
			sessionId : "${sessionId}"
		},// data
		methods : {
			fnGetInfo : function() {
				var self = this;
				var param = {uId : self.sessionId};
				$.ajax({
					url : "/user/selectId.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						self.info = data.info;
						console.log(self.info);
					}
				});
			}

		}, // methods
		created : function() {
			var self = this;
			if(self.sessionId !=""){
				self.fnGetInfo();
			}else{
				alert("로그인 이후 이용이 가능합니다");
				location.href="login.do";
			}
		}// created
	});
</script>