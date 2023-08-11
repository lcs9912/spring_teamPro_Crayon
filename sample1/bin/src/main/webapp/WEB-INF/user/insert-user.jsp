<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
<%@ include file="../header.jsp"%>
<%@ include file="../logo.jsp"%>
<hr>
<body>

	<h1>회원가입</h1>
	<form action="#" method="post">
		<table>
			<tr>
				<th>아이디*</th>
				<td><input type="text" id="username" name="username" required>
					<input type="submit" id="idcheckbtn" value="중복확인"></td>
			</tr>
			<tr>
				<th>비밀번호*</th>
				<td><input type="password" id="password" name="password"
					required></td>
			</tr>
			<tr>
				<th>비밀번호 확인*</th>
				<td><input type="password" id="password2" name="password2"
					required></td>
			</tr>
			<tr>
				<th>이름*</th>
				<td><input type="text" id="name" name="name" required></td>
			</tr>
			<tr>
				<th>성별*</th>
				<td><input type="radio" id="male" name="gender" value="남성"
					required> <label for="male">남성</label>
					<input type="radio" id="female" name="gender" value="여성" required> <label
					for="female">여성</label></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><select name="year" id="year">
						<option value="">년</option>
				</select> <select name="month" id="month">
						<option value="">월</option>
				</select> <select name="day" id="day">
						<option value="">일</option>
				</select></td>
			</tr>

			<tr>
				<th>휴대전화</th>
				<td><input type="text" id="phone" name="phone"></td>
			</tr>

			<tr>
				<th>이메일*</th>
				<td><input type="text" id="email" name="email" required></td>
			</tr>

			<tr>
				<th>뉴스레터 서비스*</th>
				<td><input type="radio" id="newsletterYes" name="newsletter"
					value="수신" required> <label for="newsletterYes">수신</label>
					<input type="radio" id="newsletterNo" name="newsletter"
					value="수신하지않음" required> <label for="newsletterNo">수신하지
						않음</label></td>
			</tr>
			<tr>

				<th>SMS 수신여부*</th>
				<td><input type="radio" id="smsYes" name="sms" value="수신"
					required> <label for="smsYes">수신</label> <input
					type="radio" id="smsNo" name="sms" value="수신하지않음" required>
					<label for="smsNo">수신하지 않음</label></td>
			</tr>
			<tr>

				<th>이메일 수신여부*</th>
				<td><input type="radio" id="emailYes" name="email" value="수신"
					required> <label for="emailYes">수신</label> <input
					type="radio" id="emailNo" name="email" value="수신하지않음" required>
					<label for="emailNo">수신하지 않음</label></td>
			</tr>

			<tr>
				<td colspan="2" style="text-align: center;"><input
					type="submit" value="가입"> <input type="submit" value="취소">
				</td>
			</tr>
		</table>
	</form>
</body>
<%@ include file="../footer.jsp"%>
</html>