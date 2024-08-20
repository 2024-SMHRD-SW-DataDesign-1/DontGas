<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 페이지</h1>
	<form action="/login" method="post">
		<input type="email" placeholder="e-mail" name="username"> <br> <!-- name을 유저 확인할 때 사용한 username으로 -->
		<input type="password" placeholder="password" name="password"> <br>
		<input type="submit" value="로그인">
	</form>
	<button onclick="location.href='join'">회원가입 페이지</button>
	<button onclick="location.href='admin'">관리자 페이지</button>
</body>
</html>