<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
	width: 800px;
	margin: 0 auto;
	padding: 20px;
	background-color: #white;
	border-radius: 10px;
	border: 1px solid #black;
}

table td {
	padding: 10px;
}

table, th, td {
	border: 1px solid #262626;
	border-collapse: collapse;
}

th {
	background-color: #eee;
}

input[type="text"], input[type="password"], select {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
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
</style>

</head>
<%@ include file="../header1.jsp"%>
<%@ include file="../header2.jsp"%>
<%-- <%@ include file="../logo.jsp"%> --%>
<hr>
<body>
<div id="app">
	<h1>회원가입</h1>
		<table>
			<tr>
				<th>아이디*</th>
				<td><input type="text" id="username" name="username" v-model="user.userId" >
					<button id="idcheckbtn" @click="fnCheck">중복확인</button>
				</td>
			</tr>
			<tr>
				<th>비밀번호*</th>
				<td>
				<input type="password" id="password" name="password" v-model="user.userPwd1" @keyup="fnPwdCheck">
				<span style="color:red;" v-if="user.userPwd1 != ''">{{message}}</span>
				</td>
			</tr>
			<tr>
				<th>비밀번호 확인*</th>
				<td>
					<input type="password" id="password2" name="password2" v-model="user.userPwd2" >
				</td>
			</tr>
			<tr>
				<th>비밀번호 찾기 힌트</th>
				<td>
					<input type="text" class="passwordhint" name="passwordhint" v-model="user.userPwdHint">
					<!-- pwd 힌트랑 정답 id 이름이 같다고 콘솔창에서 주위문구 뜨길래 class 로 바궜음  -->
				</td>
			</tr>
			<tr>
				<th>비밀번호 찾기 힌트 정답</th>
				<td>
					<input type="text" class="passwordhint" name="passwordhint" v-model="user.userPwdAnswer">
				</td>
			</tr>
			<tr>
				<th>이름*</th>
				<td>
					<input type="text" id="name" name="name" v-model="user.userName" >
				</td>
			</tr>
			<tr>
				<th>성별*</th>
				<td><input type="radio" id="male" name="gender" value="남성" v-model="user.userGender" >
					<label for="male">남성</label>
					<input type="radio" id="female" name="gender" value="여성" v-model="user.userGender" >
					<label for="female">여성</label>
				</td>
			</tr>
			<tr>
				<th>휴대전화</th>
				<td>
					<input type="text" id="phone" name="phone" v-model="user.userPhone">
				</td>
			</tr>
			<tr>
				<th>이메일*</th>
				<td>
					<input type="text" id="email" name="email" v-model="user.userEmail">
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;">
					<button @click="fnJoin">가입</button>
					<button>취소</button>
					<!-- <input type="submit" value="가입">
					<input type="submit" value="취소"> -->
				</td>
			</tr>
		</table>
</div>
</body>
<%@ include file="../footer.jsp"%>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
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
		joinFlg : false,
		message : ""
	},// data
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
            $.ajax({
                url : "/user/selectId.dox",
                dataType:"json",
                type : "POST",
                data : nparmap,
                success : function(data) { 
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