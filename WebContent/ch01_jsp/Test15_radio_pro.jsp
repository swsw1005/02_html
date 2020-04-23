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

* {
	font-size: larger;
}
</style>
<script>
	// 스크립트
</script>
</head>
<body>
	<!-- 내용 -->

	<%
		Enumeration en = request.getParameterNames();

		while (en.hasMoreElements()) {
			String name = (String) en.nextElement();
			String val = request.getParameter(name);
			out.println("<li>");
			out.println(name + " : " + val);
			out.println("</li>");
		}
	%>


</body>

</html>