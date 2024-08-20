package com.example.demo.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ChatMessage {
	
	// enum -> 정해져 있는 값(따로 정의) 중 하나만 선택하고 싶을 때 사용
	public enum MessageType{
		ENTER, QUIT, TALK
	}
	
	private MessageType messageType; // ENTER, QUIT, TALK  중 하나만 선택 가능 (enum
	private String roomId; // 채팅방 번호
	private String sender; // 발신자
	private String message; // 채팅 내용
	
}
