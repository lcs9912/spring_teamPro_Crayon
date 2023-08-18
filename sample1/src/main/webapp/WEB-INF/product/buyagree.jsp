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
.productdetailhead,
.productdetailname,
.productdetailtransname,
.productdetailsize{
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

.productdetailagreearea{
padding:0px 32px 28px 28px;
background-color:white;

}
.noticeheader{
font-size: 15px;
line-height: 18px;
}

.noticegroup{
border-bottom: 1px solid #eee;
padding-top:28px;
}

.noticecontents{
width:90%;
color: rgba(34,34,34,.5);
    font-size: 13px;
    line-height: 16px;
    margin-top: 4px;
    padding-bottom : 28px;
    display:inline-block;
}
input[type=checkbox] {
cursor:pointer;
-ms-transform: scale(2);
-moz-transform: scale(2);
-webkit-transform: scale(2);
-o-transform: scale(2)
}

.continuebtn button{
background-color:#a2a2a2;
border:none;
width:100%;
height:50px;
border-radius:15px;
color:white;
font-size:25px;
margin-top:10px;
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
	
	<h1 style="padding-bottom:20px; text-align:center;">
	<span style="color:red;">구매</span>하시기 전에 꼭 확인하세요.
	</h1>
	
		<div class="productheader" style="display: flex; align-items: center;">
    <div class="productinfo">
        사진데이터
    </div>
    <div style="margin-left: 10px;">
        <div class="productdetailhead">ID</div>
        <div class="productdetailname">NAME</div>
        <div class="productdetailtransname">TRANSNAME</div>
        <div class="productdetailsize">SIZE</div>
    </div>
</div>


	</div>


<div class="productdetailagreearea">
	<div class="noticegroup">
	
	<div class="noticeheader">구매하려는 상품이 맞습니다.</div>
	<div class="checkarea">
	<div style="float:right; display:inline-block;"><input type="checkbox"></div>
	<div class="noticecontents">상품 이지미,모델번호,출시일,상품명,사이즈를 한 번 더 확인했습니다. 
	단,상품의 이미지는 촬영환경에 따라 실제와 다를 수 있습니다.
	</div>
	</div>
	</div>
	
	<div class="noticegroup">
	<div class="noticeheader">국내/해외에서 발매한 정품 · 새상품입니다.</div>
<div class="checkarea">
	<div style="float:right; display:inline-block;"><input type="checkbox"></div>
	<div class="noticecontents">모든 구성품이 그대로이며, 한 번도 착용하지 않은 정품・새상품입니다. 국내 발매 상품 여부는 확인드리지 않습니다.
</div>
	</div>
	</div>
	
	<div class="noticegroup">
	<div class="noticeheader">제조사에서 불량으로 인정하지 않는 기준은 하자로 판단하지 않습니다.</div>
		<div class="checkarea">
	<div style="float:right; display:inline-block;"><input type="checkbox"></div>
	<div class="noticecontents">박스/패키지와 상품 컨디션에 민감하시다면 검수 기준을 반드시 확인하시기 바랍니다.
	<div style="padding-top:10px;"><a href="#" style="color:#899CFC">검수기준 보기</a></div>
	</div>
	</div>
	</div>
	
	<div class="noticegroup"  style="border:none;">
	<div class="noticeheader">KREAM의 최신 이용정책을 모두 확인하였으며, 구매를 계속합니다.</div>
		<div class="checkarea">
	<div style="float:right; display:inline-block;"><input type="checkbox"></div>
	<div class="noticecontents">건전하고 안전한 거래를 위해 반드시 숙지해야 할 미입고, 페널티, 부정거래 등의 이용정책을 확인했습니다.
	<div style="padding-top:10px;"><a href="#" style="color:#899CFC">이용정책 보기</a></div>
	</div>
	</div>
</div>
<div class="continuebtn" style="width:100%; text-align:center;">
<button>구매 계속</button>
</div>
</div>


</div>
</div>
</body>

<%@ include file="../header/footer.jsp"%>
</html>
<script>

</script>