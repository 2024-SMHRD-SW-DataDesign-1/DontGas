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

	<button onclick="getAllMembers()"> 전체 회원 정보(비동기:JS) </button>
	
	<div id="list">
		
	</div>
	
	<hr>
	
	<form id="frm2">
		<input type="hidden" name="uid" id="fuid">
		<input type="text" name="id" id="fid" placeholder="아이디" readonly> <br>
		<input type="password" name="pw" id="fpw" placeholder="비밀번호"> <br>
		<input type="text" name="nick" id="fnick" placeholder="닉네임"> <br>
		<input type="button" onclick="update()" value="정보수정">
	</form>
	
	<hr>
	
	<form action="join" method="post">
		<input type="text" name="id" placeholder="아이디"> <br>
		<input type="password" name="pw" placeholder="비밀번호"> <br>
		<input type="text" name="nick" placeholder="닉네임"> <br>
		<input type="submit" value="회원가입">
	</form>
	
	<hr>
	
	<form id="frm">
		<input type="text" name="id" placeholder="아이디"> <br>
		<input type="password" name="pw" placeholder="비밀번호"> <br>
		<input type="text" name="nick" placeholder="닉네임"> <br>
		<input type="button" onclick="joinAsync()" value="회원가입(비동기)">
	</form>
	
	<hr>
	
	<form action="login" method="post">
		<input type="text" name="id" placeholder="아이디"> <br>
		<input type="password" name="pw" placeholder="비밀번호"> <br>
		<input type="submit" value="로그인">
	</form>
	<% BootMember member = (BootMember)session.getAttribute("member"); %>
	<% if(member!=null){ %>
		<%= member.getNick() %> 님 환영합니다!
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
					alert("오류발생")
				}
			})
		}
		
		// 회원 정보를 불러오면 실행될 함수
		function printList(data){
			let html = ""
			
			html += "<table border=1>"
			
			for(i in data){
				
				html += "<tr>"
				
				html += "<td>"+data[i].id+"</td>"
				html += "<td>"+data[i].pw+"</td>"
				html += "<td>"+data[i].nick+"</td>"
				html += "<td> <button onclick='deleteMember("+ data[i].uid +")' style='background-color:crimson; font-weight:bold;'> 삭제 </button> </td>"
				html += "<td> <button onclick='updateMember("+ JSON.stringify(data[i]) +")' style='background-color:skyblue; font-weight:bold;'> 수정 </button> </td>"
				
				html += "</tr>"
			}
			
			html += "</table>"
			
			$("#list").html(html)
		}
		
		function joinAsync() {
			// 해다 form 태그 안에 있는 인풋태그들에 작성되어있는 값 가져오기
			let frmData = $("#frm").serialize()
			// serialize : form 객체 내용 한 번에 받기
			// (표준 URL 인코딩 표기법 -> get 요청 시에 사용하는 파라미터와 비슷)
			
			$.ajax({
				url : "joinasync",
				type : "post",
				data : frmData,
				success : function(data){
					console.log(data)
				},
				error : function(){
					alert("오류 발생")
				}
			})
		}
		
		function deleteMember(uid){
			// HTTP 요청 메서드
			// GET : READ (SELECT) - 빠름
			// POST : CREATE (INSERT) - 안전
			// DELETE : DELETE (DELETE) - GET이랑 유사 (header(url)에 데이터 담아서 전달)
			// PUT : UPDATE (UPDATE) - 전체 수정(문제 생길 수 있음) - POST랑 유사
			// PATCH : UPDATE (UPDATE) - 일부 수정(일반적으로 사용) - POST랑 유사
			$.ajax({
				url : "delete/" + uid,	
				type : "delete",
				success : getAllMembers,
				error : function(){
					alert("오류 발생")
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
					alert("오류 발생")
				}
			})
		}
	</script>
</body>
</html>