<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.jsp.*" %>

<%!
//변수 선언
 
%>

<%!
String str="hello";

@Override
public void jspInit() {
    str += "jspInit()";
    System.out.println("jspInit() called hahaha");
}

@Override
public void jspDestroy() {
	System.out.println("<br>");
    System.out.println("jspDestroy() called hahaha");
}
%>



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
<title>test06_lifecycle</title>
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
	JspPage 인터페이스 메소드
	<br> _jspInit() &nbsp; &nbsp; jsp 페이지 초기화때 한번 호출
	<br> _jspDestroy() &nbsp; &nbsp; jsp 페이지 메모리에서 제거될때 한번 호출
	<br>
	<br> HttpJspPage 인터페이스 메소드
	<br> _jspService() &nbsp; &nbsp;클라 요청 처리
	<br> &nbsp; &nbsp; &nbsp; jsp컨테이너에서 자동생성
	<br>
	<hr>
	<br>


	

<% str +=" jspDestroy called <br> "; %>

<%=str %>




</body>

</html>