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
height: 500px;
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
<div id="app" style="margin-top : 100px; background-color:#fafafa;;">


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
<button>
<div>val9.28</div>
<div>status</div>
</button>

<button>
<div>val10.29</div>
<div>status</div>
</button>

<button>
<div>val11.30</div>
<div>status</div>
</button>

<button>
<div>val12.31</div>
<div>status</div>
</button>

<button>
<div>val13.32</div>
<div>status</div>
</button>

<button>
<div>val14.33</div>
<div>status</div>
</button>

<button>
<div>val15.34</div>
<div>status</div>
</button>

<button>
<div>val16.35</div>
<div>status</div>
</button>

<button>
<div>val17.36</div>
<div>status</div>
</button>




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