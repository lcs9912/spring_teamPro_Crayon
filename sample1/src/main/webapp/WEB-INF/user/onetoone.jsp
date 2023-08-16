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
	border: 1px solid #a2a2a2;
	border-collapse: collapse;
	text-align: center;
}

th, td {
	border: 1px solid #eee;
	padding: 10px 5px;

}

tr{

}
td{

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
width: 1200px;
list-style : none;
padding-top : 10px;
padding-bottom : 10px;
border-bottom : 1px solid #eee;
margin-left : 200px;
margin-right : 200px;
}
.onetooneEditbtn{
background-color : white;
border : 1px solid #A2A2A2;
padding : 5px;
font-weight: bold;
margin-top : 5px;
cursor: pointer;
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
.movebtn{
text-align:center;

}
.movebtn button{
width : 40px;
height: 30px;
background-color : white;
font-weight: bold;
cursor: pointer;
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
				<li><a href="faq.do" style="color: black;">자주 묻는 질문</a></li>
				<li><a href="onetoone.do" style="color: black; font-weight: bold;">1:1 문의 게시판</a></li>
			</ul>
		</div>
		</customernav>
		
				<div class="contentsarea"><h3>1:1 문의 게시판</h3></div>

<table>
				<tbody>
				
				<tr class="onetoonehead">
				<th><div align="center">번 호</div></th>
				<th><div align="center"></a>제 목</div></th>
				<th><div align="center">작성자</div></th>
				<th><div align="center">작성일</div></th>
				<th><div align="center">조회수</div></th>
				<th><div align="center">처리상태</div></th>
				</tr>
				
				<tr>
				<td>1</td>
				<td align="left"><a href="javascript:;">제목제목제목제목제목제목제목제목제목</td>
				<td>작성자</td>
				<td>sysdate</td>
				<td>comcnt</td>
				<td>status</td>
				</tr>

				</tbody>
				</table>
				
				<div align="right" style="width:1000px;"><button class="onetooneEditbtn">글쓰기</button></div>
				<div class="movebtn">
				<button><i class="fa-solid fa-chevron-left"></i></button>
				<button style="background-color: #ccc; font-weight: bold;">0</button>
				<button><i class="fa-solid fa-chevron-right"></i></button>
				</div>
				
	</div>

	</div>

	
	
</body>
</html>
<script>

</script>