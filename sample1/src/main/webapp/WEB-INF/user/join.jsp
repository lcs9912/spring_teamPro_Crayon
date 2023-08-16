<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/2c370f498b.js" crossorigin="anonymous"></script>
	<script src="../js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<meta charset="UTF-8">
	<title>회원가입페이지</title>
<style>
body {
	background-color: #white;
	margin: 0;
	padding: 0;
}
.logo img {
	padding-bottom: 30px;
	padding-top: 0px; 
}

h1 {
	text-align: center;
	padding: 20px 0;
	color: #333;
}

table {
table-layout: fixed;
	width: 800px;
	margin: 0 auto;
	padding: 20px;

	background-color: #white;
border-radius: 30px;
}

table td {
	padding-top: 10px;
	padding-bottom: 10px;
}

th, td {

	border-collapse: collapse;
}

th {
border-radius: 30px;
	background-color: #eee;
	padding : 10px;
	width : 30%;
}
button.btnhover{
	width: 20%;
	padding: 10px;
	background-color: #8A8484;
	color: #fff;
	border: none;
	border-radius: 5px;
	margin-top : 20px;
	margin-bottom : 20px;
}
button.btnhover:hover {
	background-color: #262626;
}
input[type="text"], input[type="password"], select {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}
input[type="checkbox"]{
width: 35px; 
height: 15px; 
}
.styled-checkbox{
font-size : 25px;
margin-top : 30px;
}
input[type="radio"] {
margin-right: 5px;
}

input[type="submit"] {
	width: 30%;
	padding: 10px;
	background-color: #8A8484;
	color: #fff;
	border: none;
	border-radius: 5px;
}

input[type="submit"]:hover {
	background-color: #262626;
}

#username {
	width: 70%;
}

#idcheckbtn {
	width: 25%;
	height: 30%;
}

#year {
	width: 32%;
}

#month {
	width: 32%;
}

#day {
	width: 32%;
}

.aaButton{
background-color: white;
border : none;
color : #9e9e9e;
text-decoration: underline;
cursor: pointer;
padding-top : 10px;
}
.bb label{
padding-top : 10px;
}
.allCheckbox{
text-align:center;

}
.btnwhere{
text-align: center;

}
.styled-checkbox{
font-size : 25px;
margin-top : 30px;
}
th{
height : 80px;
}
.requiredCheckbox,
.selectcheckbox{
font-weight: bold;
font-size : 20px;
text-align:center;
}
#idcheckbtn{
	width: 29%;
	padding: 10px;
	background-color: #8A8484;
	color: #fff;
	border: none;
	border-radius: 5px;
	
}
#idcheckbtn:hover{
	background-color: #262626;
}
.idsection{
width : 1200px;
display: inline-block;
margin-left : 17%;
border: 1px solid black;
padding : 10px;
border-radius: 30px;
}

tbody{
border: 1px solid black;
}
.selectgender{
text-align:center;
}

#pwdhint{
color: #8A8484;
text-align:center;
}
</style>

</head>
<%@ include file="../header/header1.jsp"%>
<%@ include file="../header/header2.jsp"%>
<%-- <%@ include file="../logo.jsp"%> --%>
<hr>
<body>
<div id="app">
	<h1>회원가입</h1>
<section class="idsection">
		<table>
