package com.example.demo.controller;

import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.BootMember;
import com.example.demo.service.MemberService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


@RestController
public class MemberRestController {
	
	@Autowired
	MemberService service;
	
	@GetMapping("/member")
	public List<BootMember> getAllMembers() {
		// Jackson 라이브러리 : 자바 Object => JSON Object
		// -> Boot에서는 기본적으로 가지고 있음
		List<BootMember> list = service.getAllMembers();
		return list;
	}
	
	@PostMapping("joinasync")
	public String joinAsync(@ModelAttribute BootMember member){
		service.join(member);
		return "success";
	}
	
	@DeleteMapping("/delete/{uid}")
	public String delete(@PathVariable("uid")Long uid) {
		service.delete(uid);
		
		return "ok";
	}
	
	@PatchMapping("/update")
	public String update(@ModelAttribute BootMember member) {
		System.out.println(member.getId() + member.getNick() + member.getPw() + member.getUid());
		service.update(member);
		return "done";
	}
	
}
