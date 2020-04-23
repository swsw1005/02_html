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
 * { margin: 0px;   padding: 0px;  } 
 
 
</style>
<script>
// 스크립트
 
 
</script>
</head>
<body>
<!-- 내용 -->


    <form action="Test11_excel.jsp" method="post">

        <h4>다운받을 형식을 선택하세요</h4>
        <h4>excel, word 택일</h4>
        <input type="text" name="type">
        <input type="submit" value="다운로드">
    </form>
 
 
</body>
 
</html>