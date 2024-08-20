package com.example.demo.model;

import lombok.Builder;
import lombok.Getter;

@Getter
// @AllArgsConstructor : lombok 사용해서 전체 필드 초기화 하는 생성자 생성
public class ChatRoom {
	
	private String roomId; // 식별자
	private String roomName; // 채팅방 이름
	
	
	// 생성차 호출하는 대신에 Builder 방식으로 객체 생성
	// 기존 방식 => new ChatRoom("roomId1", "roodName1");
	// Builder 방식 => ChatRoom.builder().roomId("roodId1").roomName("roomName1")
	// 				=> 각 인자가 어떤 값을 의미하는지 명확히 파악 가능!
	@Builder
	public ChatRoom(String roomId, String roomName) {
		this.roomId = roomId;
		this.roomName = roomName;
	}
}
