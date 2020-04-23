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
	margin-left: 10px;
	background: yellow;
	list-style: none;
}

.bb {
	margin-left: 30px;
	background: cyan;
	list-style: none;
}
</style>
<script>
	// 스크립트
</script>
</head>
<body>
	<!-- 내용 -->
	<%
		String method = request.getMethod();
		out.println("메소드 방식 : " + method + "<br>");

		if (method.equalsIgnoreCase("POST")) {// 대소문자 구분 X
			out.println("<ul class=\"aa\">");
			String name = request.getParameter("name");
			String addr = request.getParameter("addr");
			String fruit[] = request.getParameterValues("fruit");

			out.println("<li> 이름 : " + name + "</li>");
			out.println("<li> 주소 : " + addr + "</li>");
			out.println("<li> 과일 : ");

			out.println("<ul class=\"bb\">");

			if (fruit != null) {

				for (int i = 0; i < fruit.length; i++) {
					out.println("<li>" + fruit[i] + "</li>");
				}
			}

			out.println("</ul>");

			out.println("</li>");

			out.println("</ul>");
		}
	%>


</body>

</html>