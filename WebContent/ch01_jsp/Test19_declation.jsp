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

.aa {
	font-size: 40px;
}
</style>
<script>
	// 스크립트
</script>
</head>
<body>
	<!-- 내용 -->

	<%!public int add(int a, int b) {
		int s = a + b;
		return s;
	}

	public int subtract(int a, int b) {
		int s = a - b;
		return s;
	}

	public int multiple(int a, int b) {
		int s = a * b;
		return s;
	}%>

	<%
		int a = 30;
		int b = 20;
	%>


	<div class="aa">
		<%=a%>
		+ <%=b%></div>
	<div class="aa"><%=add(30, 20)%></div>
	<br>
	<div class="aa"><%=a%>
		- <%=b%></div>
	<div class="aa">
		<%=subtract(30, 20)%></div>
	<br>
	<div class="aa"><%=a%>
		* <%=b%></div>
	<div class="aa"><%=multiple(30, 20)%></div>
	<br>



</body>

</html>