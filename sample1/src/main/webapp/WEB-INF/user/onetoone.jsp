<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script src="https://kit.fontawesome.com/047f82d071.js" crossorigin="anonymous"></script>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {margin:0; padding:0;}

table {
margin-top : 10px;
	width : 800px;
	border: 1px solid #a2a2a2;
	border-collapse: collapse;
	text-align: center;
}

th, td {
	border: 1px solid #eee;
	padding: 10px 5px;

}



.customerwrap {
	width:1200px; margin:0 auto;
	}
	
customernav {
	float:left; width:200px; color:#000;
	}


.customernav{
padding-bottom: 20px;
margin-left: 50px;
}
.customernav ul li a{
padding-top : 20px;
text-decoration:none;
color : #A2A2A2;
}

.customernav ul li a:hover{
padding-top : 20px;
text-decoration:none;
color : black;
font-weight: bold;
}
	
.customernav ul li{
list-style : none;
padding-top : 20px;
}


.contentsarea{
width : 800px;
margin-left : 200px;
padding-bottom : 10px;
border-bottom: 3px solid #222;
}

.dropdownlist li{
width: 1200px;
list-style : none;
padding-top : 10px;
padding-bottom : 10px;
border-bottom : 1px solid #eee;
margin-left : 200px;
margin-right : 200px;
}
.onetooneEditbtn {
background-color : white;
border : 1px solid #A2A2A2;
padding : 5px;
font-weight: bold;
margin-top : 5px;
cursor: pointer;
}
.qnadeletbtn {
background-color : white;
border : 1px solid #A2A2A2;
padding : 5px;
font-weight: bold;
margin-top : 5px;
cursor: pointer;
margin-right : 1px;
}
.qnaallselect{
background-color : white;
border : 1px solid #A2A2A2;
padding : 5px;
font-weight: bold;
margin-top : 5px;
cursor: pointer;
margin-right : 1px;
}

.qnaallselectnot{
background-color : white;
border : 1px solid #A2A2A2;
padding : 5px;
font-weight: bold;
margin-top : 5px;
cursor: pointer;
margin-right : 1px;
}


.qnaeditbtn{
background-color : white;
border : 1px solid #A2A2A2;
padding : 5px;
font-weight: bold;
margin-top : 5px;
cursor: pointer;
margin-right : 1px;
}

td a:link {
  color : black;
  text-decoration: none;
}
td a:visited {
  color : black;
  text-decoration: none;
}
td a:hover {
  color : black;
  text-decoration: underline;
}
td a:active {
  color : black;
  text-decoration: none;
}
.movebtn {
  text-align: center;
  display: flex;
  justify-content: center;
}
.movebtn button{
width : 40px;
height: 30px;
background-color : white;
font-weight: bold;
cursor: pointer;
border : 1px solid #eee;
}
.onetoonehead{
background-color : #eee;
}


.selectpagebtn:hover {
  background-color: #808080;;
  border: 1px solid black;
}

.selectpagebtn:hover .selectpagenum {
  color: #eee;
}


</style>

</head>
<body>
	<div id="app">
	<div class="customerwrap">
		<customernav>
		<div class="customernav">
			<h2>고객센터</h2>
			<ul>
				<li><a href="faq.do" style="color: black;">자주 묻는 질문</a></li>
				<li><a href="onetoone.do" style="color: black; font-weight: bold;">1:1 문의 게시판</a></li>
			</ul>
		</div>
		</customernav>
		
				<div class="contentsarea"><h3>1:1 문의 게시판</h3></div>

<table>
<tbody>
				<button class="qnaallselect">전체선택</button>
				<button class="qnaallselectnot">선택해제</button>
				<tbody>
				
				<tr class="onetoonehead">
				<th>선택</th>
				<th><div align="center">번 호</div></th>
				<th><div align="center">제 목</div></th>
				<th><div align="center">작성자</div></th>
				<th><div align="center">작성일</div></th>
				<th><div align="center">조회수</div></th>
				<th><div align="center">처리상태</div></th>
				</tr>
				
				
				<tr v-for="item in paginatedList" :key="item.qnaNumber">
				  <td><input type="checkbox" :value="item.qnaNumber"></td>
				  <td>{{ item.qnaNumber }}</td>
				  <td align="left">
				    <a href="javascript:;">
				      <span style="font-weight: bold;">[{{ item.qnaTypeName }}]</span> {{ item.qnaTitle }}
				    </a>
				  </td>
				  <td>{{ item.userId }}</td>
				  <td>{{ item.qnaDate }}</td>
				  <td>{{ item.qnaCnt }}</td>
				  <td>처리좀</td>
</tr>
 
				</tbody>
				</table>
				

				<div align="right" style="width:1000px;">
				<button class="qnaeditbtn">수정</button>
				<button class="qnadeletbtn">삭제</button>
				<button class="onetooneEditbtn">글쓰기</button>
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
</html>
<script>
var app = new Vue({
  el: '#app',
  data: {
    list: [],
    qnaNumber: "",
    uId: "${sessionId}",
    Name: "${sessionName}",
    status: "${sessionStatus}",
    selectComment: [],
    currentPage: 1,
    itemsPerPage: 15,
  },
  methods: {
    fnGetList: function () {
      var self = this;
      var nparmap = {};
      $.ajax({
        url: "/qna/list.dox",
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
  },
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