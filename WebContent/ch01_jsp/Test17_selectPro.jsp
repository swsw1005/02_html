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
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String studentNum = request.getParameter("studentNum");
		String gender = request.getParameter("gender");
		if (gender.equals("man")) {
			gender = "남자";
		} else if (gender.equals("woman")) {
			gender = "여자";
		}
		String major = request.getParameter("major");
	%>

	<table border="1" width="70%">

		<tr>
			<td>이름</td>
			<td><%=name%></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><%=addr%></td>
		</tr>
		<tr>
			<td>학번</td>
			<td><%=studentNum%></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><%=gender%></td>
		</tr>
		<tr>
			<td>전공</td>
			<td><%=major%></td>
		</tr>

	</table>





</body>

</html>