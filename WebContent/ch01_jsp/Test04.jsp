<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page language="java"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>test04</title>
<style>
</style>
<script>
// 스크립트 
</script>
</head>

<body>
	<font color=blue size=5> <a>오늘 날짜 출력 예제 </a><br> <%
			java.util.Date date=new java.util.Date();
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss a EEEE");
			%> <%= sdf.format(date)%>
	</font>
</body>
</html>
