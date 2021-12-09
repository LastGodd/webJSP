<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu.jsp</title>
<style>
ul {
	list-style-type: none;
}

li {
	display: inline-block;
	width: 100px;
	background-color: yellow;
}
</style>
</head>
<body>
	<ul>
		<li><a href='<%=request.getContextPath()%>/memberList.do'>회원목록</a></li>
		<li><a
			href='<%=request.getContextPath()%>/member/memberInput.jsp'>회원등록</a></li>
		<li><a
			href='<%=request.getContextPath()%>/member/memberSearch.jsp'>회원조회</a></li>
		<li><a
			href='<%=request.getContextPath()%>/member/memberUpdate.jsp'>회원수정</a></li>
		<li><a
			href='<%=request.getContextPath()%>/member/memberDelete.jsp'>회원삭제</a></li>
	</ul>
	<%
	if (session.getAttribute("id") != null) {
	%>
	<li><a href='<%=request.getContextPath()%>/Logout.do'>로그아웃</a></li>
	<%
	}
	%>
</body>
</html>