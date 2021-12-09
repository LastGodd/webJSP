<%@page import="com.dev.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/memberSearchOutput.jsp</title>
</head>
<body>
	<%!public String concat(String a, String b) {
		return a + ", " + b;
	}%>

	<%
	MemberVO vo = (MemberVO) request.getAttribute("member");
	%>
	<%@ include file="../menu.jsp" %>
	<a href='index.jsp'>첫 페이지</a>
	<h3>회원 상세 정보</h3>
	<%
	if (vo == null) {
	%>
	<h3>조회된 정보가 없습니다.</h3>
	<%
	} else {
	%>
	<table border='1'>
		<tr>
			<th>회원아이디</th>
			<td><%=concat("아이디는", vo.getId())%></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><%=vo.getPassword()%></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><%=vo.getName()%></td>
		</tr>
		<tr>
			<th>e-mail</th>
			<td><%=vo.getMail()%></td>
		</tr>
	</table>
	<%
	}
	%>

</body>
</html>