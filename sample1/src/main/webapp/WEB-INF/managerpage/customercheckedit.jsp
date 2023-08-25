<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script src="https://kit.fontawesome.com/047f82d071.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {margin:0; padding:0; box-sizing : border-box;}

table {
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
	width:1000px;
}

th, td {
	border: 1px solid black;
	padding: 5px 10px;
}

li {
	list-style:none;
	}


a {	text-decoration:none;
	color: inherit;
	}

	.mypagewrap {
		width:1200px; margin:50px auto;
		clear:both; 
		height:600px;
		} 
 	.mypagenav {
		float:left; width:200px; color:#000;
		} 
		
	.myinfo h2{
			margin-bottom:20px; color:tomato;
		}	
	
		
	.myinfo h3{
			margin: 30px 0px 10px;
		}	
		
	.myinfo ul li{
			margin:10px 10px;
		}	
		
	


</style>

</head>
<%@ include file="../header/shopheader.jsp"%>
<body>
	<div id="app">
	<div class="mypagewrap">
		<nav class="mypagenav">
		<div class="myinfo">
				<h2><a href="mypage.do">관리자 페이지</a></h2>
			<h3>회원 관리</h3>
			<ul>
			<a href="checkedit.do"><li style="color:tomato;">회원 조회/수정</li></a>
			
			</ul>
		</div>
				<div class="myinfo">
			<h3>물품 관리</h3>
		</div>
		
				<div class="myinfo">
			<h3>환불 관리</h3>
		</div>
		
		</nav>
		<div class="sailcontainer">
		
		<table>
		<tr>
		<th>선택</th>
		<th>아이디</th>
		<th>이름</th>
		<th>나이</th>
		<th>전화번호</th>
		<th>포인트</th>
		
		</tr>
		
		<tr>
		<td><input type="checkbox"></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		</tr>
		
		</table>
		
		



		</div>
	</div>
	</div>

</body>
	<%@ include file="../header/footer.jsp"%>
</html>
<script>

</script>