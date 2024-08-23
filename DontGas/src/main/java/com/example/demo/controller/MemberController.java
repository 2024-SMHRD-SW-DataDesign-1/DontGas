package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.model.Member;
import com.example.demo.service.MemberService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {
	
	@Autowired
	MemberService service;
	
	@PostMapping("/login")
	public String login(@ModelAttribute Member member, HttpSession session) {
		Member result = service.login(member);
		
		if (result == null) {
			return "redirect:/login";
	    }
		
		session.setAttribute("member", result);
		return "redirect:/list";
	}
	
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate(); // 세션 무효화
        return "redirect:/login"; // 로그인 페이지로 리다이렉트
    }
}
