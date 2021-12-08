<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/memberUpdateOutput.jsp</title>
</head>
<body>
	<%
	String id = (String) request.getAttribute("rid");
	%>
	<a href='index.jsp'>첫 페이지</a>
	<h3>회원 수정 정보</h3>
	<table border='1'>
		<tr>
			<th>회원아이디</th>
			<td><%=id%></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><%=request.getAttribute("rpass")%></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><%=request.getAttribute("rname")%></td>
		</tr>
		<tr>
			<th>e-mail</th>
			<td><%=request.getAttribute("rmail")%></td>
		</tr>
	</table>
</body>
</html>