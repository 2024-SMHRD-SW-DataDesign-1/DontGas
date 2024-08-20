package com.example.demo.config;

// class 생성할 때 Interface에 websocketconfigurer 추가
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

import com.example.demo.handler.WebSocketChatHandler;

import lombok.RequiredArgsConstructor;

@Configuration // 설정 파일
@EnableWebSocket // 웹소켓 활성화
@RequiredArgsConstructor
public class WebSocketConfig implements WebSocketConfigurer {
	
	private final WebSocketChatHandler webSocketChatHandler;
	
	@Override
	public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
		// EndPoint : 서비스 끝자락(핸드폰/PC) / WebSocket에서는 URI(경로)의 끝자락을 의미
		// => 채팅을 하기 위해서 접근해야하는 URL / localhost:8090/myapp/ws/chat
		// setAllowedOrigins : CORS 설정 -> 다른 곳에서도 접근할 수 있게 권한 부여
		registry.addHandler(webSocketChatHandler, "/ws/chat").setAllowedOrigins("*");

	}

}
