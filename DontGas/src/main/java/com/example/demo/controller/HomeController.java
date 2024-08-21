package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.ui.Model;


@Controller
public class HomeController {
	
	// [GET]localhost:8090/myapp/
	@GetMapping(value="/login")
	public String loginPage() {
		return "login";
	}
	
	@GetMapping("/list")
	public String listPage() {
		return "list";
	}
	
	@GetMapping("/info")
	public String infoPage() {
		return "info";
	}
	
	@GetMapping("/chat/{roomId}")
	public String chatPage(@PathVariable("roomId") String roomId , Model model) {
		model.addAttribute(roomId);
		return "chat";
	}
}
