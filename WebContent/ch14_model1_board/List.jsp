<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>Document</title>

</head>
<body>
	<!-- 내용 -->
	list.jsp입니다

	<div style="text-align: center">
		<h2>### 게시판 리스트 ###</h2>
	</div>

	<a href="Write.jsp">글쓰기</a>

	<%!//선언부 , 전역변수, 사용자 정의 메서드
	String DRIVER = "com.mysql.jdbc.Driver";
	String URL = "jdbc:mysql://localhost:3500/mydb1";
	String USER = "root";
	String PWD = "12345";%>

	<%
		Class.forName(DRIVER);//드라이버 로딩
		Connection con = DriverManager.getConnection(URL, USER, PWD);
		Statement stmt = con.createStatement();//Statement 생성
		String sql = "SELECT num,subject,email,writer,wdate,readcount FROM myboard order by num desc";

		ResultSet rs = stmt.executeQuery(sql);//쿼리 수행
	%>

	<table border="1" width="70%" align="center">
		<tr height="30" bgColor="margenta">
			<td>글번호</td>
			<td>글제목</td>
			<td>작성자</td>
			<td>작성일</td>
			<td>조회수</td>
		</tr>

		<%
			while (rs.next()) {
				int num = rs.getInt("num");
				String subject = rs.getString("subject");
				String email = rs.getString("email");
				String writer = rs.getString("writer");
				String wdate = rs.getString("wdate");
				int readcount = rs.getInt("readcount");
		%>
		<tr>
			<td><%=num%></td>
			<td><%=subject%></td>
			<td><%=email%></td>
			<td><%=writer%></td>
			<td><%=wdate%></td>
			<td><%=readcount%></td>
		</tr>
		<%
			}//while end
			rs.close();
			stmt.close();
			con.close();
		%>
	</table>

</body>

</html>