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


.contentsarea{
width : 1000px;
float:left;
margin-bottom : 150px;
}

.contentsarea h3{
	border-bottom: 3px solid #222; padding-bottom:15px;
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
margin: 25px 10px 10px 0;
cursor: pointer;
}

.qnaallselectnot{
background-color : white;
border : 1px solid #A2A2A2;
padding : 5px;
font-weight: bold;
margin: 25px 10px 10px 0;
cursor: pointer;
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
.qnatitlebar {height:50px; font-size:20px; margin:20px 0;}
.qnatitlebar label{width:80px; display:inline-block;}
.qnatitlebar input{border:0px solid #ccc; outline:none; width:700px; font-size:20px; color:#555;}

</style>
</head>
<%@ include file="../header/shopheader.jsp"%>
<body>
<div id="app">
	
	<div class="customerwrap">		
		<div class="customernav">
			<customernav>
				<!-- <customernav> -->
				<div class="customernavarea">
					<h1>고객센터</h1>
					<ul>
						<li><a href="faq.do" style="color: black; font-weight: bold;">자주 묻는 질문</a></li>
						<li><a href="onetoone.do" style="color: black;">1:1 문의 게시판</a></li>
					</ul>
					</div>
				<!-- </customernav> -->
			</customernav>
				<div class="contentsarea"><h3>자주 묻는 질문 작성</h3>
					<div class="qnatitlebar"><!-- 제목작성 영역 div 클래스 -->
						<label for="qnatitle">제목 : </label><input v-model="info.qnaTitle" id="qnatitle">
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
			</div>
			
	</div>
</div>
</body>
</html>
<%@ include file="../header/footer.jsp"%>
<script>
console.log(Vue);
Vue.use(Vue2Editor);
const VueEditor = Vue2Editor.VueEditor;
Vue.component('customernav', {
	  template: `
	    <div class="customernavarea" style="display:inline-block; float:left; margin-right:25px">
	      <h1>고객센터</h1>
	      <ul>
	        <li><a href="faq.do" style="color: black; font-weight: bold;">자주 묻는 질문</a></li>
	        <li><a href="onetoone.do" style="color: black;">1:1 문의 게시판</a></li>
	      </ul>
	    </div>
	  `
	});
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