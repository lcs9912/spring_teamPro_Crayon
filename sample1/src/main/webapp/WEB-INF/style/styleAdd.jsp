<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="UTF-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.3/vue.min.js"></script>
<script src="https://unpkg.com/vue2-editor@2.3.11/dist/index.js"></script>
<title>STYLE 게시물 추가하기</title>
<style>
	/* 전체 페이지 스타일 */
	* {margin:0; padding:0; box-sizing : border-box;}
	
	textarea {
		width : 300px;
		height : 300px;
	}
	input , textarea{
        width: 470px; height: 30px; border:0px solid;
        outline: none; border-bottom: 1px solid #e8e2e2;
     	margin: 15px 15px; cursor:pointer; font-size:14px;
        text-align: center;
	}
	 .areawrap {
     	width: 100%;
        }
    .selectarea {
        width: 1200px; margin: 0px auto; margin-top:50px;
        }
    .contentsarea {
    	width: 600px; float: left; margin:30px 0 20px 0;
    }
    .contentsarea .btn{
    	margin-left:200px;
    	width:150px;
    	height:50px;
		font-size:17px;
	}
	.contentsarea button {
		padding:3px 15px;
		border-radius:3px;
		background:black;
		color:#fff;
		border:none;
	}
	.btn:hover {
		font-weight : bold;
		background-color : #fff;
		color : black;
		border : 2px solid #ddd;
	}			
	.selectfileareazone {
					width:600px; float:left; margin:30px 0 20px 0;
				}
					.selectfileareazone p {height:30px; font-size:17px; font-weight:bold;
								display:inline-block; width:510px; margin-bottom:10px;
					}
					#uploaded-image {width:600px; height:600px;
						  border:1px solid #e8e2e2; margin-bottom:20px;}
					#file1 {display:none;}
					.fileupload {
						display: inline-block; width:82px; height:24px; line-height:24px; font-size:14px;
						background-color:black; color: #fff; border-radius:3px; text-align:center;
						cursor: pointer;
					}
</style>	
</head>
<%@ include file="../header/shopheader.jsp"%>
<body>
<div id="app">
	<div class="areawrap">
		<div class="selectarea">
			<div class="contentsarea">
				<div>
					<input v-model="tag" type="text" name="productTag" placeholder="관련상품을 태그해주세요">
				</div>
				<div>
					<textarea  v-model="contents" placeholder="내용을 입력해주세요 요즘 트렌드는 짧게 적는거 아시죠?">
					</textarea>
				</div>
				<button @click="fnAddStyle" class="btn">등록</button>
			</div>
		</div>
		<div class="selectfileareazone">
			<p>이미지 파일선택</p>
			<label for="file1" class="fileupload">파일선택</label>
			<div class="selectfilearea">
				<img id="uploaded-image" src="" alt="">
				<input type="file" id="file1" name="file1" accept=".gif, .jpg, .png">
			</div>
		</div>
	</div>
	
	
	
</div>
</body>
<%@ include file="../header/footer.jsp"%>
</html>
<script>
console.log(Vue);
Vue.use(Vue2Editor);
const VueEditor = Vue2Editor.VueEditor;
var app = new Vue({
	el : '#app',
	data : {
		uId : "${sessionId}",
		nickname : "${sessionNickname}",
		contents : "",
		tag : "",
	},// data
	methods : {
		// 내용 및 태그상품정보 업로드
		fnAddStyle : function(){
            var self = this;
            var nparmap = {contents : self.contents, uId : self.uId, nickname : self.nickname, tag : self.tag};
            $.ajax({
                url : "/addStyle.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	 console.log(data.idx);
                	 var form = new FormData();
                	 form.append( "file1",  $("#file1")[0].files[0] );
		       	     form.append( "idx",  data.idx); // pk
		           	 self.upload(form);
                	alert("등록 완료");
                }
            }); 
        },
        // 스타일 사진 업로드
        upload: function(form) {
		    var self = this;
		    $.ajax({
		        url: "addStyleImg.dox",
		        type: "POST",
		        processData: false,
		        contentType: false,
		        data: form,
		        success:function(response) { 
		           }
		    });
		},
	}, // methods
	created : function() {
		var self = this;
	}// created
});
</script>