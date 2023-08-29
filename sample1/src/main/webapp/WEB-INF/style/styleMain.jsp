<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/2c370f498b.js" crossorigin="anonymous"></script>
	<script src="../js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<meta charset="UTF-8">
	<title>STYLE</title>
<style>
* {
	margin: 0;
	padding : 0;
	box-sizing : border-box;
}
.style-contents {
	width:1200px;
	clear:both;
	margin:0 auto;
	margin-top : 150px;
	margin-bottom : 50px;
}
.image-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 10px; 
}

.grid-item {
  position: relative;
  width: 100%;
  height: 600px /* 원하는 높이를 지정 */
  overflow: hidden;
}

.grid-item img {
   width: 100%;
   height: 100%;
  object-fit: cover;
  cursor: pointer;
  margin : 0 auto;
}

/* 모달 스타일 */
.modal {
  display: none;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0, 0, 0, 0.9);
}

.modal-content {
  margin: auto;
  margin-top : 100px;
  display: block;
  max-width: 80%;
  max-height: 80%;
}

.close {
  position: absolute;
  top: 15px;
  right: 25px;
  font-size: 35px;
  font-weight: bold;
  color: white;
  cursor: pointer;
}
img {
	border-radius : 10px;
}
/*  */
.header1 {
	margin : 0 auto;
	padding : 0;
	margin-top : 80px;
	text-align : center;
}
.header-inner {
	width : 100%;
	border : 1px solid #ccc;
	margin-top : 50px;
}
.header-li{
	margin : 0 auto;
	margin-top : 100px;
	width : 1200px;
	height : 150px;
	border-bottom : 1px solid #ccc;
}


</style>
<%@ include file="../header/shopheader.jsp"%>
</head>
<body>
<div id="app">
<div class="header1">
<h1>STYLE</h1>
</div>
<div class="header-inner">
</div>
<div class="header-li">
<ul>
<li>Preparing service..</li>	
</ul>
</div>
	<div class="style-contents">
		<ul class="image-grid">
	     <div v-for="item in list">
		    <li class="grid-item">
		      <img :src="item.sImgPath"></img>
		    </li>
			<strong>{{item.userNickname}}</strong>
		 	<p>{{item.contents}}</p>
	     </div>
	  	</ul>
	</div>
</div>
<!-- Modal for displaying larger image -->
  <div class="modal">
    <span class="close">&times;</span>
    <img class="modal-content" id="modal-image">
  </div>

 
</body>
<%@ include file="../header/footer.jsp"%>
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
                url : "listAllStyle.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.list = data.all;
                }
            }); 
        }
	}, // methods
	created : function() {
		var self = this;
		self.fnGetList();
	}// created
});

//모달 스크립트
var modal = document.querySelector(".modal");
var modalImage = document.getElementById("modal-image");
var closeBtn = document.querySelector(".close");
var headerWrap = document.querySelector(".headerwrap");

document.querySelectorAll(".grid-item img").forEach(function(img) {
  img.addEventListener("click", function() {
    modal.style.display = "block";
    modalImage.src = img.src;
    headerWrap.style.display="none";
  });
});

closeBtn.addEventListener("click", function() {
  modal.style.display = "none";
  headerWrap.style.display="flex";
});
</script>