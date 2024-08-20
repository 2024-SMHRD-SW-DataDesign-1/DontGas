package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.ChatRoom;
import com.example.demo.service.ChatService;

@RestController
public class ChatRestController {
	
	@Autowired
	ChatService service;
	
	@PostMapping("create")
	public ChatRoom createRoom(@RequestParam("roomName") String roomName) {
		return service.createRoom(roomName);
	}
	
	@GetMapping("rooms")
	public List<ChatRoom> findAllRoom() {
		return service.findAllRooms();
	}
}