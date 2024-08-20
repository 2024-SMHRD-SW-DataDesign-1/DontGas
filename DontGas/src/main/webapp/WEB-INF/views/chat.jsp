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
             <label><b>ä�ù�</b></label>
             
             <div class="input-group-append">
                 <button type="button" id="button-quit" onclick="quit()">�泪����</button>
             </div>
        </div>
        
        <div>
             <div id="msgArea" class="col"></div>
             
             <div class="col-6">
                 <div class="input-group mb-3">
                 
                    <input type="text" id="msg" class="form-control" aria-label="Recipient's username" aria-describedby="button-addon2">
                    
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="button" onclick="send()" id="button-send">����</button>
                    </div>
                    
                 </div>
             </div>
             
        </div>
        
    </div>
    
    <script>
    	// 1. ���� ���� (���� ��ü ����)
    	const webSocket =  new WebSocket("ws://localhost:8090/myapp/ws/chat")
    	
    	// 2. ����/����/�޼���
    	webSocket.onopen = onOpen; // ä�ù� ����
    	webSocket.onmessage = onMessage; // �����κ��� �޼����� �޾��� �� ()
    	
    	function onOpen(){ // ���� �� �Լ�
    		// ������ �޼��� ������(Ÿ��(ENTER), ä�ù� ���̵�(roomId), sender)
    		var msg = {"messageType":"ENTER","roomId":"${roomId}","sender":"<%=nick%>"}
    		webSocket.send(JSON.stringify(msg))
    	}
    	
    	function quit() { // ä�ù� ���� ��
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
    	
    	// �����κ��� �޼����� �޾��� �� ȣ��
    	function onMessage(msg){
    		var data = msg.data
            var msgData = JSON.parse(data)
            
            if(msgData.sender == "<%=nick%>"){ // ���� ä���� ������ �� (ENTER X, TALK O)
            	if(msgData.messageType!="ENTER"){ // TALK
            		var str = "<div align='right' style='color:green'>";
                    str += msgData.message;
                    str += "</div>";
                    $("#msgArea").append(str);
            	}
            } else { // �ٸ� ����� �����ϰų� �����ų� ä���� ������ ��
            	if(msgData.messageType=='ENTER') { // �������� ��
            		var str = "<div align='center' style='color:orange'>";
                    str += "<b>" + msgData.sender + "���� �����߽��ϴ�!" + "</b>";
                    str += "</div>";
                    $("#msgArea").append(str);
            	} else if(msgData.messageType=='QUIT') { // ���� ��
            		var str = "<div align='center' style='color:orange'>";
                    str += "<b>" + msgData.sender + "���� �������ϴ�!" + "</b>";
                    str += "</div>";
                    $("#msgArea").append(str);
            	} else { // ä�� ������ ��
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