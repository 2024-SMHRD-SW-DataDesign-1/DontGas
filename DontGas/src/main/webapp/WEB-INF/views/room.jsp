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

	<input type="text" id="room-name" placeholder="채팅방 이름을 설정해주세요.">
	<button onclick="createRoom()">채팅방 생성하기</button>
	
	<table id="rooms">
	
	</table>
	
	<script>
	
		$(document).ready(function(){
			showRooms() // 현재 페이지가 로딩되면 바로 채팅방을 불러오는 함수 호출
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
					alert("오류 발생!")
				}
			})
		}
		
		function showRooms(){
			$.ajax({
				url : "rooms",
				type : "get",
				success : roomsHtml,
				error : function(){
					alert("오류 발생")
				}
			})
		}
		
		function roomsHtml(data){
			let html = ""
			for(i in data){
				html += "<tr>"
				
				html += "<td>"+ data[i].roomName +"</td>"
				html += "<td> <button onclick='location.href=\"chat/"+ data[i].roomId +"\"'> 채팅방 입장 </button> </td>"
				
				html += "</tr>"
			}
			$("#rooms").html(html)
		}
	</script>
</body>
</html>