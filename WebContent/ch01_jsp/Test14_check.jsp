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
	<!-- 내용 -->

	<form action="Test14_pro.jsp" method="post">
		<p>이름</p>
		<input type="text" name="name" size="30"><br>
		<p>주소</p>
		<input type="text" name="addr" size="70"><br> <br> <input
			type="checkbox" name="fruit" value="사과"> 사과<br> <input
			type="checkbox" name="fruit" value="감"> 감<br> <input
			type="checkbox" name="fruit" value="밤"> 밤 <br> <input
			type="checkbox" name="fruit" value="배"> 배 <br> <input
			type="checkbox" name="fruit" value="딸기"> 딸기 <br> <input
			type="checkbox" name="fruit" value="수박"> 수박<br> <input
			type="checkbox" name="fruit" value="귤"> 귤 <br> <br>
		<input type="submit" value="post">

	</form>


</body>

</html>