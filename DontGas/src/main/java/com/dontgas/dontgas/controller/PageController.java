package com.dontgas.dontgas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.ui.Model;


@Controller
public class PageController {
	
	@GetMapping(value="/login")
	public String loginPage() {
		return "login";
	}
	
	@GetMapping("/list")
	public String listPage() {
		return "list";
	}
	
	@GetMapping("/postlist")
	public String postlistPage() {
		return "postlist";
	}
	
	
	@GetMapping("/createpost")
	public String createpostPage() {
		return "createpost";
	}
	
//	@GetMapping("/info")
//	public String infoPage() {
//		return "info";
//	}
	
//    @GetMapping("/logout-success")
//    public String logoutSuccess() {
//        return "login";
//    }
}
