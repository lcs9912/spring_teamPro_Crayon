<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {margin:0; padding:0; box-sizing : border-box;}

table {
	border: 1px solid black;
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

.mypagewrap {
	width:1200px; margin:0 auto;
	clear:both; margin-top:150px; margin-bottom:50px;
	}
.mypagenav {
	float:left; width:200px; color:#000;
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
	

.sailcontainer {float:left;}
	.profilearea {
		width:1000px; height:150px; border:2px solid #f8f8f8; border-radius:10px;
		}
		.profileinner1{
			float:left; width: 100px; height:100px; margin:25px 40px;
		}
		.profileinner2{
			float:left; width: 200px; margin-top:25px; height:100px; line-height:25px; color:#888; font-size:13px;
		}
			.profileinner2 strong{
				font-size:15px; color:#000; font-weight:bold; margin-bottom:5px;
			}
			.profileinner2 p {margin:5px 0;}
			.profileinner2 a{
				display:inline-block; border:1px solid #999; border-radius:10px; padding:8px;
				margin-left:5px; height:15px; line-height:15px;
			}
		.profileinner3{
			float:right; height:130px; width:200px; border-left:2px solid #f5f5f5;
			margin-top:10px; text-align: center;
		}
			.profileinner3 p:nth-child(1){line-height:2.5; font-size:18px; font-weight:bold; margin:22 0 0 0;}
			.profileinner3 p:nth-child(2){line-height:1; margin-top:0;}
		.profileinner4{
			float:right; height:150px; width:200px;
			text-align: center;
		}
			.profileinner4 p:nth-child(1){line-height:2.5; font-size:18px; font-weight:bold; margin:30 0 0 0;}
			.profileinner4 p:nth-child(2){line-height:1; margin-top:2px;}
		

	.mylist{
		width:1000px; 
		}
		.listhead::after {
		    content: "";
		    display: table;
		    clear: both;
		}
	
		.listhead h2{
			display:inline-block; float:left; margin:25px 0 10px 0;
		}	
		.listhead span {
			display:inline-block; float:right; margin-top:35px;
		}
	
		.viewdv{
			height:100px; background-color:rgb(248,248,248);
			border-radius:20px;
		}
			
		.listul li{
			float:left; width:250px; text-align:center; margin-top:0;
		}
			.listul li p:nth-child(1){line-height:2.5; font-size:15px; font-weight:bold; margin:15 0 0 0;}
			.listul li p:nth-child(2){line-height:1; margin-top:2px; font-size:20px;}
		.listul li:after {
		    clear: both;
		    content: '';
		    display: block;
    	}
    	.listdv{
    		height:325px; margin:0; text-align:center; line-height:200px;
     	}
     	
     	.joygooddv {
     		height:325px; margin:0; text-align:center; line-height:100px;
     		background-color:rgb(248,248,248); border-radius:20px;
     	}
     	
		.joygooddv button{
			border:1px solid #999; border-radius:10px; padding:8px;
			margin-left:5px; 
		}
    

</style>

</head>
<%@ include file="../header/header1.jsp"%>
<%@ include file="../header/header2.jsp"%>
<body>
	<div id="app">
	<div class="mypagewrap">
		<nav class="mypagenav">
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
		</nav>
		<div class="sailcontainer">
			<div class="profilearea">
				<div class="profileinner1">
					<img src="https://kream.co.kr/_nuxt/img/blank_profile.4347742.png">
					<!-- 유저 프로필사진 -->
				</div>
				<div class="profileinner2">
					<strong>사용자아이디</strong>
					<p>{{info.userEmail}}</p> <!-- 유저이메일 -->
					<a href="#" type="button">프로필 관리</a>
					<a href="#" type="button">내 스타일</a>
				</div>
				<div class="profileinner3">
					<p>{{info.userPoint}}P</p> <!-- 유저포인트 -->
					<p>포인트</p>
				</div>
				<div class="profileinner4">
					<p>일반회원</p>
					<p>회원등급</p>
				</div>
				
			</div>
			<div class="mylist">
				<div class="listhead">
				<h2>구매내역</h2>
				<span><a href="#">더보기 ></a></span>
				</div>
				<div class="viewdv">
				<ul class="listul">
					<li>
						<p>전체</p>
						<p>0</p>
					</li>
					<li>
						<p>입찰 중</p>
						<p>0</p>
					</li>
					<li>
						<p>진행 중</p>
						<p>0</p>
					</li>
					<li>
						<p>종료</p>
						<p>0</p>
					</li>
				</ul>
				</div>
				<div class="listdv">
					<p>거래내역이 없습니다</p>
				</div>
			</div>
			<div class="mylist">
				<div class="listhead">
				<h2>판매내역</h2>
				<span><a href="#">더보기 ></a></span>
				</div>
				<div class="viewdv">
				<ul class="listul">
					<li>
						<p>전체</p>
						<p>0</p>
					</li>
					<li>
						<p>입찰 중</p>
						<p>0</p>
					</li>
					<li>
						<p>진행 중</p>
						<p>0</p>
					</li>
					<li>
						<p>종료</p>
						<p>0</p>
					</li>
				</ul>
				</div>
				<div class="listdv">
					<p>거래내역이 없습니다</p>
				</div>
			</div>
			<div class="mylist">
				<div class="listhead">
				<h2>관심상품</h2>
				<span><a href="#">더보기 ></a></span>
				</div>
				<div class="joygooddv">
					<p>추가하신 관심상품이 없습니다.</p>
					<button><a href="#">shop 바로가기</a></button>
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
			self.fnGetInfo();
		}// created
	});
</script>