<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="10kb" %>

<%-- Test01_out.jsp --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
int total=out.getBufferSize();// 전체 출력 버퍼사이즈를 구한다 디폴트가 8kb이다.
int rate=out.getRemaining();// 남아있는 버퍼사이즈를 구한다
%>

전체 출력 버퍼사이즈 : <%=total %><br>
남아있는 버퍼사이즈 : <%=rate %><br>
사용중인 버퍼사이즈 : <%=total-rate %><br>
</body>
</html>