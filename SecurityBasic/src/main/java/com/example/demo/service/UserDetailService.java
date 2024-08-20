package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.demo.repository.UserRepository;

// login을 위한 service 클래스 -> security에서는 정해져있음
@Service
public class UserDetailService implements UserDetailsService {
	
	@Autowired
	private UserRepository repository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		return repository.findByEmail(username)
				.orElseThrow(()->new UsernameNotFoundException("USER NOT FOUND WITH EMAIL : " + username)); // optional 방식이기 때문에 해당 이메일이 없을 때
	}
	
}
