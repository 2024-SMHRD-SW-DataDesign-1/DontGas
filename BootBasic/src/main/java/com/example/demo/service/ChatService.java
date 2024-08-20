package com.example.demo.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.stereotype.Service;

import com.example.demo.model.ChatRoom;

@Service
public class ChatService {
	
	// 생성된 채팅 룸 정보 저장할 맺 <key(임의로 생성할 roomId-value)>
	private Map<String, ChatRoom> chatRooms = new HashMap<>();
	
	// 새 채팅방 생성 메소드
	public ChatRoom createRoom(String roomName) {
		
		String roomId = UUID.randomUUID().toString(); // 유일한 랜덤 문자열 생성
		
		ChatRoom room = ChatRoom.builder()
							.roomId(roomId)
							.roomName(roomName)
							.build();
		
		chatRooms.put(roomId, room);
		
		return room;
	}
	
	// 모든 채팅방 불러오기
	public List<ChatRoom> findAllRooms() {
		
		return new ArrayList<>(chatRooms.values());

	}
	
}
