<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "java.sql.*"%>
<%!
//변수 선언
 
%>
 
<%
//자바 구문
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>Document</title>
<style>
 
 
</style>
<script>
// 스크립트
 



 
</script>
</head>
<body>
<!-- 내용 -->

<%-- 1. 일반 html --%>
<h2> hello world1</h2>

<%-- 2. jsp : 변수 넣어주기 --%>
<h2> <%="hello world2"%> </h2>

<%-- 3. jsp : 직접출력 --%>
<% out.print("<h2>hello world3 </h2>"); %>
 
 
</body>
 
</html>