<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>�Է����� Ȯ��</title>
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
		ȸ������ �Է�����
	</caption>
	<tr>
		<th>�̸�</th>
		<td><%=request.getParameter("name") %></td>
	</tr>
	<tr>
		<th>���̵�</th>
		<td><%=request.getParameter("id") %></td>
	</tr>
	<tr>
		<th>�̸���</th>
		<td><%=request.getParameter("email")%></td>
	</tr>
	<tr>
		<th>����</th>
		<td><%=request.getParameter("job")%></td>
	</tr>
	<tr>
		<th>����(�б���)</th>
		<td><%=request.getParameter("work")%></td>
	</tr>
	<tr>
		<th>��å</th>
		<td><%=request.getParameter("inChargeOf")%></td>
	</tr>
	<tr>
		<th>�繫��TEL</th>
		<td><%=request.getParameter("tel")%></td>
	</tr>
	<tr>
		<th>�ڵ���</th>
		<td><%=request.getParameter("cell")%></td>
	</tr>
	<tr>
		<th>�ϰ� ���� ��</th>
		<td><%=request.getParameter("msg")%></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:center">
			<p>�Է��� ������ ��Ȯ�Ѱ���?</p>
			<button name="submit" type="button" onclick = "location.href = 'welcome.html'">��</button>
			<button name="reset" type="button" onclick = "location.href = 'join.jsp'">�ƴϿ�</button>
			</td>
		</tr>
</table>
</form>
</body>
</html>