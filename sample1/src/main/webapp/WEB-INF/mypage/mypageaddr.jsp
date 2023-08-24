<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 주소록 페이지</title>

<style>
* {margin:0; padding:0;}

table {
	border: 0px solid black;
	border-collapse: collapse;
	text-align: center;
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

	.myaddrwrap {
		width:1200px; margin:50px auto;
		}
	.addrnav {
		float:left; width:190px; color:#000; margin-right:5px; margin-bottom:100px;
		}
		
	.myinfo h2{
			margin-bottom:20px;
		}	
	
		
	.myinfo h3{
			margin:30px 0;
		}	
		
	.myinfo ul li{
		margin:10px 0;
		}
	
		
	/*주소록 영역 CSS 시작*/
	.addrcontainer {float:left; width:1000px; height:380px; }
			.addrhead {margin-top:10px;}
			.addrhead h2{
	    		width:100px; display:inline-block;
	     	}
	     	.addrhead .addrbtn {float:right; border:1px solid #333;}
	     	.addrlist {
	     		clear:both; height:380px; margin:0; text-align:center; line-height:20px;
				padding:100px 0;
			}
	     	.addrlist p{display:inline-block; width:1000px; height:20px; 
				font-size:12px; color:#888; text-align: center; margin-bottom:30px;
			}
			.addrbtn{
				border:1px solid #e9e9e9; border-radius:10px; padding:8px;
				margin-left:5px; font-size:12px; color:#555; background:#fff;
			}	
			
		/* 팝업 레이어 */
			.popup-overlay {
				display: none;
			   	position: fixed;
			  	top: 0;	left: 0;
			  	width: 50%; height: 50%;
			   	background-color: rgba(0, 0, 0, 0.5);
			  	z-index: 1000;
			} 
			
			.popup-content {
			    position: absolute;
			    top: 50%; left: 50%;
			    transform: translate(-50%, -50%);
			    background-color: #fff;
			    padding: 20px; border-radius: 10px;
			    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
			}
			
			#popupTitleBox{
				background-color: black;
			}
			
			#popupTitleBox i{
				cursor: pointer; color: white;
			}
			#popupTitle{
				color: white; font-weight: bold;
			}
			html, body{
			    width: 100%; height: 100%;
			    padding: 0; margin: 0;			    
			}
			
			body{
			    /* background-image: url('./bg.jpg'); */ /* 배경이미지 */
			    background-repeat: no-repeat; background-size: cover;
			    background-position: center;		    
			}
			body.dimmed::before{
			    content: '';
			    position: fixed; left: 0;
			    right: 0; top: 0;
			    bottom: 0; background-color: rgba(0, 0, 0, 0.5); /* 배경을 불투명하게 만듭니다 */
			    z-index: 999; /* 레이어 팝업보다 뒤에 위치하도록 z-index 조정 */    			  
			}
			.popup {
			    z-index: 1; position: fixed;
			    top: 50%; left: 50%;
			    transform: translate(-50%,-50%);
			    min-width: 300px; max-width: 600px;
			    background-color: #fff; border-radius: 15px;
			    box-shadow: 0 2px 55px -25px rgb(0 0 0 / 100%);		    
			 }
			.popup > .title{
				border-radius: 15px 15px 0 0;
			    min-height: 40px; color: white;
			    background-color: #ccc; padding: 10px 15px;
			    box-sizing: border-box; font-weight: bold;
			    text-align: center;			
			}
			.popup > .content {
			    padding: 20px;
			    box-sizing: border-box;
			}
			
			.addrInput {
				width:500px; margin-top:20px;
			}
			.addrInput input{
				width:400px; height:30px; border:0px solid; border-bottom:1px solid #ccc; outline:none;
			}
			.popup > .cmd {
			    bottom: 0; min-height: 40px;
			    padding: 15px 15px; box-sizing: border-box;
			    border-radius: 0 0 15px 15px;
			    min-height: 40px; text-align: right;
			    width: 300px;
			}
			.cmd button {
			    border-radius: 8px; padding: 5px 10px;
			    border: 1px solid #aaa; width: 80px;
			    color: white; background-color: black;
			    font-weight: bold; cursor: pointer;
			    position: absolute;
			    top : 409px; left: 265px;
			}
			.cmd button:hover {
			    color: #fff; background-color: #000;
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
		#addrInput input{
			border: 1px solid;
		}
		
		button{
			cursor: pointer;
		}
		
		
 
/*주소록 영역 CSS 종료*/

</style>

