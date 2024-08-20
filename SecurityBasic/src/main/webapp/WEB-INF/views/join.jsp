<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 페이지</h1>
	<form action="api/member/join" method="post">
		<input type="email" placeholder="e-mail" name="email"> <br> <!-- name이 Users.java의 field와 동일해야됨 -->
		<input type="password" placeholder="password" name="password"> <br> <!-- 마찬가지 -->
		<input type="text" placeholder="name" name="name"> <br> <!-- 마찬가지 -->
		<input type="submit" value="회원가입">
	</form>
</body>
</html>