<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<script src="js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
<style>
</style>
</head>
<body>
<div id="app">
	<div>
		<span>상품이미지등록</span>
		<span>상품이름</span>
		<span>상품사이즈</span>
		<span>상품컬러</span>
		<span>상품가격</span>
		<span>상품모델번호</span>
	</div>
</div>
</body>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		list : [],
	},// data
	methods : {
		
	}, // methods
	created : function() {
		var self = this;
	}// created
});
</script>