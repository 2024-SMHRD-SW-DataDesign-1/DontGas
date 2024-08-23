package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.ui.Model;


@Controller
public class HomeController {
	
	@GetMapping(value="/loginpage")
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
	
    @GetMapping("/logout-success")
    public String logoutSuccess() {
        return "login";
    }
}
