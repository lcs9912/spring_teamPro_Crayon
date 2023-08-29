<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script src="https://kit.fontawesome.com/047f82d071.js" crossorigin="anonymous"></script>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="UTF-8">
<title>QnA</title>
<style>
* {margin:0; padding:0;}

table {
	margin-top :30px;
	width : 1000px;
	border: 1px solid #black;
	border-collapse: collapse;
	text-align: center;
}

th, td {
	border: 1px solid #eee;
	padding: 20px 10px;
}
td{
color : #a2a2a2;
}

.customerwrap {
	width:100%; height:600px;
	}
	
customernav {
	float:left; width:200px; color:#000;
	}


.customernav{
width:1200px; margin:50px auto;
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
width : 1000px;
float:left; 
padding-bottom : 10px;

}
.contentsarea h3{
	border-bottom: 3px solid #222; padding-bottom:15px;
}
.dropdownlist{
width : 1000px;
margin-left : 200px;
padding-bottom : 10px;
border-bottom: 3px solid #222;
}

a{
text-decoration : none;
}
.qnacontents{
width:1000px;
}
.qnacontents tr td{
color : black;
border: 1px solid white;
border-bottom: 1px solid #eee;
}

.morebtn {
color : black;
width: 80px;
height: 30px;
background-color:white;
border:1px solid #eee;
}

</style>
</head>
<%@ include file="../header/shopheader.jsp"%>
<body>
<div id="app">
<div class="customerwrap">
		<div class="customernav">
			<customernav>
			<h2>고객센터</h2>
			<ul>
				<li><a href="../faq.do" style="color: black; font-weight: bold;">자주 묻는 질문</a></li>
				<li><a href="onetoone.do" style="color: black; font-weight: bold;">1:1 문의 게시판</a></li>
			</ul>
		</customernav>
		
		
				<div class="contentsarea"><h3>자주 묻는 질문</h3>
		<table>

				<tbody>
				<tr>
				<td style="cursor:pointer; font-weight: bold; color:black">전체</td>
				<td style="cursor:pointer">공지사항</td>
				<td style="cursor:pointer">자주묻는 질문</td>
				</tr>
				
				<tr class="onetooneselect">
				<td style="cursor:pointer"><a href="onetoone.do" style="color : #A2A2A2;">1:1문의</a></td>
				<td></td>
				<td></td>
				</tr>
				</tbody>
		</table>
	
	<table>
		<tbody>
				
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
			<td><input type="checkbox" :value="item.qnaNumber" v-model="selectComment"></td>
			<td>{{item.qnaNumber}}</td>
			
			<td align="left"><a @click="fnlistView(item)" href="javascript:;" >
			 <span style="font-weight: bold;">[{{ item.qnaTypeName }}]</span> {{item.qnaTitle}}</a>
			<a v-if="item.comCnt >0">({{item.comCnt}})</a></td>
			
			<td>{{item.userId}}</td>
			<td>{{ item.qnaDate }}</td>
			<td>{{ item.qnaCnt }}</td>
			<td>{{ item.qnaAnsweryn }}</td>
		</tr>
			</tbody>
		
		
	</table>
	<div align="left" style="width:1000px;">
		<button class="qnaallselect">전체선택</button>
			<button class="qnaallselectnot">선택해제</button>
	</div>	
	<div align="right" style="width:1000px;">
	<button class="onetooneEditbtn" @click="fnQnaAdd()"> 게시물 작성</button>
	<button class="qnadeletbtn" @click="fnQnaRemove()"> 게시물 삭제</button>
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
	
</div>

</div>
</body>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		list : [],		
		qnaNumber :"",
		uId : "${sessionuId}",
		Name : "${sessionName}",
		status : "${sessionStatus}",
		selectComment : [] ,
		currentPage: 1,
		itemsPerPage: 15,
	},// data
	methods : {
		fnGetList : function(){
            var self = this;
            var nparmap = {};
            $.ajax({
                url : "/qna/list.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.list = data.list;
                	console.log(self.list);
                }
            }); 
        },
        fnQnaAdd : function(){
        	var self =this;
        	location.href ="/qnaadd.do"
        },
        fnlistView : function(item){
        	var self = this;
        	$.pageChange("/qna/view.do", {qnaNumber :item.qnaNumber});
        },
        fnQnaRemove : function(){
        	var self = this;
        	if(!confirm("정말 삭제할거냐")){
         		 return;
         	 }        
        	var noList = JSON.stringify(self.selectComment);
        	var nparmap = {selectComment : noList };
        	 $.ajax({
                 url : "/qna/deleteList.dox",
                 dataType:"json",	
                 type : "POST", 
                 data : nparmap,
                 success : function(data) { 
                	alert("삭제되었다");
                	self.fnGetList();             
                	self.selectComment = [];
                 	
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
          }
       
        
	}, // methods
	created : function() {
		var self = this;
		self.fnGetList();
	}// created
});
</script>