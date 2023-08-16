<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script src="https://kit.fontawesome.com/047f82d071.js" crossorigin="anonymous"></script>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {margin:0; padding:0;}

table {
margin-top : 10px;
	width : 800px;
	border: 1px solid #black;
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

.dropdownlist{
width : 800px;
margin-left : 200px;
padding-bottom : 10px;
border-bottom: 3px solid #222;
}

a{
text-decoration : none;
}
.qnacontents{
margin-left : 200px;
}
.qnacontents tr td{
color : black;
border: 1px solid white;
border-bottom: 1px solid #eee;

}

.morebtn {
color : black;
width: 80px;
height: 30px;
background-color:white;
border:1px solid #eee;
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
				<li><a href="onetoone.do" style="color: black;">1:1 문의 게시판</a></li>
			</ul>
		</div>
		</customernav>
		
				<div class="contentsarea"><h3>자주 묻는 질문</h3></div>
				
				<table>

				<tbody>

				<tr>
				<td style="cursor:pointer; font-weight: bold; color:black">전체</td>
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
				
				<table class="qnacontents">
				<tr>
				<td align="center" style="width:200px; font-weight: bold;">자주묻는 질문</td>
				<td align="left" style="width:800px;">가품 ・ 손상/오염/사용감 있는 상품 판매에 대한 제재</td>
				<td align="right" style="width:100px;"><i class="fa-solid fa-plus"></i></td>
				
				
				</tr>
		
				
				<tr>
				<td colspan="3" style="border: none;"><button  class="morebtn" style="cursor: pointer;">더보기<i class="fa-solid fa-chevron-down"></i></button><td>
				</tr>
				</table>
				</div>
	</div>

	
	
</body>
</html>
<script>

</script>