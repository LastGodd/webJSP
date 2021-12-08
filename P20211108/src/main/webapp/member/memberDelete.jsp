<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberDelete.jsp</title>
</head>
<body>
	<a href='../index.jsp'>첫 페이지</a>
	<h3>회원정보삭제</h3>
	<form action='../memberDelete.do' method='get'>
		ID: <input type='text' name='id'><br>
		<input type='hidden' name='job' value='delete'>
		<input type='submit' value='삭제'>
	</form>
</body>
</html>