</head>
<%@ include file="../header/shopheader.jsp"%>
<body>
<div id="app">
	<div class="myaddrwrap">
		<nav class="addrnav"><!--마이페이지 목록리스트 태그 시작-->
		<div class="myinfo">
			<h2><a href="mypage.do">마이 페이지</a></h2>
			<h3>쇼핑 정보</h3>
			<ul>
				<li><a href="/mypagebuylist.do">구매 내역</a></li>
				<li><a href="mypageselllist.do">판매 내역</a></li>				
				<li><a href="mypageproductinter.do">관심 상품</a></li>
			</ul>
		</div> 
		<div class="myinfo">
			<h3>내 정보</h3>
			<ul>
				<li><a href="mypagelogininfo.do">로그인 정보</a></li>
				<li><a href="mypageprofile.do">프로필 관리</a></li>
				<li style="font-weight:bold; color:#FF6868"><a href="mypageaddr.do">주소록</a></li>
				<li><a href="mypagepaylist.do">결제 정보</a></li>
				<li><a href="mypagebank.do">판매 정산 계좌</a></li>				
				<li><a href="mypageaddpoint.do">포인트 충전</a></li>
			</ul>
		</div>
		</nav><!--마이페이지 목록리스트 태그 종료-->

		<div class="addrcontainer"><!--프로필관리 태그영역 시작-->
			<div class="addrhead">
				<h2>주소록</h2>
				<button class="addrbtn" @click="fnpopup">+ 새 배송지 추가</a></button>
			</div>
			<div v-if='addrList == ""' class="addrlist">
				<p>배송지 정보가 없습니다.<br>
				새 배송지를 등록해주세요.</p>
				<button class="addrbtn" @click="fnpopup">+ 새 배송지 추가</a></button>
			</div>
			<div class="addrlist">
				<table>
					<tr v-for="item in addrList">
						<td>{{item.userName}}</td>
						<td>{{item.userAddr}}</td>
						<td>{{item.userDetailAddr}}</td>
						<td>{{item.userZipno}}</td>
						<td><button>수정</button></td>
						<td><button>삭제</button></td>
					</tr>
				</table>
			</div>
			</div>
			
		</div>
		
	
	<div class="popup popup-overlay" id="popupOverlay" >
        <div class="title">새 주소 추가<i class="fa-solid fa-x" id="closePopup"></i></div>
        <div class="content" style="text-align:center;">
        <!-- 이메일 변경 -->
     	<div class="addrInput">
         	<label>우편번호</label><input v-model="zipNo"><button @click="fnSearchAddr" >상세주소 찾기</button>
            <label>주소</label><input v-model="addr">
            <label>상세주소<input v-model="detailAddr"></label>
            <label><input type="checkbox">기본 배송지로 설정</label>
            <div class="cmd">
       			<button id="submitPopup" @click="fnSumbitPop">제출</button>          
        	</div>
        </div>
 		</div>
    </div>
</div>
</body>
<%@ include file="../header/footer.jsp"%>
</html>
<script>
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
	app.fnResult(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo);
} 
	var app = new Vue({
		el : '#app',
		data : {
			info : {},
			addrList : [],
			sessionId : "${sessionId}",
			addr : "",
			detailAddr : "",
			zipNo : "",
		},// data
		methods : {
			fnGetInfo : function() {
				var self = this;
				var param = {uId : self.sessionId};
				$.ajax({
					url : "/user/selectId.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						self.info = data.info;
						console.log(self.info);
						self.fnAddrList();
					}
				});
			},
			// 유저 주소 리스트 출력
			fnAddrList : function(){
				var self = this;
				var param = {uId : self.sessionId};
				$.ajax({
					url : "/user/searchAddr.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						self.addrList = data.addrList;
						console.log(self.addrList);
					}
				});
			},
			// 유저 주소 입력
			fnSumbitPop : function(){
				var self = this;
				var param = {uId : self.sessionId, addr : self.addr, detailAddr : self.detailAddr, zipNo : self.zipNo};
				$.ajax({
					url : "/user/insertAddr.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						alert("완료!");
						location.reload();
					}
				});
			},
			// 주소 팝업 입력
			fnSearchAddr : function(){
				var self = this;
	    		var option = "width = 500, height = 500, top = 100, left = 200, location = no"
	    		window.open("addr.do", "test", option);
			},
			// 주소 팝업 돌아오는 곳
			fnResult : function(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
	    		var self = this;
	    		self.addr = roadAddrPart1; // 도로명 주소
	    		self.detailAddr = addrDetail; // 상세주소 
	    		self.zipNo = zipNo;
	    		console.log(self.addr);
	    		console.log(self.zipNo);
	    		
	    		// 콘솔 통해 각 변수 값 찍어보고 필요한거 가져다 쓰면 됩니다.
	    		// console.log(roadAddrPart2); // 전체 주소
	    		//console.log(roadAddrPart1); // 도로명 주소
	    		console.log(addrDetail); // 상세주소
	    		//console.log(engAddr);   // 영어주소
	    		
	    		
	    		
	    	},
			// 레이어팝업창 띄우기
			fnpopup : function(keyword){
				var self = this;
				self.keyword = keyword;
				self.pwdFlg = false;
				document.getElementById("popupOverlay").style.display = "block";
			},
			

		}, // methods
		created : function() {
			var self = this;
			if(self.sessionId !=""){
				self.fnGetInfo();
			}else{
				alert("로그인 이후 이용이 가능합니다");
				location.href="login.do";
			}
		},// created
	});
	 // 레이어 팝업창 닫기
	document.getElementById("closePopup").addEventListener("click", function() {
		document.getElementById("popupOverlay").style.display = "none";
	});
</script>