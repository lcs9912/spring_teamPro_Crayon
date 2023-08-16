<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" 
crossorigin="anonymous" referrerpolicy="no-referrer" /> <!-- 아이콘 -->
<title>Insert title here</title>
<style>
html, body{
    width: 100%;
    height: 100%;
    padding: 0;
    margin: 0;
}
body{
    /* background-image: url('./bg.jpg'); */ /* 배경이미지 */
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
}
body.dimmed::before{
    content: '';
    position: fixed;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
    background-color: rgba(255,255,255, 0.75);
    -webkit-backdrop-filter: blur(5px);
    backdrop-filter: blur(5px);    
}
.popup {
    z-index: 1;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    min-width: 300px;
    max-width: 600px;
    background-color: #fff;
    border-radius: 15px;
    box-shadow: 0 2px 55px -25px rgb(0 0 0 / 100%);
}
.popup > .title{
    border-radius: 15px 15px 0 0;
    min-height: 40px;
    color: white;
    background-color: black;
    padding: 10px 15px;
    box-sizing: border-box;
    font-weight: bold;
    text-align: center;
}
.popup > .content {
    padding: 20px;
    box-sizing: border-box;
}
.popup > .cmd {
    bottom: 0;
    min-height: 40px;
    padding: 15px 15px;
    box-sizing: border-box;
    border-radius: 0 0 15px 15px;
    min-height: 40px;
    text-align: right;
    width: 300px;
 
}
.popup > .cmd .button {
    border-radius: 8px;
    padding: 5px 10px;
    border: 1px solid #aaa;
    width: 80px;
    color: white;
    background-color: black;
    font-weight: bold;
    cursor: pointer;
    margin: 10px auto;
}
.popup > .cmd .button:hover {
    color: #fff;
    background-color: #000;
    border-color: #000;
}
.title i{
	cursor: pointer;
}
.fa-x{
	position: absolute;
	top: 10px;
	right: 10px;
}
</style>
</head>
<body class="dimmed">
<div id="app">
    <div class="popup">
        <div class="title">주소 변경<i class="fa-solid fa-x" @click="fnReturn"></i></div>
        <div class="content">
            <p>대충 주소 변경 주의 사항(없어도됨)</p>
            <p>
                <div>대충 원래 이메일 ** 표시</div>
               <div><input placeholder="대충 변경할 이메일"></div>
                <div>대충 간단한 인증(버튼 가운데 정렬 하는법 알려주세요)</div> 
            </p>
            
        </div>
        <div class="cmd">
            <input type="button" name="btnclose" class="button" value="닫기">
        </div>
    </div>
</div>
</body>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		list : [],
	},// data
	methods : {
		fnGetList : function(){
            var self = this;
            var nparmap = {};
            $.ajax({
                url : "list.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.list = data.list;
                }
            }); 
        },
        fnReturn : function(){
			history.back();

		}
	}, // methods
	created : function() {
		var self = this;
		
	}// created
});
</script>