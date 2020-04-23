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
</style>
<script>
	// 스크립트
</script>
</head>
<body>
	<!-- 내용 -->

	<%
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
	%>


	<%
		out.println("이름:" + name + "<br>");
		out.println("ID:" + id + "<br>");
		out.println("PWD:" + pwd + "<br>");
	%>
	<br>



</body>

</html>