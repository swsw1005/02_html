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
		Calendar cal = Calendar.getInstance();

		int a1 = cal.get(Calendar.YEAR);
		int a2 = cal.get(Calendar.MONTH) + 1;
		int a3 = cal.get(Calendar.DATE);
	%>

	<h4>오늘은</h4>
	<h4><%=a1%>년</h4>
	<h4><%=a2%>월</h4>
	<h4><%=a3%>일</h4>




</body>

</html>