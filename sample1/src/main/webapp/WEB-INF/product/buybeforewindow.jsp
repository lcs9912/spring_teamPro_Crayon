<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<script src="https://kit.fontawesome.com/047f82d071.js" crossorigin="anonymous"></script>
	<script src="../js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<meta charset="UTF-8">
	<title>Insert title here shoes</title>
<style>
*{
		margin:0;
		padding:0;
}



.contentsarea{
    margin: 0 auto;
    max-width: 780px;
    min-height: 900px;
    overflow: hidden;
    padding: 20px 40px 160px;
   
}
.productcontents{
box-shadow : 2px 3px 5px 0px #eee;
padding: 32px 32px 28px;
 background-color: white;
 border-bottom : 1px solid #eee;
}
.productheader{
width:100%;
}
.productinfo{
width:80px;
height:80px;
background-color:#eee;
display:inline-block;

}
.productdetailhead, .productdetailname, .productdetailtransname{
width:100%;

}

.productdetailhead{
font-size: 14px;
    font-weight: 700;
    line-height: 17px;
}
.productdetailname{
font-size: 14px;
    line-height: 17px;
}
.productdetailtransname{
color: rgba(34,34,34,.5);
    font-size: 13px;
    line-height: 16px;    
}

.productdetailsizarea{
padding:32px 32px 28px 28px;
background-color:white;
text-align:center;
}
.productdetailsizarea button{
background-color:white;
border : 1px solid #E1E1E1;
cursor:pointer;
width : 200px;
height : 60px;
border-radius:10px;
margin-bottom : 10px;
}

.buyboxarea{
width:100%;
padding: 32px 32px 28px 28px;
background-color:white;
border-top:1px solid #e1e1e1;
text-align:center;
}
.buyboxarea button{
width: 100%;
height:60px;
border-radius:10px;
background-color:black;
color:white;
font-weight: bold;
font-size:15px;
}

</style>

</head>
<%@ include file="../header/header1.jsp"%>
<%@ include file="../header/header2.jsp"%>
<body> 
<div id="app" style="margin-top : 100px; background-color:#E1E1E1;">


<div class="contentsarea">
<div style="box-shadow: 0 4px 10px 0 rgba(0,0,0,.1);">

	<div class="productcontents">
		<div class="productheader" style="display: flex; align-items: center;">
    <div class="productinfo">
        사진데이터
    </div>
    <div style="margin-left: 10px;">
        <div class="productdetailhead">ID</div>
        <div class="productdetailname">NAME</div>
        <div class="productdetailtransname">TRANSNAME</div>
    </div>
</div>


	</div>


<div class="productdetailsizarea">
<button>v18.220</button>
<button>v19.225</button>
<button>v20.230</button>
<button>v21.235</button>
<button>v22.240</button>
<button>v23.245</button>
<button>v24.250</button>
<button>v25.255</button>
<button>v26.260</button>
<button>v27.265</button>
<button>v28.270</button>
<button>v29.275</button>
<button>v30.280</button>
<button>v31.285</button>
<button>v32.290</button>
</div>

<div class="buyboxarea">
<button>구매입찰</button>
</div>

</div>

</div>
</div>
</body>

<%@ include file="../header/footer.jsp"%>
</html>
<script>

</script>