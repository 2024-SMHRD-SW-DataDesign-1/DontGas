<%@page import="com.example.demo.model.BootMember"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<button onclick="getAllMembers()"> ��ü ȸ�� ����(�񵿱�:JS) </button>
	
	<div id="list">
		
	</div>
	
	<hr>
	
	<form id="frm2">
		<input type="hidden" name="uid" id="fuid">
		<input type="text" name="id" id="fid" placeholder="���̵�" readonly> <br>
		<input type="password" name="pw" id="fpw" placeholder="��й�ȣ"> <br>
		<input type="text" name="nick" id="fnick" placeholder="�г���"> <br>
		<input type="button" onclick="update()" value="��������">
	</form>
	
	<hr>
	
	<form action="join" method="post">
		<input type="text" name="id" placeholder="���̵�"> <br>
		<input type="password" name="pw" placeholder="��й�ȣ"> <br>
		<input type="text" name="nick" placeholder="�г���"> <br>
		<input type="submit" value="ȸ������">
	</form>
	
	<hr>
	
	<form id="frm">
		<input type="text" name="id" placeholder="���̵�"> <br>
		<input type="password" name="pw" placeholder="��й�ȣ"> <br>
		<input type="text" name="nick" placeholder="�г���"> <br>
		<input type="button" onclick="joinAsync()" value="ȸ������(�񵿱�)">
	</form>
	
	<hr>
	
	<form action="login" method="post">
		<input type="text" name="id" placeholder="���̵�"> <br>
		<input type="password" name="pw" placeholder="��й�ȣ"> <br>
		<input type="submit" value="�α���">
	</form>
	<% BootMember member = (BootMember)session.getAttribute("member"); %>
	<% if(member!=null){ %>
		<%= member.getNick() %> �� ȯ���մϴ�!
		<button onclick="location.href='room'">CHAT NOW!</button>
	<% } %>
	
	<hr>
	
	
	<script>
		function getAllMembers(){
			$.ajax({
				url : "member",
				type : "get",
				success : printList,
				error : function(){
					alert("�����߻�")
				}
			})
		}
		
		// ȸ�� ������ �ҷ����� ����� �Լ�
		function printList(data){
			let html = ""
			
			html += "<table border=1>"
			
			for(i in data){
				
				html += "<tr>"
				
				html += "<td>"+data[i].id+"</td>"
				html += "<td>"+data[i].pw+"</td>"
				html += "<td>"+data[i].nick+"</td>"
				html += "<td> <button onclick='deleteMember("+ data[i].uid +")' style='background-color:crimson; font-weight:bold;'> ���� </button> </td>"
				html += "<td> <button onclick='updateMember("+ JSON.stringify(data[i]) +")' style='background-color:skyblue; font-weight:bold;'> ���� </button> </td>"
				
				html += "</tr>"
			}
			
			html += "</table>"
			
			$("#list").html(html)
		}
		
		function joinAsync() {
			// �ش� form �±� �ȿ� �ִ� ��ǲ�±׵鿡 �ۼ��Ǿ��ִ� �� ��������
			let frmData = $("#frm").serialize()
			// serialize : form ��ü ���� �� ���� �ޱ�
			// (ǥ�� URL ���ڵ� ǥ��� -> get ��û �ÿ� ����ϴ� �Ķ���Ϳ� ���)
			
			$.ajax({
				url : "joinasync",
				type : "post",
				data : frmData,
				success : function(data){
					console.log(data)
				},
				error : function(){
					alert("���� �߻�")
				}
			})
		}
		
		function deleteMember(uid){
			// HTTP ��û �޼���
			// GET : READ (SELECT) - ����
			// POST : CREATE (INSERT) - ����
			// DELETE : DELETE (DELETE) - GET�̶� ���� (header(url)�� ������ ��Ƽ� ����)
			// PUT : UPDATE (UPDATE) - ��ü ����(���� ���� �� ����) - POST�� ����
			// PATCH : UPDATE (UPDATE) - �Ϻ� ����(�Ϲ������� ���) - POST�� ����
			$.ajax({
				url : "delete/" + uid,	
				type : "delete",
				success : getAllMembers,
				error : function(){
					alert("���� �߻�")
				}
			})
		}
		
		function updateMember(member){
			$("#fuid").val(member.uid)
			$("#fid").val(member.id)
			$("#fpw").val(member.pw)
			$("#fnick").val(member.nick)
		}
		
		function update(){
			let frmData = $("#frm2").serialize()
			
			console.log(frmData)
			
			$.ajax({
				url : "update",
				type : "patch",
				data : frmData,
				success : function(data){
					getAllMembers()
					$("#fuid").val("")
					$("#fid").val("")
					$("#fpw").val("")
					$("#fnick").val("")
				},
				error : function(){
					alert("���� �߻�")
				}
			})
		}
	</script>
</body>
</html>