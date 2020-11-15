<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼 만들기</title>
</head>
<body>
<form name="write_form_member" method="post">
	<table width="940" style="padding: 5px 0 5px 0;">
		<tr height="2" bgcolor="#FFC8C3">
			<td colspan="2"></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><%=request.getParameter("mbname")%></td>
		</tr>
		<tr>
			<th>주민등록번호</th>
			<td><%=request.getParameter("jumin_1")%> - 
				<%=request.getParameter("jumin_2")%></td>
		</tr>
		<tr>
			<th>아이디</th>
			<td><%=request.getParameter("cursor:pointer")%></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><%=request.getParameter("mbpw")%></td>
		</tr>
		<tr>
			<th>비밀번호 확인</th>
			<td><%=request.getParameter("mbpw_re")%></td>
		</tr>
		<tr>
			<th>비밀번호 힌트/답변</th>
			<td><%=request.getParameter("pwhint")%></td>
		</tr>
		<tr>
			<th>답변</th>
			<td><%=request.getParameter("pwhintans")%></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><%=request.getParameter("email")%>@ 
				<%=request.getParameter("email_dns")%></td>
		</tr>
		<tr>
			<th>주소</th>
			<td><%=request.getParameter("zip_h_1")%> - 
				<%=request.getParameter("zip_h_2")%></td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td><%=request.getParameter("cel1")%>  - 
				<%=request.getParameter("cel2_1")%>  - 
				<%=request.getParameter("cel2_2")%> </td>
		</tr>
		<tr>
			<th>핸드폰 번호</th>
			<td><%=request.getParameter("tel_h1")%> - <%=request.getParameter("tel_h2_1")%>
				- <%=request.getParameter("tel_h2_2")%></td>
		</tr>
		<tr>
			<th>직업</th>
			<td><%=request.getParameter("job")%></td>
		</tr>
		<tr>
			<th>메일/sns 정보 수신</th>
			<td><% String chk_mail = request.getParameter("chk_mail");
				if(chk_mail.equals("Y")){
				%> <input type="radio" name="chk_mail" value="Y" checked>수신 <input
					type="radio" name="chk_mail" value="N">수신거부 <% 
				}else{
				%> <input type="radio" name="chk_mail" value="Y">수신 <input
					type="radio" name="chk_mail" value="N" checked>수신거부 <%
				}
	    		%>
	    	</td>
		</tr>
		<tr>
			<th>관심분야</th>
			<td><%String[] interest = request.getParameterValues("interest");
			boolean hob1=false;
			boolean hob2=false;
			boolean hob3=false;
			boolean hob4=false;
			boolean hob5=false;
			boolean hob6=false;
			for(String hob:interest) {
				if(hob.equals("17")){
					hob1=true;
				}
				if(hob.equals("18")){
					hob2=true;
				}
				if(hob.equals("19")){
					hob3=true;
				}
				if(hob.equals("20")){
					hob4=true;
				}
				if(hob.equals("21")){
					hob5=true;
				}
				if(hob.equals("22")){
					hob6=true;
				}
			}
				if(hob1){
					%>
					<input type="checkbox" name="hobby" value="17" checked>생두
					<%
				}else{
					%>
					<input type="checkbox" name="hobby" value="17">생두
					<%
			}
				if(hob2){
					%>
					<input type="checkbox" name="hobby" value="18"checked>원두
					<%
				}else{
					%>
					<input type="checkbox" name="hobby" value="18">원두
					<%
			}
				if(hob3){
					%>
					<input type="checkbox" name="hobby" value="19"checked>로스팅
					<%
				}else{
					%>
					<input type="checkbox" name="hobby" value="19">로스팅
					<%
			}
				if(hob4){
					%>
					<input type="checkbox" name="hobby" value="20"checked>핸드드립
					<%
				}else{
					%>
					<input type="checkbox" name="hobby" value="20">핸드드립
					<%
			}
				if(hob5){
					%>
					<input type="checkbox" name="hobby" value="21"checked>에스프레소
					<%
				}else{
					%>
					<input type="checkbox" name="hobby" value="21">에스프레소
					<%
			}
				if(hob6){
					%>
					<input type="checkbox" name="hobby" value="22"checked>창업
					<%
				}else{
					%>
					<input type="checkbox" name="hobby" value="22">창업
					<%
			}
		%></td>
		</tr>
		<tr>
			<th>가입경로</th>
			<td><%=request.getParameter("location")%></td>
		</tr>
		<tr>
			<th>정보공개여부</th>
			<td><%=request.getParameter("chk_open")%></td>
		</tr>		
	</table>
</form>
</body>
</html>