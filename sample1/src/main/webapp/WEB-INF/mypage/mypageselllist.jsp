<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 판매내역 페이지</title>

<style>
	* {margin:0; padding:0;}
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
	
	.wrap {
		width:1200px; margin:50px auto;
		}
	.myinfonav {
		float:left; width:196px; color:#000; margin-bottom:100px;
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
		
	
	
	
	.sailcontainer {float:left; margin-bottom:100px;}
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
			

		.mybuylist{
			width:1000px; 
			}
			
			
			.viewdv{
				height:100px; 
			}
				
			.listul li{
				float:left; width:333px; text-align:center; margin-top:0;
			}
				.listul li p:nth-child(1){line-height:2.5; font-size:18px; font-weight:bold; margin:15 0 0 0;}
				.listul li p:nth-child(2){line-height:1; margin-top:2px; font-size:14px; color:#ccc;}
	
	            
			.listul li:after {
			    clear: both;
			    content: '';
			    display: block;
	    	}
	        
	        .searchbuydate {
	            height:60px; background-color:#eaeaea; text-align: center; border-top:1px solid #c5c5c5f7; border-bottom:1px solid #e9e9e9; 
	            line-height: 60px; margin-right:5px;
	        }
	        .buydateinner1 {
	            display:inline-block; height:60px;
	        }
	            .buymonthbtn {
	                border: 1px solid #c5c5c5f7; background-color: #fff; padding:8px; color:#555; font-size: 12px; margin-top:2px;
	            }
	        .buydateinner2 {
	            display:inline-block; 
	        }
	            .buymonthinput {
	                border: 1px solid #c5c5c5f7; background-color: #fff; padding:8px; color:#555; font-size: 12px;
	                margin-top:0;
	            }
	            .buysearchbtn {
	                background-color:#000; color:#fff; width:65px; height:31px; 
			    }
	            .buysearchbtn a{
	                display:block;
	            }
	        .buynoticeul {
	            height: 50px; margin-top: 20px;
	        }
	            .buynoticeul li {
	                list-style:disc; margin-left:20px; font-size: 12px; color:#777; font-weight: bold; 
	            }
	
	        .buylistsearch {
	            height:50px; border-bottom:1px solid #e9e9e9; margin-top: 10px;
	        }
	        
	            .buylistselect{
	                border:1px solid #c5c5c5f7; background-color: #fff; color:#555; font-size:14px; width:120px; height:35px;
	                margin-left: 20px; border-radius: 10px;
	            }
	            .buylistinput{
	                border:0px solid #c5c5c5f7; background-color: #fff; color:#555; font-size:14px; float:right;
	                width:120px; height:35px; border-radius: 10px; margin-left:15px;
	            }
	        
	     	.buygooddv {
	     		height:300px; margin:0; text-align:center; line-height:100px;     		
	     	}
	     	
	        .buygooddv p{
	            color:#ccc; font-size:13px;
	        }
	
	            .buygooddv button{
	                border:1px solid #ccc; border-radius:10px; width:120px; height:40px; line-height: 40px; background-color: #fff;
	                margin-left:5px; color:#555; 
	            }
	        

</style>

</head>
<%@ include file="../header/shopheader.jsp"%>
<body>
	<div id="app">
	<div class="wrap">
		<nav class="myinfonav">
		<div class="myinfo">
			<h2><a href="mypage.do">마이 페이지</a></h2>
			<h3>쇼핑 정보</h3>
			<ul>
				<li><a href="mypagebuylist.do">구매 내역</a></li>
				<li style="font-weight:bold; color:#FF6868"><a href="mypageselllist.do">판매 내역</a></li>				
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
			<div class="mylist">
				<div class="listhead">
				<h2>판매내역</h2>
				</div>
				<div class="viewdv">
				<ul class="listul">
					<li>
						<p>{{sell}}</p>
						<p>판매 입찰</p>
					</li>
					<li>
						<p>0</p>
						<p>진행 중</p>
					</li>
					<li>
						<p>{{sellCom}}</p>
						<p>종료</p>
					</li>
				</ul>
				</div>
                <div class="searchbuydate">
                    <div class="buydateinner1">
                        <button class="buymonthbtn"><a href="#">최근 2개월</a></button>
                        <button class="buymonthbtn"><a href="#">4개월</a></button>
                        <button class="buymonthbtn"><a href="#">6개월</a></button>
                    </div>
                    <div class="buydateinner2">
                        <input type="date" class="buymonthinput">~<input type="date" class="buymonthinput">
                        <button class="buysearchbtn"><a href="#">조회</a></button>
                    </div>                 
                </div>
                <ul class="buynoticeul">
                    <li>한 번에 조회 가능한 기간은 최대 6개월입니다.</li>
                    <li>기간별 조회 결과는 입찰일 기준으로 노출됩니다.</li>
                </ul>
                <div class="mybuylist">
                    <div class="buylistsearch">
                    <select class="buylistselect">
                        <option>전체</option>
                        <option>입찰중</option>
                        <option>기한만료</option>
                    </select>
                    
                    </div>   
                    <table v-if="sellFlg">
                    	<tr>
                    		<th></th>
                    		<th>상품이름</th>
                    		<th>사이즈</th>
                    		<th>가격</th>
                    		<th>날짜</th>
                    	</tr>
                    	<tr v-for="item in sellList">
                    		<td></td>
                    		<td>{{item.productName}}</td>
                    		<td>{{item.size}}</td>
                    		<td>{{item.transactionPrice}}</td>
                    		<td>{{item.transactionDate}}</td>
                    	</tr>
                    </table>             
                    <div class="movebtn">
						<button @click="changePage(-1)">
							<i class="fa-solid fa-chevron-left"></i>
						</button>
							  
						<button class="selectpagebtn"
							v-for="pageNumber in totalPages" :key="pageNumber" @click="goToPage(pageNumber)"
							:class="{ 'selected': pageNumber === currentPage, 'bold-page-number': pageNumber === currentPage }"
							:style="{ backgroundColor: pageNumber === currentPage ? '#eee' : 'inherit' }">
							{{ pageNumber }}
						</button>
							
						<button @click="changePage(1)">
							<i class="fa-solid fa-chevron-right"></i>
						</button>
					</div>
                    <div class="buygooddv" v-if="!sellFlg">
                        <p>판매입찰 목록이 없습니다.</p>
                        <button><a href="mainpageshopping.do">SHOP 바로가기</a></button>
                    </div>
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
			sessionId : "${sessionId}",
			sell : {},
			sellCom : {},
			sellFlg : false,
			sellList : [],
			
			// 페이징
			currentPage: 1,
		    itemsPerPage: 5,
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
			},
			// 판매 count
			fnBuyCount : function(){
				var self = this;
				var param = {uId : self.sessionId};
				$.ajax({
					url : "/sellBuyCount.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						
						self.sell = data.sell; // 유저 판매입찰 갯수
						
						self.sellCom = data.sellCom; // 유저 판매완료
						if(self.sell > 0){
							self.sellFlg = true;
						} else{
							self.sellFlg = false;
						}
						
					}
				});
			},
			// 유저 판매리스트
			fnSellList : function(){
				var self = this;
				var param = {uId : self.sessionId};
				$.ajax({
					url : "/buyAndSell.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						self.sellList = data.sellList;
						console.log(self.sellList);
						
					}
				});
			},
			changePage: function (offset) {
			      this.currentPage += offset;
			      if (this.currentPage < 1) {
			        this.currentPage = 1;
			      } else if (this.currentPage > this.totalPages) {
			        this.currentPage = this.totalPages;
			      }
			      this.fnSellList();
			    },
			    goToPage: function (pageNumber) {
			      this.currentPage = pageNumber;
			      this.fnSellList();
			    },
			  },
			  computed: {
			    totalPages: function () {
			      return Math.ceil(this.sellList.length / this.itemsPerPage);
			    },
			    paginatedList: function () {
			      const startIndex = (this.currentPage - 1) * this.itemsPerPage;
			      const endIndex = startIndex + this.itemsPerPage;
			      return this.sellList.slice(startIndex, endIndex);
			    },
			

		}, // methods
		created : function() {
			var self = this;
			if(self.sessionId !=""){
				self.fnGetInfo();
				self.fnBuyCount();
				self.fnSellList();
			}else{
				alert("로그인 이후 이용이 가능합니다");
				location.href="login.do";
			}
		}// created
	});
</script>