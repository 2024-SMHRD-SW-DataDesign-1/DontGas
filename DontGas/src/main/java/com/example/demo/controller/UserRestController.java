package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.jwt.JwtUtil;
import com.example.demo.model.LoginDTO;
import com.example.demo.model.Users;
import com.example.demo.service.UserDetailService;
import com.example.demo.service.UserService;

@RestController
public class UserRestController {
	
	@Autowired
	private UserService service;
	
	@Autowired
	private AuthenticationManager authenticationManager;
	
	@Autowired
	private UserDetailService detailService;
	
	@Autowired
	private JwtUtil jwtUtil;
	
	@PostMapping("/login")
	public ResponseEntity<String> login(LoginDTO dto) {
		authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(dto.getId(), dto.getPassword())
            );

        final UserDetails userDetails = detailService.loadUserByUsername(dto.getId());
        String token = jwtUtil.createAccessToken(userDetails);

        return ResponseEntity.status(HttpStatus.OK).body(token);
	}
	
}