<tbody>
			<tr>
		
				<td><input type="text" id="username" name="username" v-model="user.userId" placeholder="아이디">
					<button id="idcheckbtn" @click="fnCheck">중복확인</button>
				</td>
			</tr>
			
			</section>
			
			<tr class="pwdmsg">

				<td>
				<input type="password" id="password" name="password" v-model="user.userPwd1" @keyup="fnPwdCheck" placeholder="비밀번호는 영문 대소문자와 숫자 포함 8자리 이상이어야 합니다.">
				<span style="color:red;" v-if="user.userPwd1 != ''">{{message}}</span>
				</td>
			</tr>
			<tr>

				<td>
					<input type="password" id="password2" name="password2" v-model="user.userPwd2" placeholder="비밀번호는 영문 대소문자와 숫자 포함 8자리 이상이어야 합니다.">
				</td>
			</tr>
			<tr class="hintinput">
				<td>
					<select name="language" id="pwdhint"class="passwordhint" name="passwordhint" v-model="user.userPwdHint">
				<option disabled selected>비밀번호 찾기 질문</option>
				  <option value="1">가장 좋아하는 동물은?</option>
				  <option value="2">가장 좋아하는 음식은?</option>
				  <option value="3">가장 좋아하는 색은?</option>
				  <option value="4">가장 좋아하는 운동선수이름은?</option>
				  <option value="5">자신의 취미나 특기는?</option>
				  <option value="6">가장 좋아하는 운동은?</option>
				  <option value="7">가장 좋아하는 티비프로그램은?</option>
				  <option value="8">가장 좋아하는 책은?</option>
				  <option value="9">가장 좋아하는 영화는?</option>
					</select>
				</td>
			</tr>
			<tr>

				<td>
					<input type="text" class="passwordhint" name="passwordhint" v-model="user.userPwdAnswer" placeholder="비밀번호 찾기 힌트 정답">
				</td>
			</tr>
			<tr class="namemsg">

				<td>
					<input type="text" id="name" name="name" v-model="user.userName" placeholder="이름">
				</td>
			</tr>
			
			<tr class="selectgender">

				<td><input type="radio" id="male" name="gender" value="남성" v-model="user.userGender" >
					<label for="male">남성</label>
					<input type="radio" id="female" name="gender" value="여성" v-model="user.userGender" >
					<label for="female">여성</label>
				</td>
			</tr>
			<tr>

				<td>
					<input type="text" id="phone" name="phone" v-model="user.userPhone" placeholder="휴대전화">
				</td>
			</tr>
			<tr>

				<td>
					<input type="text" id="email" name="email" v-model="user.userEmail" placeholder="이메일">
				</td>
			</tr>
			<tr>

		</tr>	
		</tbody>
		

		</table>
		
<div class="allCheckbox">

<div class="requiredCheckbox">
    <input type="checkbox" class="styled-checkbox" v-model="allAaChecked">
    <label class="checkbox-label" id="requiredCheckboxLabel">[필수] 만 14세 이상이며 모두 동의합니다.
    <i class="fa-solid fa-plus" style="cursor: pointer;"></i></label>
</div>
<div class="aa" id="aaElement" hidden>
    <label><input type="checkbox" class="aaCheckbox" v-model="aaChecked[0]">이용약관 동의</label>
    <button class="aaButton" onclick="openPopup('insertcontents.do')">내용보기</button><br>
    <label><input type="checkbox" class="aaCheckbox" v-model="aaChecked[1]">개인정보 수집 및 이용 동의</label>
    <button class="aaButton" onclick="openPopup('insertcontents2.do')">내용보기</button>
</div>

<div class="selectcheckbox">
    <input type="checkbox" class="styled-checkbox" v-model="allAaChecked2">
    <label class="checkbox-label" id="selectCheckboxLabel">[선택] 광고성 정보 수신에 모두 동의합니다.
    <i class="fa-solid fa-plus" style="cursor: pointer;"></i></label>
</div>

<div class="bb" id="bbElement" hidden>
    <label><input type="checkbox" class="bbCheckbox" v-model="bbChecked[0]">앱 푸시</label><br>
    <label><input type="checkbox" class="bbCheckbox" v-model="bbChecked[1]">문자 메세지</label><br>
    <label><input type="checkbox" class="bbCheckbox" v-model="bbChecked[2]">이메일</label>
</div>
</div>

		<div class="btnwhere">
		<td colspan="2" style="text-align: center;">
		<button @click="fnJoin" class="btnhover">가입</button>
		<a href="login.do" ><button class="btnhover">취소</button></a>
		</td>
		</div>
</div>
</body>
<%@ include file="../header/footer.jsp"%>
</html>
<script>

function openPopup(url) {
    const popup = window.open(url, 'popupWindow', 'width=800,height=600,scrollbars=yes');
    popup.focus();
}
document.addEventListener("DOMContentLoaded", function() {
    const requiredCheckboxLabel = document.getElementById("requiredCheckboxLabel");
    const requiredCheckboxIcons = requiredCheckboxLabel.querySelectorAll(".fa-solid");
    const aaElement = document.querySelector(".aa");

    requiredCheckboxLabel.addEventListener("click", function() {
        requiredCheckboxIcons.forEach(icon => {
            icon.classList.toggle("fa-plus");
            icon.classList.toggle("fa-minus");
        });

        aaElement.style.display = aaElement.style.display === "inline" ? "none" : "inline";
    });
});

