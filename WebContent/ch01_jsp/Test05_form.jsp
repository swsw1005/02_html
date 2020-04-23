<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%!
//변수 선언
 
%>

<%-- <%
//자바 구문
request.setCharacterEncoding("UTF-8");
%> --%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>Document</title>
<style>
* {
	font-size: 16px;
}

table {
	background-color: skyblue;
	border: 1px solid red;
}

tr {
	line-height: 30px;
}
</style>
<script>
// 스크립트
 
 
</script>
</head>
<body>
	<!-- 내용 -->
	<form action="Test05_proc.jsp" method="post">
		<table>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" size="20"></td>
			</tr>
			<tr>
				<td>ID</td>
				<td><input type="text" name="id" size="20"></td>
			</tr>
			<tr>
				<td>암호</td>
				<td><input type="password" name="pwd" size="10"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="전송">&nbsp;
					<input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>

</body>

</html>