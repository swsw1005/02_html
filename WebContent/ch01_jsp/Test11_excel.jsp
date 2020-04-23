
<%@ page language="java" contentType="charset=UTF-8"%>

<%-- utf-8 한글 안깨지는 태그 --%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<%
String type = request.getParameter("type");

if (type.equals("excel")) {
    response.setHeader("Content-Disposition", "attachment;filename=Test11_excel.jsp.xls");
    response.setContentType("application/vnd.ms-excel; charset=utf-8");
} else if (type.equals("word")) {
    response.setHeader("Content-Disposition", "attachment;filename=Test11_excel.jsp.doc");
    response.setContentType("application/vnd.word; charset=utf-8");
}else{
	return;
}

%>
<table>
	<tr>
		<td>이름</td>
		<td>급여</td>
		<td>주소</td>
	</tr>
	<tr>
		<td>홍길동</td>
		<td>350</td>
		<td>노량진</td>
	</tr>
	<tr>
		<td>임성우</td>
		<td>250</td>
		<td>합정</td>
	</tr>
	<tr>
		<td>이순신</td>
		<td>500</td>
		<td>명량</td>
	</tr>
	<tr>
		<td>임꺽정</td>
		<td>100</td>
		<td>북한산</td>
	</tr>
</table>



</body>

</html>