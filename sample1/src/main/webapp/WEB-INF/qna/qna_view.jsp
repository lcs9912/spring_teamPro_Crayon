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
</style>
</head>
<body>
<div id="app">
	<div>번호 : {{info.qnaNumber}}</div>
	<div>제목 : {{info.qnaTitle}}</div>
	<div>내용 :<pre v-html="info.qnaContents"></pre></div>
	<div>작성자 : {{info.userId}}</div>
	<div>작성일 : {{info.qnaDate}}</div>
	<div>수정일 : {{info.qnaUpdate}}</div>
	<div>조회수 : {{info.qnaCnt}}</div>
	
	<div v-if="info.userId==uId">
	<button @click="fnQnaEdit()">수정하기</button> 
	<button @click="fnQnaRemove()">삭제하기</button> 
	</div>
	
	<div>
	<hr>
	<hr>
	<table >
		<tr v-for="item in list">
		<td v-if=" status == 'A'" ><input type="checkbox" :value="item.cNo" v-model="selectItem"></td>
			<td>아이디: {{item.cuserId}} : </td>
			<td>댓글 내용 : {{item.commentContents}} </td>
			<td>수정일 : {{item.commentUpdate}} <a @click="fnCommRemove(item)" href="javascript:;" v-if="item.cuserId==uId || status == 'A' ">
			<i class="fa-solid fa-skull" style="color: #f24a2c;"></i></a></td>
			
		</tr>
		
	</table> 
	<button v-if="status == 'A'" @click="fnRemoveComm">댓글삭제</button>
	<hr>
	<hr>
	<textarea rows="3" cols="40" v-model="text"></textarea>
	<button @click="fnQnaCommAdd()">댓글등록</button>
	</div> 
	
</div>
</body>
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