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
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
	width:1000px;

}

th, td {
	border-bottom: 1px solid black;
	padding: 5px 10px;

}

th{
background-color:#eee;
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
		height:1000px;
		} 
 	.mypagenav {
		float:left; width:200px; color:#000;height:800px;
		} 
		
	.myinfo h2{
			margin-bottom:20px; color:tomato;
		}	
	
		
	.myinfo h3{
			margin: 30px 0px 10px;
		}	
		
	.myinfo ul li{
			margin:10px 10px;
		}	
		
	.cstbtn{
	float:right;
	margin-top:10px;
	}
	.cstbtn button{
	background-color:white;
	width:70px;
	height:30px;
	border-radius:10px;
	cursor:pointer;
	}
	.cstbtn button:hover{
	background-color:#eee;
	}
	.movebtn {
	width:1000px;
	margin-top : 10px;
  text-align: center;
  display: flex;
  justify-content: center;
}
.sailcontainer{
width:1000px;
float:left;
}
.movebtn button{
width : 40px;
height: 30px;
background-color : white;
font-weight: bold;
cursor: pointer;
border : 1px solid #eee;
}
</style>

</head>
<%@ include file="../header/shopheader.jsp"%>
<body>
	<div id="app">
	<div class="mypagewrap">
		<nav class="mypagenav">
		<div class="myinfo">
				<h2><a href="manager.do">관리자 페이지</a></h2>
			<h3>회원 관리</h3>
			<ul>
			<li ><a href="checkedit.do">회원 조회/수정</a></li>
			
			</ul>
		</div>
				<div class="myinfo">
			<h3><a href="productmanage.do">물품 관리</a></h3>
		</div>
		
				<div class="myinfo">
			<h3 style="color:tomato;"><a href="paybackmanage.do">환불 관리</a></h3>
		</div>
		
		</nav>
		<div class="sailcontainer">
		<div>
		<h3 style="margin-bottom:15px;">답변 관리</h3>
		<table>
		<tr>
		<th>선택</th>
		<th>아이디</th>
		<th>포인트</th>
		<th>상태</th>
		<th>가입일</th>
		<th>문의시간</th>
		<th>답변시간</th>
		<th>답변상태</th>
		
		</tr>
		
		<tr>
		<td><input type="checkbox"></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>대기중</td>
		</tr>
		
		
		</table>
		<div class="cstbtn">
		<button>조회</button>
		<button>수정</button>
		<button>삭제</button>		
		</div>
		
		
		

</div>


		</div>
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
				<div class="sailcontainer">
		<div>
		<h3 style="margin-bottom:15px;">답변 처리</h3>
		<table>
		<tr>
		<th>선택</th>
		<th>아이디</th>
		<th>포인트</th>
		<th>상태</th>
		<th>가입일</th>
		<th>문의시간</th>
		<th>답변시간</th>
		<th>답변상태</th>
		
		</tr>
		
		<tr>
		<td><input type="checkbox"></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>답변완료</td>
		</tr>
		
		
		</table>
		<div class="cstbtn">
		<button>조회</button>
		<button>수정</button>
		<button>삭제</button>		
		</div>
		
		
		

</div>


		</div>
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
		
		
	</div>
	</div>

</body>
	<%@ include file="../header/footer.jsp"%>
</html>
<script>
var app = new Vue({
	  el: '#app',
	  data: {
	    list: [],
	    currentPage: 1,
	    itemsPerPage: 10,
	  },
	  methods: {
	    fnGetList: function () {
	      var self = this;
	      var nparmap = {};
	      $.ajax({
	        url: "",/* 페이징경로 입력필!!*/
	        dataType: "json",
	        type: "POST",
	        data: nparmap,
	        success: function (data) {
	          self.list = data.list;
	          console.log(self.list);
	        },
	      });
	    },
	    changePage: function (offset) {
	      this.currentPage += offset;
	      if (this.currentPage < 1) {
	        this.currentPage = 1;
	      } else if (this.currentPage > this.totalPages) {
	        this.currentPage = this.totalPages;
	      }
	      this.fnGetList();
	    },
	    goToPage: function (pageNumber) {
	      this.currentPage = pageNumber;
	      this.fnGetList();
	    },
	  }, // methods end
	  computed: {
	    totalPages: function () {
	      return Math.ceil(this.list.length / this.itemsPerPage);
	    },
	    paginatedList: function () {
	      const startIndex = (this.currentPage - 1) * this.itemsPerPage;
	      const endIndex = startIndex + this.itemsPerPage;
	      return this.list.slice(startIndex, endIndex);
	    },
	  },
	  created: function () {
	    var self = this;
	    self.fnGetList();
	  },
	});
</script>