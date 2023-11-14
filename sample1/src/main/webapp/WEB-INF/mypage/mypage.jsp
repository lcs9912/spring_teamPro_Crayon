<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script src="https://kit.fontawesome.com/047f82d071.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {margin:0; padding:0; box-sizing : border-box;}

table {
  border: 1px solid #ccc;
  border-collapse: collapse;
  width: 100%;
}

th, td {
  border: 1px solid #ccc;
  padding: 10px;
}

th {
  background-color: #f2f2f2;
  font-weight: bold;
}

td {
  text-align: center;
}

tr:nth-child(even) {
  background-color: #f5f5f5;
}

/* Add hover effect */
tr:hover {
  background-color: #e0e0e0;
  cursor: pointer;
}
li {
	list-style:none;
	}


a {	text-decoration:none;
	color: inherit;
	}

	.mypagewrap {
		width:1200px; margin:50px auto;
		clear:both; 
		}
	.mypagenav {
		float:left; width:200px; color:#000;
		}
		
	.myinfo h2{
			margin-bottom:20px; color:tomato;
		}	
	
		
	.myinfo h3{
			margin:30px 0;
		}	
		
	.myinfo ul li{
			margin:10px 0;
		}	
		
	
	.sailcontainer {float:left; margin-bottom:150px;}
		.profilearea {
			width:1000px; height:150px; border:2px solid #f8f8f8; border-radius:10px;
			}
			.profileinner1{
					float:left; width: 120px; height:120px; margin:8px 22px;
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
				height:35px; line-height:15px;
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
				clear:both;
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
			.pointaddbtn{
				margin-top:10px; background-color:white;
				border: 1px solid #999; border-radius: 10px;
		   		 height:25px; padding:8px;
		   		 line-height:10px;
		   		 color:#999; cursor:pointer;
			}
			img{
				width: 100%;
				height: 100%;
				object-fit: cover;
				border-radius: 70%;
				overflow: hidden;
			}
			
			
			

</style>

</head>
<%@ include file="../header/shopheader.jsp"%>
<body>
	<div id="app">
	<div class="mypagewrap">
		<nav class="mypagenav">
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
				<li><a href="mypagepaylist.do">결제 정보</a></li>
				<li><a href="mypagebank.do">판매 정산 계좌</a></li>				
				<li><a href="mypageaddpoint.do">포인트 충전</a></li>
			</ul>
		</div>
		</nav>
		<div class="sailcontainer">
			<div class="profilearea">
				<div class="profileinner1">
					<img :src="imgInfo.userImg">
					<!-- 유저 프로필사진 -->
				</div>
				<div class="profileinner2">
					<strong>{{info.userId}}</strong>

					<p>{{info.userEmail}}</p> <!-- 유저이메일 -->
					<a href="mypageprofile.do" type="button">프로필 관리</a>
					<a href="myposts.do" type="button">내 스타일</a>
					
				</div>
				<div class="profileinner3">
					<p>{{info.userPoint}}P</p> <!-- 유저포인트 -->
					<p>포인트</p>
					<a href="mypageaddpoint.do"><button class="pointaddbtn">포인트충전</button></a>
				</div>
				<div class="profileinner4">
					<p>일반회원</p>
					<p>회원등급</p>
				</div>

			</div>
			<div class="mylist">
				<div class="listhead">
				<h2>구매내역</h2>
				<span><a href="mypagebuylist.do">더보기 <i class="fa-solid fa-chevron-right"></i></a></span>
				</div>
				<div class="viewdv">
				<ul class="listul">
					<li>
						<p>전체</p>
						<p>{{resultBuyCnt}}</p>
					</li>
					<li>
						<p>입찰 중</p>
						<p>{{buy}}</p>
					</li>
					<li>
						<p>진행 중</p>
						<p>0</p>
					</li>
					<li>
						<p>종료</p>
						<p>{{buyCom}}</p>
					</li>
				</ul>
				</div>
				<div>구매 완료</div>
				<table v-if="buyFlg">
                    	<tr>
                    	
                    		<th>상품이름</th>
                    		<th>사이즈</th>
                    		<th>가격</th>
                    		<th>날짜</th>
                    	</tr>
                    	<tr v-for="item in buyList">
                    		
                    		<td>{{item.productName}}</td>
                    		<td>{{item.size}}</td>
                    		<td>{{item.transactionPrice}}</td>
                    		<td>{{item.transactionDate}}</td>
                    	</tr>
                    </table>
                 <div>입찰 중</div>
				<div v-if="!buyFlg" class="listdv">
					<p>거래내역이 없습니다</p>
				</div>
			</div>
			<div class="mylist">
				<div class="listhead">
				<h2>판매내역</h2>
				<span><a href="mypageselllist.do">더보기 <i class="fa-solid fa-chevron-right"></i></a></span>
				</div>
				<div class="viewdv">
				<ul class="listul">
					<li>
						<p>전체</p>
						<p>{{resultSellCnt}}</p>
					</li>
					<li>
						<p>입찰 중</p>
						<p>{{sell}}</p>
					</li>
					<li>
						<p>진행 중</p>
						<p>0</p>
					</li>
					<li>
						<p>종료</p>
						<p>{{sellCom}}</p>
					</li>
				</ul>
				</div>
				<table v-if="sellFlg">
                    	<tr>
                    		
                    		<th>상품이름</th>
                    		<th>사이즈</th>
                    		<th>가격</th>
                    		<th>날짜</th>
                    	</tr>
                    	<tr v-for="item2 in sellList">
                    		
                    		<td>{{item2.productName}}</td>
                    		<td>{{item2.size}}</td>
                    		<td>{{item2.transactionPrice}}</td>
                    		<td>{{item2.transactionDate}}</td>
                    	</tr>
                    </table>
				<div v-if="!sellFlg" class="listdv">
					<p>거래내역이 없습니다</p>
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
			imgInfo : {},
			
			sessionId : "${sessionId}",
			
			buy : "",  // 구매입찰 횟수
			buyCom : "", // 구매완료 횟수
			sell : "", // 판매입찰 횟수
			sellCom : "", // 판매완료 횟수
			
			resultBuyCnt : "", // 총 구매내역 횟수
			resultSellCnt : "",  // 총 판매내역 횟수
			
			buyList : [],
			sellList : [],
			
			buyFlg : false,
			sellFlg : false,
			
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
						self.fnImgInfo();
					}
				});
			},
			
			fnImgInfo : function(){
				var self = this;
				var param = {uId : self.sessionId};
				$.ajax({
					url : "/user/profileImg.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						self.imgInfo = data.imgInfo;
						self.fnGetInfo();
						self.fnBuyCount();
						self.fnBuyList();
						
					}
				});
			},
			fnBuyCount : function(){
				var self = this;
				var param = {uId : self.sessionId};
				$.ajax({
					url : "/sellBuyCount.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						self.buy = data.buy; // 유저 구매입찰 갯수
						self.sell = data.sell; // 유저 판매입찰 갯수
						self.buyCom = data.buyCom; // 유저 구매완료
						self.sellCom = data.sellCom; // 유저 판매완료
						self.resultBuyCnt = data.resultBuyCnt;
						self.resultSellCnt = data.resultSellCnt;
						
						if(self.buy > 0){
							self.buyFlg = true;
						} else{
							self.buyFlg = false;
						}		
						if(self.sell > 0){
							self.sellFlg = true;
						} else{
							self.sellFlg = false;
						}		
					}
				});
			},
			// 구매 판매 리스트
			fnBuyList : function(){
				var self = this;
				var param = {uId : self.sessionId};
				$.ajax({
					url : "/buyAndSell.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						self.buyList = data.buyList.slice(0,5);
						self.sellList = data.sellList.slice(0,5);
						console.log(self.buyList);
						
						
					}
				});
			},
			

		}, // methods
		created : function() {
			var self = this;
			if(self.sessionId !=""){
				self.fnGetInfo();
				self.fnBuyCount();
				self.fnBuyList();
				
			}else{
				alert("로그인 이후 이용이 가능합니다");
				location.href="login.do";
			}
			
		}// created
	});
</script>