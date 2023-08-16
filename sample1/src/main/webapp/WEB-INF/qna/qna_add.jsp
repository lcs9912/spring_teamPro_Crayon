<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="UTF-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.3/vue.min.js"></script>
<script src="https://unpkg.com/vue2-editor@2.3.11/dist/index.js"></script>
<title>Qna등록</title>
<style>
</style>
</head>
<body>
<div id="app">
	<div>
		<label>제목 : <input v-model="info.qnaTitle"></label>
	</div>
	<div>
		<label>종류 : 
		공지사항<input type="radio" name="type" value=1 v-model="info.qnaType">
		자주묻는 질문<input type="radio" name="type" value=2 v-model="info.qnaType">
		1:1 문의<input type="radio" name="type" value=3 v-model="info.qnaType">		
		버그 오류 신고 <input type="radio" name="type" value=4 v-model="info.qnaType">		
		검수 문의 <input type="radio" name="type" value=5 v-model="info.qnaType">		
		</label>
		
	</div>
	<div>
		<td colspan="2">
		 <vue-editor v-model="info.qnaContents"></vue-editor>
		 </td>
	</div>
	<button v-if="qnaNumber ==''" @click="fnAdd">등록</button>
	<button v-else @click="fnEdit">수정</button>
</div>
</body>
</html>
<script>
console.log(Vue);
Vue.use(Vue2Editor);
const VueEditor = Vue2Editor.VueEditor;
var app = new Vue({
	el : '#app',
	data : {
		name : "",
		qnaNumber : "${map.qnaNumber}",
		info : {
			qnaTitle : "",
			qnaContents : "",
			qnaType : ""
			
		},	
	},// data
	components: {VueEditor},
	methods : {
		fnAdd : function(){
            var self = this;
            var nparmap = self.info;
            nparmap.name = self.name;
            $.ajax({
                url : "add.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	alert("등록 완료");
                }
            }); 
        },
        fnGetList : function(){
            var self = this;
            var nparmap = {qnaNumber : self.qnaNumber};
            $.ajax({
                url : "/qna/view.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	console.log(data);
                	self.info = data.info;
                }
            }); 
        },
        fnEdit: function(){
            var self = this;
            var nparmap = self.info;
            nparmap.qnaNumber = self.qnaNumber;
            $.ajax({
                url : "edit.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	alert("수정 완료");
                	location.href ="/qna/list.do";
                }
            }); 
        }
       
        
	}, // methods
	created : function() {
		var self = this;
		if(self.qnaNumber != ""){
			self.fnGetList();
		}
		
	}// created
});
</script>