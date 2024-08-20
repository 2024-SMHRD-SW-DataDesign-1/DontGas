package com.example.demo.handler;

import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

// class 생성 시 superclass를 TextwebSocketHandler로 설정
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.example.demo.model.ChatMessage;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.RequiredArgsConstructor;

// 소켓 통신 : 1(서버) : N(클라이언트) 관계
// 한 서버에서 여러 클라이언트가 발송한 메시지를 받아 처리해주는 역할 -> Handler (접속, 접속 해제, 메시지 처리)
// HTML 통신과 달리 클라이언트의 요청이 없어도 응답 가능

@Component // 따로 객체(bean)를 등록할 필요없이 객체(bean)를 생성 해주는 어노테이션
@RequiredArgsConstructor // Lombok에서 제공하는 어노테이션. 초기화가 되지 않은 필드를 초기화하는 생성자를 만들어줌
							// -> 여기서는 한 마디로 objectMapper 객체를 생성해줌
							// @Autowired랑 비슷
							// Spring 5 버전 이상에서는 @Autowired보다 @RequiredArgsConstructor를 권장
								// => @Autowired는 순환 참조가 되는데 그것을 방지
								// => final 지원(상수가 선언되어 있어도 나중에 생성자로 생성할 수 있도록) : 값이 마음대로 바뀌지 않도록 방지
public class WebSocketChatHandler extends TextWebSocketHandler {
	
	// 현재까지 접속한 클라이언트 정보 저장 Set
	// Set : 바구니, 값이 겹치면 안 됨 (cf. List : 연속적 인덱스, Hash Map : K, V)
	private Set<WebSocketSession> sessions  = new HashSet<>();
	
	
	// 각 채팅방 별(key값 필요->Map 사용) 클라이언트 정보 따로 저장
	private Map<String, Set<WebSocketSession>> chatRoomSessions = new HashMap<>();
	
	private final ObjectMapper objectMapper;
	
	
	// 클라이언트 접속 시 호출 : sessions에 접속 클라이언트 추가
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		sessions.add(session);
		System.out.println("접속 : " + session.getId());
	}
	
	
	// 클라이언트 접속 해제 시 호출 : sessions에 접속 해제 클라이언트 제거
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		sessions.remove(session);
		System.out.println("접속 해제 : " + session.getId());
	}
	
	
	// 메세지 처리
	@Override					 // ( 채팅을 보낸 클라이언트   , 그 클라이언트가 보낸 소시지 )
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		// 클라이언트가 보낸 메시지 확인하기 (ChatMessage(VO) 만들기)
		String payload = message.getPayload(); // 클라이언트가 보낸 메세지 가져오기
		// ObjectMapper 사용 : String -> Java Class(여기서는 ChatMessage) 형태로 변환
		ChatMessage chatMessage = objectMapper.readValue(payload, ChatMessage.class);
		System.out.println(chatMessage.toString());
		
		String roomId = chatMessage.getRoomId();
		
		// 메세지 -> 채팅방에 대한 내용 포함 (roomId)
		// 만약 해당 채팅방(roomId)이 MAP에 등록되어 있지 않으면 추가해주는 작업 수행
		if(!chatRoomSessions.containsKey(roomId)) {
			chatRoomSessions.put(roomId, new HashSet<>());
		}
		
		Set<WebSocketSession> chatRoomSession = chatRoomSessions.get(roomId);
		// 메시지 -> 클라이언트가 하려는 행위에 따라 접속(ENTER), 해제(QUIT), 메세지(TALK) 분류
		// 접속 메세지 : 해당 클라이언트를 채팅 중인 채팅방 MAP에 추가
		if(chatMessage.getMessageType().equals(ChatMessage.MessageType.ENTER)) {
			chatRoomSession.add(session);
		} // 해제 소세지 : 해당 클라이언트를 채팅방 MAP에서 제거
		else if(chatMessage.getMessageType().equals(ChatMessage.MessageType.QUIT)) {
			chatRoomSession.remove(session);
		}
		
		
		
		// 메세지(채팅) : 해당 채팅 내용은 해당 채팅방에 들어와있는 모든 클라이언트에 공유하기
		// parallelStream() : session을 가져오는 통로(Stream)
		chatRoomSession.parallelStream().forEach(cSession -> {
			// 특정 클라이언트가 서버에 보낸 메세지를 해당 채팅방에 들어와있는 모든 클라이언트에게 메세지로 전송
			try {
				cSession.sendMessage(message);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		});
	}
}
