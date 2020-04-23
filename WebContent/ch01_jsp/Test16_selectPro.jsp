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

	<%
		Enumeration en = request.getParameterNames();

		out.println("<ul>");
		while (en.hasMoreElements()) {
			String name = (String) en.nextElement();
			String vals[] = request.getParameterValues(name);
			out.println("<li>" + name);

			for (int i = 0; i < vals.length; i++) {
				out.println(vals[i]);
			}

			out.println("</li>");
		}

		out.println("</ul>");
	%>


</body>

</html>