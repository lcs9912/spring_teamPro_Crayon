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
		<span>��ǰ�̹������</span>
		<span>��ǰ�̸�</span>
		<span>��ǰ������</span>
		<span>��ǰ�÷�</span>
		<span>��ǰ����</span>
		<span>��ǰ�𵨹�ȣ</span>
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