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

td {
	width: 80px;
	border: 1px solid red;
}

#aa {
	top: 15px;
	left: 15px;
	position: absolute;
	align-self: center;
	ali
}
</style>
<script>
	// 스크립트
</script>
</head>
<body>
	<!-- 내용 -->
	<a id="aa">
		<table>
			<%
				for (int i = 1; i <= 9; i++) {
			%>
			<tr>
				<%
					for (int j = 2; j <= 9; j++) {
				%>
				<td><%=j + "×" + i + "=" + (i * j)%></td>
				<%
					} //inner for end
				%>
			</tr>
			<%
				}//for end
			%>
		</table>
	</a>

<%
String msg ="12345";

char arr[]=msg.toCharArray();

	for (int i = 0; i < arr.length; i++) {
		out.print("<h4>"+arr[i]+"</h4>");
	}



%>




</body>

</html>