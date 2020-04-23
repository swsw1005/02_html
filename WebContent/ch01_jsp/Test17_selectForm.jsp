<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%!//변수 선언%>

<%
	//자바 구문
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>Document</title>
<style>
* {
	margin: 0px;
	padding: 0px;
}
</style>
<script>
	// 스크립트
</script>
</head>
<body>
	<form method="post" action="Test17_selectPro.jsp">
		<h4>이름:</h4>
		<input type="text" name="name" size="30"><br>
		<h4>주소:</h4>
		<input type="text" name="addr" size="50"><br>
		<h4>학번:</h4>
		<input type="text" name="studentNum" size="30"><br> <br>

		<h4>성별</h4>
		<br> <input type="radio" name="gender" value="man" checked>남자<br>
		<input type="radio" name="gender" value="woman">여자<br> <br>

		<h4>전공</h4>
		<br> <select name="major">
			<option value="국문학과">국문학과</option>
			<option value="영문학과">영문학과</option>
			<option value="소프트웨어과">소프트웨어과</option>
			<option value="자동차과">자동차과</option>
			<option value="신소재공학과">신소재공학과</option>
			<option value="호텔조리과">호텔조리과</option>
			<option value="디자인과">디자인과</option>
		</select> <br>
		<br> <input type="submit" value="전송"> <input type="reset"
			value="취소">
	</form>
</body>

</html>