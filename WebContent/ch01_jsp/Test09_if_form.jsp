<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test09</title>
<style>
td {
	border: 1px solid red;
	width: 100px;
}
</style>
</head>
<body>
	<form action="Test09_if_pro.jsp" method="post">
		<table>
			<tr>
				<td>이름</td>
				<td>홍길동</td>
			</tr>
			<tr>
				<td colspan="2">좋아하는 색 선택 ㅇㅇ<br> <select name="color"
					onchange="test">
						<option value="blue">청축</option>
						<option value="green">녹축</option>
						<option value="red">적축</option>
						<option value="brown">갈축</option>
						<option value="yellow">황축</option>
						<option value="black">흑축</option>
				</select>

				</td>
			</tr>
		</table>
		<input type="submit" value="zzzz">
	</form>

</body>
</html>