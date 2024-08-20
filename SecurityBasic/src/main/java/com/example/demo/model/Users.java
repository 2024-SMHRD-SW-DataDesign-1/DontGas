package com.example.demo.model;

import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
@Entity
@Table(name="USERS")
public class Users implements UserDetails { // Security에서 사용자 정보를 표현할 때 구현해줘야함
	
	@Id // Primary Key
	@GeneratedValue(strategy = GenerationType.IDENTITY) // 1부터 차례로 부여
	@Column(name="user_id") // 컬럼명 변경
	private Long id;
	
	@Column(nullable=false, unique=true, length=30) // 컬럼명은 디폴트. null,unique,length 설정
	private String email;
	
	@Column(nullable=false)
	private String password;
	
	@Column(nullable=false)
	private String name;
	
	@Column(nullable=false)
	@Enumerated(EnumType.STRING) // Enum에서 지정된 값 그대로 문자열로 테이블에 추가
	private Role role; // ADMIN 혹은 USER 중 하나만 가지게 할 거임 => Enum에서 정의
	
	
	// "Check constraint 'users_chk_1' is violated." 오류 -> 워크벤치에서 아래 sql문 실행
		// SELECT * FROM information_schema.check_constraints;
		// ALTER TABLE users DROP CONSTRAINT users_chk_1;
	// => 테이블 자동 생성 시 제약 조건이 자동으로 생성되어 생긴 문제
	
	
	
	
	// 로그인 시 자동으로 내부적으로 호출되는 메서드들 => **반드시** 재정의 해줘야 함
	
	// 필수적으로 구현되어야 하는 추상 메서드1
	// 사용자의 권한 목록 리턴
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// Enum role에서 권한 목록을 리턴
		return List.of(new SimpleGrantedAuthority(role.name()));
	}
	
	// 필수적으로 구현되어야 하는 추상 메서드2
	// 사용자의 패스워드 리턴
	@Override
	public String getPassword() {
		return password;
	}
	
	// 필수적으로 구현되어야 하는 추상 메서드3
	// 사용자 username 리턴
	// username => 로그인 할 때 입력되는 값이어야 함 => email 사용
	@Override
	public String getUsername() {
		return email;
	}
	
	public Long getId() {
		return id;
	}
	
	public Role getRole() {
		return role;
	}
}