document.addEventListener("DOMContentLoaded", function() {
    const pwdHintSelect = document.getElementById("pwdhint");
    pwdHintSelect.selectedIndex = 0;
});
document.addEventListener("DOMContentLoaded", function() {
    const selectCheckboxLabel = document.getElementById("selectCheckboxLabel");
    const selectCheckboxIcons = selectCheckboxLabel.querySelectorAll(".fa-solid");
    const bbElement = document.querySelector(".bb");

    selectCheckboxLabel.addEventListener("click", function() {
        selectCheckboxIcons.forEach(icon => {
            icon.classList.toggle("fa-plus");
            icon.classList.toggle("fa-minus");
        });

        bbElement.style.display = bbElement.style.display === "inline" ? "none" : "inline";
    });
});

var app = new Vue({
	el : '#app',
	data : {
		info : {},
		user : {
			userId : "",
			userPwd1 : "",
			userPwd2 : "",
			userPwdHint : "",
			userPwdAnswer : "",
			userName : "",
			userGender : "",
			userPhone : "",
			userEmail : ""
			},
			 allAaChecked: false,
			 aaChecked: [false, false],
			 allAaChecked2: false,
			 bbChecked: [false, false, false],
		joinFlg : false,
		
		message : ""
	},// data
	watch: {
	    allAaChecked: function (newValue) {
	        this.aaChecked = newValue ? [true, true] : [false, false];
	    },
	    allAaChecked2: function (newValue) {
	        this.bbChecked = newValue ? [true, true, true] : [false, false, false];
	    }
	},
	fnJoin: function () {
	    var self = this;
	    if (!self.allAaChecked) {
	        alert("필수 동의사항에 모두 동의해주세요.");
	        return;
	    }
	},
	methods : {
		fnJoin : function(){
			var self = this;
			if(self.user.userId == ""){
				alert("아이디를 입력해주세요");
				
				return;
			}
			if(self.user.userPwd1 == ""){
				alert("패스워드를 입력해주세요");
				return;
			}
			if(self.user.userPwd1 != self.user.userPwd2){
				alert("패스워드를 확인해주세요");
				return;
			}
			if(self.user.userPwdHint == ""){
				alert("비밀번호찾기 힌트를 입력해주세요");
				return;
			}
			if(self.user.userPwdAnswer == ""){
				alert("비밀번호찾기 힌트 정답을 입력해주세요");
				return;
			}
			if(self.user.userName == ""){
				alert("이름을 입력해주세요");
				return;
			}
			if(self.user.userGender == ""){
				alert("성별을 입력해주세요");
				return;
			}
			if(self.user.userPhone == ""){
				alert("핸드폰을 입력해주세요");
				return;
			}
			var self = this;
		    if (!self.allAaChecked) {
		        alert("필수 동의사항에 모두 동의해주세요.");
		        return;
		    }
		 	var nparmap = self.user;
            $.ajax({
                url : "/user/insert.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	alert("축하드립니다! 회원가입이 완료되었습니다!");
                	location.href ="/login.do";
                }
            });
		},
		fnCheck : function(){
			var self = this;
			var nparmap = {uId : self.user.userId};
			console.log(self.user.userId);
			$.ajax({
                url : "/user/selectId.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	console.log(data.info);
                	if(data.info != undefined){
                		alert("중복된 아이디가 있습니다");
                	} else {
                		alert("사용 가능한 아이디입니다.");
                		self.joinFlg = true;
                	}  
                }
            });
		},
		fnPwdCheck : function() {
			var self = this;
			/* var userPwd = self.user.userPwd1; */
			var regex = /^[a-zA-Z0-9]{8,16}$/;
			if(!regex.test(self.user.userPwd1)){
				self.message = "비밀번호는 영문 대소문자와 숫자 포함 8자리 이상이어야 합니다.";
			}else {
				self.message = "";
			}
		}
		
	}, // methods
	created : function() {
		var self = this;
		
	}// created
}); 
</script>