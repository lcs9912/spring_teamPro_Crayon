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
body, div, img {
    margin: 0;
    padding: 0;
    border: 0;
}
.image-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 10px;
}

.grid-item {
  position: relative;
  width: 100%;
  height: 400px; /* 원하는 높이를 지정 */
  overflow: hidden;
}

.grid-item img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  cursor: pointer;
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
</style>
</head>
<body>
<div id="app">
<div>
	<ul class="image-grid">
	<div>
	    <li class="grid-item">
	      <img src="../img/style/style_1.jpg"></img>
	    </li>
		<strong>닉네임</strong>
	 	<p>contents</p>
     </div>
     <div>
	    <li class="grid-item">
	      <img src="../img/style/style_2.jpg"></img>
	    </li>
		<strong>닉네임</strong>
	 	<p>contents</p>
     </div>
     <div>
	    <li class="grid-item">
	      <img src="../img/style/style_3.jpg"></img>
	    </li>
		<strong>닉네임</strong>
	 	<p>contents</p>
     </div>
     <div>
	    <li class="grid-item">
	      <img src="../img/style/style_4.jpg"></img>
	    </li>
		<strong>닉네임</strong>
	 	<p>contents</p>
     </div>
     <div>
	    <li class="grid-item">
	      <img src="../img/style/style_5.jpg"></img>
	    </li>
		<strong>닉네임</strong>
	 	<p>contents</p>
     </div>
     <div>
	    <li class="grid-item">
	      <img src="../img/style/style_6.jpg"></img>
	    </li>
		<strong>닉네임</strong>
	 	<p>contents</p>
     </div>
     <div>
	    <li class="grid-item">
	      <img src="../img/style/style_7.jpg"></img>
	    </li>
		<strong>닉네임</strong>
	 	<p>contents</p>
     </div>
     <div>
	    <li class="grid-item">
	      <img src="../img/style/style_8.jpg"></img>
	    </li>
		<strong>닉네임</strong>
	 	<p>contents</p>
     </div>
  	</ul>
</div>
</div>
<!-- Modal for displaying larger image -->
  <div class="modal">
    <span class="close">&times;</span>
    <img class="modal-content" id="modal-image">
  </div>

  <script src="script.js"></script>
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
        }
	}, // methods
	created : function() {
		var self = this;
	}// created
});

//모달 스크립트
var modal = document.querySelector(".modal");
var modalImage = document.getElementById("modal-image");
var closeBtn = document.querySelector(".close");

document.querySelectorAll(".grid-item img").forEach(function(img) {
  img.addEventListener("click", function() {
    modal.style.display = "block";
    modalImage.src = img.src;
  });
});

closeBtn.addEventListener("click", function() {
  modal.style.display = "none";
});
</script>