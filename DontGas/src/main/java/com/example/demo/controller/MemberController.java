//package com.example.demo.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
//
//import com.example.demo.model.BootMember;
//import com.example.demo.service.MemberService;
//
//import jakarta.servlet.http.HttpSession;
//
//@Controller  // View(.jsp)를 반환 => 화면 자체가 새롭게 응답이 됨
//// 비동기 통신 => 전체 화면이 바뀌는 것이 아니고 일부만 바뀌는 통신 방법
////			   뷰 전체를 응답받는게 아니고 일부 데이터만 응답 받음
////			   - (구버전) @Controller[화면] + @ResponseBody[데이터]
////			   - (신버전) @RestContrroller : data(model) 반환이 기본
//public class MemberController {
//	
//	@Autowired
//	MemberService service;
//	
//	@PostMapping("/join")
//	public String join(@ModelAttribute BootMember member) {
////		System.out.println(member.getId());
////		System.out.println(member.getPw());
////		System.out.println(member.getNick());
//		
//		// Mybatis : controller(요청/응답(view or data)) -> service(생략이 가능하긴 하지만 controller에서 요청/응답에 집중하게 하기 위해) -> mapper
//		// JPA	   : controller -> service -> repository(Interface -> sql 작성X, 메서드 호출)
//		
//		service.join(member);
//		
//		return "redirect:/";
//	}
//	
//	@PostMapping("/login")
//	public String login(@ModelAttribute BootMember member, HttpSession session) {
//		BootMember result = service.login(member);
//		
//		// 로그인 정보 갖고있기
//		session.setAttribute("member", result);
//		return "redirect:/";
//	}
//}
