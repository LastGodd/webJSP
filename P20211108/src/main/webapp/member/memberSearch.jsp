<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberSearch.jsp</title>
</head>
<body>
	<%@ include file="../menu.jsp" %>
	<a href='index.jsp'>첫 페이지</a>
	<h3>회원검색</h3>
	<form action='../memberSearch.do' method='get'>
		ID: <input type='text' name='id'><br>
		<input type='hidden' name='job' value='search'>
		<input type='submit' value='검색'>
	</form>
</body>
</html>