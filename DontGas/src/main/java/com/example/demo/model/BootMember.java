package com.example.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
@Getter

// JPA (Java Persistence API) : ORM(Object-Relational Mapping) 기술의 표준
@Entity  // JPA Entity 추가
// 관련 어노테이션 -> https://cjw-awdsd.tistory.com/46
public class BootMember {
	// 기본적으로 클래스 이름(BootMember)이 테이블 이름
	
	// 기본적으로 필드 이름이 column 이름
	// Primary Key 지정 -> 숫자여야함
	@Id
	// 임의로 uid 생성 -> strategy : 생성 방법. IDENTITY : 1부터 자동으로
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long uid;
	// index에서 썼던 name 속성과 일치해야 됨
	private String id;
	private String pw;
	private String nick;
}
