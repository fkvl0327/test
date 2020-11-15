<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력정보 확인</title>
<style>
table {
	border-collapse: collapse;
	border-top: 1px solid #444444;
}

th, td {
	border-bottom: 1px solid #444444;
	padding: 10px;
}
</style>
</head>
<body>
<form action="">
<table>
	<caption>
		회원가입 입력정보
	</caption>
	<tr>
		<th>이름</th>
		<td><%=request.getParameter("name") %></td>
	</tr>
	<tr>
		<th>아이디</th>
		<td><%=request.getParameter("id") %></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><%=request.getParameter("email")%></td>
	</tr>
	<tr>
		<th>직업</th>
		<td><%=request.getParameter("job")%></td>
	</tr>
	<tr>
		<th>직장(학교명)</th>
		<td><%=request.getParameter("work")%></td>
	</tr>
	<tr>
		<th>직책</th>
		<td><%=request.getParameter("inChargeOf")%></td>
	</tr>
	<tr>
		<th>사무실TEL</th>
		<td><%=request.getParameter("tel")%></td>
	</tr>
	<tr>
		<th>핸드폰</th>
		<td><%=request.getParameter("cell")%></td>
	</tr>
	<tr>
		<th>하고 싶은 말</th>
		<td><%=request.getParameter("msg")%></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:center">
			<p>입력한 정보가 정확한가요?</p>
			<button name="submit" type="button" onclick = "location.href = 'welcome.html'">예</button>
			<button name="reset" type="button" onclick = "location.href = 'join.jsp'">아니오</button>
			</td>
		</tr>
</table>
</form>
</body>
</html>