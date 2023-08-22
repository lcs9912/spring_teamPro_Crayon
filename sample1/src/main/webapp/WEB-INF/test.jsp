<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/2c370f498b.js" crossorigin="anonymous"></script>
	<script src="../js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<meta charset="UTF-8">
	<title>회원가입페이지</title>
<style>
</style>
</head>
<body>
<div id="app">
	<input v-model="test">
	<button @click="fnfnfn">확인</button>
	<div>{{message}}</div>
</div>
</body>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		list : [],
		test : "",
		message : "",
	},// data
	methods : {
		fnfnfn : function(){
        	var self = this;
        	var regex = /^[a-zA-Z0-9]{8,16}$/;
        	if(!regex.test(self.test)){
				self.message = "비밀번호는 영문 대소문자와 숫자 포함 8자리 이상이어야 합니다.";
			}else {
				self.message = "";
			}
        	
        },
        
	}, // methods
	created : function() {
		var self = this;
		
	}// created
});
</script>