<%@page import="com.dev.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page errorPage="../error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	MemberVO vo = (MemberVO)request.getAttribute("member");
	%>
	<%@ include file="../menu.jsp" %>
	<a href='index.jsp'>첫 페이지로</a>
	<h3>입력한 아이디: <%=vo.getId() %></h3>
	<h3>입력한 이름: <%=vo.getName() %></h3>
	<h3>입력한 비번: <%=vo.getPassword() %></h3>
	<h3>입력한 이메일: <%=vo.getMail() %></h3>
</body>
</html>