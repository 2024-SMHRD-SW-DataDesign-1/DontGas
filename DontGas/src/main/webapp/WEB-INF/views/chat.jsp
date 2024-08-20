<%@page import="com.example.demo.model.BootMember"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
   #msgArea{
      width : 200px;
      height : 300px;
      background-color: whitesmoke;
      overflow:auto;
   }
</style>
<title>Insert title here</title>
</head>
<body>
	<%
		BootMember member = (BootMember)session.getAttribute("member");
		String nick = member.getNick();
	%>

	<div class="container">
	
        <div class="col-6">
             <label><b>채팅방</b></label>
             
             <div class="input-group-append">
                 <button type="button" id="button-quit" onclick="quit()">방나가기</button>
             </div>
        </div>
        
        <div>
             <div id="msgArea" class="col"></div>
             
             <div class="col-6">
                 <div class="input-group mb-3">
                 
                    <input type="text" id="msg" class="form-control" aria-label="Recipient's username" aria-describedby="button-addon2">
                    
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="button" onclick="send()" id="button-send">전송</button>
                    </div>
                    
                 </div>
             </div>
             
        </div>
        
    </div>
    
    <script>
    	// 1. 소켓 연결 (소켓 객체 생성)
    	const webSocket =  new WebSocket("ws://localhost:8090/myapp/ws/chat")
    	
    	// 2. 연결/해제/메세지
    	webSocket.onopen = onOpen; // 채팅방 입장
    	webSocket.onmessage = onMessage; // 서버로부터 메세지를 받았을 때 ()
    	
    	function onOpen(){ // 연결 시 함수
    		// 서버에 메세지 보내기(타입(ENTER), 채팅방 아이디(roomId), sender)
    		var msg = {"messageType":"ENTER","roomId":"${roomId}","sender":"<%=nick%>"}
    		webSocket.send(JSON.stringify(msg))
    	}
    	
    	function quit() { // 채팅방 나갈 때
    		var msg = {"messageType":"QUIT","roomId":"${roomId}","sender":"<%=nick%>"}
    		webSocket.send(JSON.stringify(msg))
    		
    		webSocket.close()
    		
    		location.href='/myapp/room'
    	}
    	
    	function send(){
    		let msg = $("#msg").val()
    		let talkMsg = {"messageType":"TALK","roomId":"${roomId}","sender":"<%=nick%>", "message" : msg}
    		webSocket.send(JSON.stringify(talkMsg))
    		$("#msg").val("")
    	}
    	
    	// 서버로부터 메세지를 받았을 때 호출
    	function onMessage(msg){
    		var data = msg.data
            var msgData = JSON.parse(data)
            
            if(msgData.sender == "<%=nick%>"){ // 내가 채팅을 보냈을 때 (ENTER X, TALK O)
            	if(msgData.messageType!="ENTER"){ // TALK
            		var str = "<div align='right' style='color:green'>";
                    str += msgData.message;
                    str += "</div>";
                    $("#msgArea").append(str);
            	}
            } else { // 다른 사람이 입장하거나 나가거나 채팅을 보냈을 때
            	if(msgData.messageType=='ENTER') { // 입장했을 때
            		var str = "<div align='center' style='color:orange'>";
                    str += "<b>" + msgData.sender + "님이 입장했습니다!" + "</b>";
                    str += "</div>";
                    $("#msgArea").append(str);
            	} else if(msgData.messageType=='QUIT') { // 나갈 때
            		var str = "<div align='center' style='color:orange'>";
                    str += "<b>" + msgData.sender + "님이 나갔습니다!" + "</b>";
                    str += "</div>";
                    $("#msgArea").append(str);
            	} else { // 채팅 보냈을 때
            		var str = "<div style='color:skyblue'>";
                    str += "<b>" + msgData.sender + " : " + "</b>" + msgData.message;
                    str += "</div>";
                    $("#msgArea").append(str);
            	}
            }
    		
    	}
    </script>
</body>
</html>