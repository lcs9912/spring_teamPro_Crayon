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
<title>STYLE 게시물 추가하기</title>
<style>
	/* 전체 페이지 스타일 */
	* {margin:0; padding:0; box-sizing : border-box;}
	
	textarea {
		width : 300px;
		height : 300px;
	}
	input {
		width : 300px;
	}
</style>
</head>
<body>
<div id="app">
	<div>
		<input type="file" id="file1" name="file1">
	</div>
	<div>
		<input v-model="tag" type="text" name="productTag" placeholder="관련상품을 태그해주세요">
	</div>
	<div>
		<textarea  v-model="contents" placeholder="내용을 입력해주세요 요즘 트렌드는 짧게 적는거 아시죠?">
		</textarea>
	</div>
	<button @click="fnAddStyle">등록</button>
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
		uId : "${sessionId}",
		nickname : "${sessionNickname}",
		contents : "",
		tag : "",
	},// data
	methods : {
		fnAddStyle : function(){
            var self = this;
            var nparmap = {contents : self.contents, uId : self.uId, nickname : self.nickname, tag : self.tag};
            $.ajax({
                url : "/addStyle.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	alert("등록 완료");
                }
            }); 
        }
	}, // methods
	created : function() {
		var self = this;
	}// created
});
</script>