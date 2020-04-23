<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%! 
// 변수선언
String DRIVER="com.mysql.jdbc.Driver";
String URL="jdbc:mysql://localhost:3306/mydb1";
String USER="root";
String PWD="12345";
%>
<%
//java 구문
request.setCharacterEncoding("utf-8"); // 클라이언트에서 넘겨준 한글 처리, post요청시
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//java 구문=스클립틀릿
try{
   //처리내용
   Class.forName(DRIVER);// 드라이버 로딩
   Connection con=DriverManager.getConnection(URL,USER,PWD);//DB연결
   
   //클라이언트가 보내준 데이터 받기
   String writer=request.getParameter("writer"); // 클라이언트 폼안의 name속성의 내용을 가져온다.
   String subject=request.getParameter("subject");
   String email=request.getParameter("email");
   String content=request.getParameter("content");
   String pwd=request.getParameter("pwd");
   String ip=request.getRemoteAddr();//클라이언트 ip
   String sql="insert into myboard(writer,subject,email,content,pwd,wdate,ip) "
            +"values(?,?,?,?,?,NOW(),?)";
   //NOW() : 년원일 시분초
   //curdate() : 년월일  - Mysql
   //sysdate : 년원일 - 오라클
   PreparedStatement pstmt=con.prepareStatement(sql);// 생성시 인자가 들어간다.
   //Statement는 실행시 인자가 들어간다. stmt.executeUpdate(sql)
   
   // ?값 채우기
   pstmt.setString(1,writer);
   pstmt.setString(2,subject);
   pstmt.setString(3,email);
   pstmt.setString(4,content);
   pstmt.setString(5,pwd);
   // 날짜는 직접 입력했기때문에 건너뛴다.
   pstmt.setString(6,ip);
   
   pstmt.executeUpdate(); // 쿼리 수행
   
   pstmt.close();
   con.close();
   
   //response 내장 객체서버가 클라이언트로 응답할 때 사용
   //request : 클라이언트가 서버로 요청
   
   response.sendRedirect("List.jsp");
   
}catch(Exception ex){
   System.out.println("WriteSave.jsp예외: "+ex);
   out.println("<script>");
   out.println("alert('WriteSave.jsp예외')");
   out.println("history.back()");
   out.println("</script>");
}
%>


</body>
</html>