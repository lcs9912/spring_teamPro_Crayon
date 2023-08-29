<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	a{
		text-decoration: none;
	}
	


.customerwrap {
	width:100%;
	}
	
.customernav {
	width:1200px; margin:50px auto;
	}
customernav{
		float:left; width:200px; color:#000;
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
.table1{
width:100%;
}
.table1 th,td{
text-align:center;
}
.contentsarea{
width:1000px;
float:left;
font-size:18px;
margin-bottom:100px;
}
.contentsarea span{
background-color:#eee;
}
.contentsarea1{
border:1px solid #a2a2a2;
border-radius:20px;
padding:30px;
}
.managerarea{
border:1px solid #a2a2a2;
border-radius:20px;
padding:30px;
}
button{
background-color:white;
width:80px;
height:40px;
border-radius:20px;
float:right;
}
button:hover{
background-color:#eee;
}
.managetextarea{
text-align:center;

}
</style>

</head>
<%@ include file="../header/shopheader.jsp"%>
<body>
<div id="app">
<div class="customernav">
			<customernav>
			<h2>고객센터</h2>
			<ul>
				<li><a href="../faq.do" style="color: black; font-weight: bold;">자주 묻는 질문</a></li>
				<li><a href="onetoone.do" style="color: black; font-weight: bold;">1:1 문의 게시판</a></li>
			</ul>
		</customernav>
		</div>
		<div class="contentsarea">
		<h3>질문입니다.</h3>
		<div class="contentsarea1">
	<div><span>번호</span> : {{info.qnaNumber}}</div>
	<div><span>제목</span> : {{info.qnaTitle}}</div>
	<div><span>내용</span> :<pre v-html="info.qnaContents" style="display:inline-block;"></pre></div>
	<div><span>작성자</span> : {{info.userId}}</div>
	<div><span>작성일</span> : {{info.qnaDate}}</div>
	<div><span>수정일</span> : {{info.qnaUpdate}}</div>
	<div><span>조회수</span> : {{info.qnaCnt}}</div>
	</div>
	<h3 style="margin-top:30px;">답변입니다.</h3>
	<div class="managerarea">
	<div v-if="info.userId==uId">
	<button @click="fnQnaEdit()">수정하기</button> 
	<button @click="fnQnaRemove()">삭제하기</button> 
	</div>
	
	<div>
	<table>
		<tr v-for="item in list">
		<td v-if=" status == 'A'" ><input type="checkbox" :value="item.cNo" v-model="selectItem"></td>
			<td style="width:15%">아이디: {{item.cuserId}}  </td>
			<td style="width:60%">댓글 내용 : {{item.commentContents}} </td>
			<td style="width:24%">수정일 : {{item.commentUpdate}} <a @click="fnCommRemove(item)" href="javascript:;" v-if="item.cuserId==uId || status == 'A' ">
			<i class="fa-solid fa-skull" style="color: #f24a2c;"></i></a></td>
			
		</tr>
		
	</table> 

	</div>
	</div> 
	<div class="managetextarea">
	<h3 style="margin-top:10px;">답변하기</h3><textarea rows="3" cols="40" v-model="text" style="margin-top:5px; font-size:18px;"></textarea>
	</div>
	<button v-if="status == 'A'" @click="fnRemoveComm">답변삭제</button>
	<button @click="fnQnaCommAdd()">답변등록</button>
	</div>
</div>
</body>
<%@ include file="../header/footer.jsp"%>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		list : [],
		info : {},
		qnaNumber : "${map.qnaNumber}",
		text: "",
		uId : "${sessionId}",
		Name : "${sessionName}",
		status : "${sessionStatus}",
		selectItem : []
		
	},// data
	methods : {
		fnGetList : function(){
            var self = this;
            var nparmap = {qnaNumber : self.qnaNumber};
            $.ajax({
                url : "/qna/view.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.info = data.info;
                }
            }); 
        },
        fnQnaEdit : function(item){
        	var self =this;
       	 	$.pageChange("/qna/add.do",{qnaNumber : self.qnaNumber});
       },
       fnQnaRemove : function(item){
        	 var self = this;
        	 if(!confirm("정말 삭제할거냐")){
        		 retrun;
        	 }
             var nparmap = {qnaNumber: self.qnaNumber};
             $.ajax({
                 url : "/qna/hide.dox",
                 dataType:"json",	
                 type : "POST", 
                 data : nparmap,
                 success : function(data) { 
                	 alert("삭제완료");
                	 location.href ="/qna/list.do"
                 }
             }); 	
        },
        fnGetComment : function(){
            var self = this;
            var nparmap = {qnaNumber : self.qnaNumber};
            $.ajax({
                url : "/qna/comment/list.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) {    	
                	self.list = data.list;
                	
                }
            }); 
        },
        fnQnaCommAdd :function(){
        	var self = this;
            var nparmap = {qnaNumber : self.qnaNumber ,text : self.text,uId : self.uId};
            $.ajax({
                url : "/qna/comment/add.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	alert("등록완료");
                	self.text = "";
                	self.fnGetComment(); 
                }
            });
        },
        fnCommRemove : function(item){
       	 var self = this;
       	 if(!confirm("댓글 삭제할거냐")){
       		 retrun;
       	 }
            var nparmap = {commentNumber : item.commentNumber};
            $.ajax({
                url : "/qna/comment/hide.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
               	 alert("삭제완료");
               	 self.fnGetComment(); 
                }
            }); 	
       }
        
     
      
	}, // methods
	created : function() {
		var self = this;
		self.fnGetList(); 
		self.fnGetComment();
		
		
	}// created
});
</script>