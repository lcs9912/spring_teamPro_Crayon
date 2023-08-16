<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {margin:0; padding:0;}

table {
margin-top : 10px;
	width : 800px;
	border: 1px solid #a2a2a2;
	border-collapse: collapse;
	text-align: center;
}

th, td {
	border: 1px solid #eee;
	padding: 20px 10px;
}
td{
color : #a2a2a2;
}


.customerwrap {
	width:1200px; margin:0 auto;
	}
	
customernav {
	float:left; width:200px; color:#000;
	}


.customernav{
padding-bottom: 20px;
margin-left: 50px;
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
width : 800px;
margin-left : 200px;
padding-bottom : 10px;
border-bottom: 3px solid #222;
}

.dropdownlist li{
whidth: 1200px;
list-style : none;
padding-top : 10px;
padding-bottom : 10px;
border-bottom : 1px solid #eee;
margin-left : 200px;
margin-right : 200px;
}

a{
text-decoration : none;
}
</style>

</head>
<body>
	<div id="app">
	<div class="customerwrap">
		<customernav>
		<div class="customernav">
			<h2>고객센터</h2>
			<ul>
				<li><a href="faq.do" style="color: black; font-weight: bold;">자주 묻는 질문</a></li>
				<li><a href="onetoone.do" style="color: black;">1:1문의</a></li>
			</ul>
		</div>
		</customernav>
		
				<div class="contentsarea"><h3>자주 묻는 질문</h3></div>
				<ul class="dropdownlist">
				<table>
				<tbody>
				
				<tr>
				<td style="cursor:pointer">전체</td>
				<td style="cursor:pointer">공지사항</td>
				<td style="cursor:pointer">자주묻는 질문</td>
				</tr>
				
				<tr class="onetooneselect">
				<td style="cursor:pointer"><a href="onetoone.do" style="color : #A2A2A2;">1:1문의</a></td>
				<td></td>
				<td></td>
				</tr>
				
				</tbody>
				</table>
				</ul>
				
	</div>
	</div>
	
	
</body>
</html>
<script>

</script>