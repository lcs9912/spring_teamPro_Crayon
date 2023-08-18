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

.nowbuyarea{
padding: 32px 32px 28px;
width:100%;
background-color:white;
}

.leftnow, .rightnow{
width:49%;
display:inline-block;
text-align:center;
color: rgba(34,34,34,.5);
    font-size: 12px;
}
.paynowbuy{
color:black;
font-size: 16px;
}

.buytabarea{
padding-top:5px;
padding-bottom:5px;
border-radius:80px;
border:1px solid #ebebeb;
background-color:#ebebeb;
 text-align:center;
}
.leftbuybtnarea, .rightbuybtnarea{
width:49%;
display:inline-block;
background-color:#FF5E3D;
border-radius:80px;
height:30px;
color:white;
}
.wantpay{
padding: 32px 32px 28px;
background-color:white;
}
.wantpaytitle{
    font-size: 14px;
    font-weight: 700;
}
.wantpaynum{
width:60%;
border:none;
border-bottom:2px solid #eee;
height:50px;
font-size:20px;
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

	<div class="nowbuyarea">
	<div>
			<div class="leftnow" style="border-right:1px solid #eee;">즉시구매가
			<div class="paynowbuy">000.000원</div>
			</div>
			
			<div class="rightnow">즉시판매가
			<div class="paynowbuy">000.000원</div>
			</div>
			
			</div>
	</div>
	
<div style="background-color:white; padding:35px;">
	<div class="buytabarea">
		<div class="leftbuybtnarea">구매 입찰</div>
		<div class="rightbuybtnarea">즉시 구매</div>
	</div>
</div>

<div class="wantpay">
<div class="wantpaytitle">구매희망가</div>
<div style="text-align:center;"><input type="text" class="wantpaynum" style="text-align:right;" placeholder="희망가 입력">
<span style="font-size:25px;">원</span>
</div>

</div>


</div>

</div>
</div>
</body>

<%@ include file="../header/footer.jsp"%>
</html>
<script>

</script>