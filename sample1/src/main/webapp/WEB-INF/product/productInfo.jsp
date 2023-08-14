<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<script src="../js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<meta charset="UTF-8">
	<title>Insert title here</title>
<style>

</style>

</head>
<%@ include file="../header/header1.jsp"%>
<%@ include file="../header/header2.jsp"%>
<body>
<div id="app">
	<div>
		<button @click="fnBuy">구매</button>
		<button @click="fnSell">판매</button>
	</div>
</div>
</body>
<%@ include file="../footer.jsp"%>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		model : ""
	},
	methods : {
        fnBuy : function(){ // 구매버튼
			var self = this;
			$.pageChange("productBuy");
			},
		fnSell : function(){
			var self = this;
		}
	},
	created : function() {
		var self = this;
	}
})
</script>