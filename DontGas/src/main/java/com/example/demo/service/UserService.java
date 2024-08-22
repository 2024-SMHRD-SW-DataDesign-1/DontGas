package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.demo.model.Role;
import com.example.demo.model.Users;
import com.example.demo.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository repository;
	@Autowired
	private PasswordEncoder bCrypPasswordEncoder;
	
	// 회원가입
	public void join(Users users) {
		
		users.setPassword(bCrypPasswordEncoder.encode(users.getPassword())); // user의 password를 암호화하여 설정
		users.setRole(Role.ROLE_USER); // 역할을 기본적으로 USER로 설정
		
		if(!repository.existsById(users.getUsername())) {
			repository.save(users);
		}
	}
}
