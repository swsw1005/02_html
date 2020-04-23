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
	font-size: larger;
}
</style>
<script>
	// 스크립트
</script>
</head>
<body>
	<!-- 내용 -->

	<form action="Test16_selectPro.jsp" method="post">
		<h3>이름</h3>
		<input type="text" name="name" size="30" /><br />
		<h3>주소</h3>
		<input type="text" name="addr" size="70" /><br /> <br>
		<h4>좋아하는 과일은</h4>

		<select name="과일">
			<option value="사과">사과</option>
			<option value="딸기">딸기</option>
			<option value="수박">수박</option>
			<option value="키위">키위</option>
			<option value="포도">포도</option>
		</select> <br>
		<h4>좋아하는 운동은?</h4>

		<select name="과일">
			<option value="축구">축구</option>
			<option value="야구">야구</option>
			<option value="족구">족구</option>
			<option value="세팍타크로">세팍타크로</option>
			<option value="농구">농구</option>
			<option value="배구">배구</option>
		</select> <br>
		<h4>좋아하는 취미?</h4>

		<select name="취미" multiple>
			<option value="여행">여행</option>
			<option value="코딩">코딩</option>
			<option value="영화">영화</option>
			<option value="택배">택배</option>
		</select> <input type="submit" value="전송">

	</form>









</body>

</html>