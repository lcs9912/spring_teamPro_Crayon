<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
<div id="app">
	<h1>{{searchName}}</h1>
	<ul>
		<li v-for="item in productList">{{item.productName}}</li>
	</ul>
</div>
</body>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		productList : [],
		searchName : "${map.searchName}",
	},// data
	methods : {
		fnProductList : function(){
            var self = this;
            var nparmap = {searchName : self.searchName};
            console.log(self.searchName);
            $.ajax({
                url : "/product/searchList.dox",
                dataType:"json",
                type : "POST",
                data : nparmap,
                success : function(data) {
                	console.log(self.searchName);
                	self.productList = data.productList;
                	console.log(self.productList);
                }
            }); 
        },
	}, // methods
	created : function() {
		var self = this;
		self.fnProductList();
	}// created
});
</script>