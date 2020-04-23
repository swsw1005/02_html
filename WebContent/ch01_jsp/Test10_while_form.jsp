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
	function check() {

		if (document.aa.msg.value == "" || document.msg.value == null) {
			alert("메세지 입력하세요");
			document.aa.msg.focus();
			return false;
		}
		if (document.aa.cnt.value == "" || document.cnt.value == null) {
			alert("반복횟수 입력하세요");
			document.aa.cnt.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<!-- 내용 -->

	<form name="aa" action="Test10_while_pro.jsp" method="post"
		onSubmit="return check()">
		<p>이름</p>
		<input type="text" name="msg" id="">
		<p>반복횟수</p>
		<input type="text" name="cnt" id=""> <input type="submit"
			value="zzzz">
	</form>



</body>

</html>