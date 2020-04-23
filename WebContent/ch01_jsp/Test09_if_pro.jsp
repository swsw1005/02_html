<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>


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

	<%
	String color = request.getParameter("color");
	String msg = "";%>

	<%
		if (color.equals("blue")) {
			msg = "청축";
		} else if (color.equals("green")) {
			msg = "녹축";
		} else if (color.equals("red")) {
			msg = "적축";
		} else if (color.equals("brown")) {
			msg = "갈축";
		} else if (color.equals("yellow")) {
			msg = "황축";
		} else if (color.equals("black")) {
			msg = "흑축";
		}
	%>
	
	<h1> <%= msg %></h1>


</body>

</html>