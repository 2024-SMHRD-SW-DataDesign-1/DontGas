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

	<input type="text" id="room-name" placeholder="ä�ù� �̸��� �������ּ���.">
	<button onclick="createRoom()">ä�ù� �����ϱ�</button>
	
	<table id="rooms">
	
	</table>
	
	<script>
	
		$(document).ready(function(){
			showRooms() // ���� �������� �ε��Ǹ� �ٷ� ä�ù��� �ҷ����� �Լ� ȣ��
		})
	
		function createRoom(){
			$.ajax({
				url : "create",
				type : "post",
				data : {"roomName" : $("#room-name").val()},
				success : function(data){
					showRooms()
				},
				error : function(){
					alert("���� �߻�!")
				}
			})
		}
		
		function showRooms(){
			$.ajax({
				url : "rooms",
				type : "get",
				success : roomsHtml,
				error : function(){
					alert("���� �߻�")
				}
			})
		}
		
		function roomsHtml(data){
			let html = ""
			for(i in data){
				html += "<tr>"
				
				html += "<td>"+ data[i].roomName +"</td>"
				html += "<td> <button onclick='location.href=\"chat/"+ data[i].roomId +"\"'> ä�ù� ���� </button> </td>"
				
				html += "</tr>"
			}
			$("#rooms").html(html)
		}
	</script>
</body>
</html>