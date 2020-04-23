<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.net.*"%>

<%!
//변수 선언
String DRIVER = "com.mysql.jdbc.Driver";
String URL = "jdbc:mysql://localhost:3500/mydb1";
String USER = "root";
String PWD = "12345";
%>

<%
//자바 구문
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>Document</title>
<style>
</style>
<script>
// 스크립트
 
</script>
</head>
<body>
	<!-- 내용 -->

	<%
	String ip2 = request.getRemoteAddr(); 
	if(ip2.equals("192.168.137.45"))
	{%>

	<script>
	alert(' <%=ip2%> 접근 금지입니다.')
	history.back()
	</script>
	
	<%
	return;
	} %>



	<%
try{
	
	System.out.println("111");
	//드라이버 로딩
	Class.forName(DRIVER);
	Connection con  = DriverManager.getConnection(URL, USER, PWD);
	//클라이언트 데이터 받기
	String writer= request.getParameter("writer");
	String subject = request.getParameter("subject");
	String email = request.getParameter("email");
	String content = request.getParameter("content");
	String pwd = request.getParameter("pwd");
	
	//String ip = InetAddress.getLocalHost().getHostAddress();
	String ip = request.getRemoteAddr();
	
	System.out.println("222");
	
	String sql = "insert into myboard(writer, subject, email, content, pwd, wdate, ip)"
	+"values(?,?,?,?,?,now(),?)";
	
	//now()  년월일시분초   mysql
	//curdate()  년월일  mysql
	//sysdate  오라클 전용
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	pstmt.setString(1, writer);
	pstmt.setString(2, subject);
	pstmt.setString(3, email);
	pstmt.setString(4, content);
	pstmt.setString(5, pwd);
	//날짜 건너뛰고 (직접 넣었으니까)
	pstmt.setString(6, ip);
	
	System.out.println("333");
	
	pstmt.executeUpdate();//쿼리실행
	
	pstmt.close();
	con.close();
	
	response.sendRedirect("List.jsp");
	
	
}catch(Exception ex){
	System.out.println("writeSave.jsp 예외"+ex);
	ex.getStackTrace();
	out.println("<script>");
	out.println("alert('writeSave.jsp예외')");
	out.println("history.back()");
	out.println("</script>");
}
%>

</body>

</html>


