<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="UTF-8">
<title>포인트충전</title>

<style>
	* {margin:0; padding:0;}

	li {
		list-style:none;
		}
	
	
	a {	
		text-decoration:none;
		color: inherit;
		}
	
	.mypagewrap {
		width:1200px; margin:0 auto;
		}
	.myinfonav {
		float:left; width:200px; color:#000;
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
	
	.editlogininfo{
		width:1000px; float:left;
		}        
	.edithead {
		padding-bottom:15px; border-bottom:3px solid #000;
		}
	.loginedit {
		width:480px; padding-top:10px;
	}

		.editinner h4 {
			margin-bottom:25px; margin-top:30px;
		}
		.editebox {
			width:500px; height:55px; border-bottom: 1px solid #e9e9e9;
		}

		.editebox h6 {
			color:#ccc; margin-top:25px;
		}

		.editebox .editbtn{
			background-color: #fff;width:50px; height:30px;	
			color:#777; font-size: 15px;	
		}
		.editinput {
			border:0 solid; font-size:20px; width:421px; height:30px; text-align:right;
		}

		.agreeelement {
			margin-top:30px; height: 50px; margin-top:50px;
		}
			.agreeelement p {
				display: inline-block; width:250px; color:#555;
			}
			.agreeelement div{
				display: inline-block; color:#555;
			}
			.agreeelement div label{
				margin:0 10px 0 20px;
			}

			.resignbtn {
				border:0px solid #e9e9e9; background-color: #fff; border-radius: 10px; width:70px; height:30px;	
				color:#777; font-size: 15px; margin-top: 30px; text-decoration-line: underline;
			}	
			.spanBut button{
				float: right;
				cursor: pointer;
			}
			

html, body{
    width: 100%;
    height: 100%;
    padding: 0;
    margin: 0;
    
}
.paykindselect{
margin-top : 20px;
margin-bottom:30px;
padding-top : 10px;

}
.banknum{
margin-right:100px;
}
input[type="radio"]{
margin-right : 5px;

}
.paymentbtn{
margin-bottom:15px;
}
.paymentbtn button{
border: 1px solid #e9e9e9;
    background-color: #fff;
    border-radius: 10px;
    width: 50px;
    height: 30px;
    color: #777;
    font-size: 12px;
    width:100px;
    background-color:white;
    cursor:pointer;
}
.cardkindselect{
margin-top:15px;
}

.carding {
display: none;
}

input[type="text"]{
outline:none;
}

</style>

</head>
<%@ include file="../header/header1.jsp"%>
<%@ include file="../header/header2.jsp"%>
<body>
	<div id="app">
	<div class="mypagewrap">
		<nav class="myinfonav">
		<div class="myinfo">
			<h2><a href="mypage.do">마이 페이지</a></h2>
			<h3>쇼핑 정보</h3>
			<ul>
				<li><a href="mypagebuylist.do">구매 내역</a></li>
				<li><a href="mypageselllist.do">판매 내역</a></li>
				<li><a href="#">보관 판매</a></li>
				<li><a href="#">관심 상품</a></li>
			</ul>
		</div>
		<div class="myinfo">
			<h3>내 정보</h3>
			<ul>
				<li><a href="mypagelogininfo.do">로그인 정보</a></li>
				<li><a href="#">프로필 관리</a></li>
				<li><a href="#">주소록</a></li>
				<li><a href="#">결제 정보</a></li>
				<li><a href="#">판매 정산 계좌</a></li>
				<li><a href="#">현금영수증 정보</a></li>
				<li style="font-weight:bold; color:#FF6868"><a href="mypageaddpoint.do">포인트 충전</a></li>
			</ul>
		</div>
		</nav>
		<div class="editlogininfo">
			<div class="edithead">
				<h2>포인트 충전</h2>
			</div>
				<div class="loginedit">				
					<div class="editinner">
						<h4>내 포인트 0P</h4>  <!-- user 테이블 point 가져오기 -->
						<div class="editebox spanBut">
						<span class="editbtn">충전금액</span>
								<input type="text" class="editinput" placeholder="0" id="number" v-model="userPoint">P
							
						</div>
					<div><h6 style="margin-top:10px;">충전 후 금액</h6> 0P</div> <!-- 유저 포인트 + 인풋 입력 값 -->

					</div>

<div class="paykindselect">
<div style="margin-bottom:15px;"><h4>결제방식</h4></div>
<input type="radio" name="payselect" onclick="showBanking()" checked>계좌이체
<input type="radio" name="payselect" onclick="showCarding()">카드결제/페이결제
</div>

<div class="banking">
<div style="margin-top:15px;"><h4>전용계좌</h4></div>
<div style="margin-top:5px;"><h6>농협</h6></div>
<div><input type="text" value="123-1234-1234"
style="text-align:center; border:0; border-bottom:1px solid #eee; display:inline-block;">
<h5 style="margin-top:5px; display:inline-block;">예금주:(주)크레용</h5></div>

<div>*<input type="text" placeholder="예금자 성명"
style="border:0; border-bottom:1px solid #eee;
display:inline-block; margin-top:15px; width:20%; height:30px; font-size:15px; margin-bottom:15px;">


</div>

				</div>
			
		</div>
		<div class="paymentbtn">
			<!-- 계좌이체버튼 -->
			<div class="paymentbtn">
                <!-- 계좌이체 버튼 -->
                <button id="bankingButton">결제신청</button>
            </div>
			<!-- 카드결제버튼 -->
			<div class="carding">
                <button @click="requestPay" id="cardingButton">결제하기</button>
            </div>
			</div>
		</div>
	

   
 </div>
</div> <!-- app -->
</body>
<%@ include file="../header/footer.jsp"%>
</html>
<script>
/* 카드결제API */
const userCode = "imp54148822";
IMP.init(userCode);

var app = new Vue({
	el : '#app',
	data : {
		info : {},
		userPoint : "",
		uId : "${sessionId}"
	},// data
	methods : {
		
		fnUserInfo : function(){
            var self = this;
            var nparmap = {uId : self.uId};
            $.ajax({
                url : "/user/selectId.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.info = data.info;
                	console.log(self.info.userNickname);
                }
            }); 
        },
        // 결제 api
		requestPay : function(){
			var self = this;
			console.log(self.userPoint);
			 IMP.request_pay({
			    pg: "nice",
			    pay_method: "card",
			    merchant_uid: "test_llljwi7x",
			    name: "포인트 결제",
			    buyer_name: self.info.userNickname,
			    amount: self.userPoint,
			}, function (rsp) { // callback
		   	      if (rsp.success) { 
			   	        // 결제 성공 시
			   	        alert("실패"+amount);
		   	    		console.log(amount);
			   	      } else {
			   	    	 
			   	    	alert("실패");
			   	    	  // 결제 실패 시
			   	      } 
			  }); 
			 
		},
		// 포인트 입력
		fnPayment : function(){
			
		},
	}, // methods
	created : function() {
		var self = this;
		self.fnUserInfo();
	}// created
});




/* 포인트 3자리자동반점 */
 /* const input = document.querySelector('#number');
input.addEventListener('keyup', function(e) {
  let value = e.target.value;
  value = Number(value.replaceAll(',', ''));
  if(isNaN(value)) {
    input.value = 0;
  }else {
    const formatValue = value.toLocaleString('ko-KR');
    input.value = formatValue;
  }
  console.log();
})  */

function showBanking() {
    document.querySelector('.banking').style.display = 'block';
    document.querySelector('.carding').style.display = 'none';
    document.querySelector('#bankingButton').style.display = 'block';
    document.querySelector('#cardingButton').style.display = 'none';
    
}

function showCarding() {
    document.querySelector('.carding').style.display = 'block';
    document.querySelector('.banking').style.display = 'none';
    document.querySelector('#bankingButton').style.display = 'none';
    document.querySelector('#cardingButton').style.display = 'block';
}
</script>