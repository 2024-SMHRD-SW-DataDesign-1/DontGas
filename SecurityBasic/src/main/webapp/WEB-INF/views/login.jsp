<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>�α��� ������</h1>
	<form action="/login" method="post">
		<input type="email" placeholder="e-mail" name="username"> <br> <!-- name�� ���� Ȯ���� �� ����� username���� -->
		<input type="password" placeholder="password" name="password"> <br>
		<input type="submit" value="�α���">
	</form>
	<button onclick="location.href='join'">ȸ������ ������</button>
	<button onclick="location.href='admin'">������ ������</button>
</body>
</html>