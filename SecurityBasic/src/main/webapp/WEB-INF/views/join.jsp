<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>ȸ������ ������</h1>
	<form action="api/member/join" method="post">
		<input type="email" placeholder="e-mail" name="email"> <br> <!-- name�� Users.java�� field�� �����ؾߵ� -->
		<input type="password" placeholder="password" name="password"> <br> <!-- �������� -->
		<input type="text" placeholder="name" name="name"> <br> <!-- �������� -->
		<input type="submit" value="ȸ������">
	</form>
</body>
</html>