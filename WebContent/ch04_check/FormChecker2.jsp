<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="check.FormChecker" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FormChecker2.jsp</title>
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");

	String name=request.getParameter("name");
	String id=request.getParameter("id");
	String email=request.getParameter("email");
	String card=request.getParameter("card");
	String ssn1=request.getParameter("ssn1");
	String ssn2=request.getParameter("ssn2");
	String p1=request.getParameter("p1");
	String p2=request.getParameter("p2");
%>
<%
//데이터 유효성 체크 
if(FormChecker.isNull(name))
{
	printErr(out,"이름 입력하시요");//메서드 호출
	return;
}

if(!FormChecker.isID(id)){
	printErr(out,"ID를 제대로 입력 하세요");
	return;
}

if(!FormChecker.isEmail(email)){
	printErr(out,"Email을 제대로 입력 하시요 ");
	return;
}

if(!FormChecker.isCardNumber(card)){
	printErr(out,"card 번호를 제대로 입력 하시요 ");
	return;
}

if(!FormChecker.isSSN(ssn1,ssn2))
{
	printErr(out,"주민 번호를 정확히 입력 하세요");
	return;
}

if(!FormChecker.isSame(p1,p2))
{
	printErr(out,"암호가 일치하지 않습니다 ");
	return;
}
%>

<%
StringBuffer sb=new StringBuffer(ssn1);
sb.append("-");
sb.append(ssn2);
sb.replace(0,6,"******");//0 1 2 3 4 5
sb.replace(7,13,"******");// 7 8 9 10 11 12

StringBuffer pp=new StringBuffer(p1);
pp.replace(0, p1.length(), "***");
%>
<h2>입력한 정보</h2>
이름:<%=name %><br>
ID:<%=id %><br>
이메일:<%=email %><br>
카드번호:<%=card %><br>
주민번호:<%=sb %><br>
암호:<%=pp %><br>
</body>
</html>
<%!
//사용자 정의 메서드 , 전역변수 
public static void printErr(JspWriter out,String msg) 
		throws Exception
{
	out.println("<script>");
	out.println("alert('"+msg+"')");
	out.println("history.back()");//==history.go(-1)  이전으로
	out.println("</script>");
}

%>