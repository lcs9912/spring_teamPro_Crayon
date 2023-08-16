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
	
	<button @click="fnQnaEdit">수정하기</button> 
	
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

       }
        
     
      
	}, // methods
	created : function() {
		var self = this;
		self.fnGetList(); 
		
		
	}// created
});
</script>