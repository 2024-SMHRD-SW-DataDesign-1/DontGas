package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Member;

// JPA를 사용하기 위해서는 특정 객체를 다룰 Repository 인터페이스를 필수로 만들어야 함
// extends JpaRepository<객체 타입, 기본키 타입>
public interface MemberRepository extends JpaRepository<Member, Long> {
	// select * from boot_member where id=? and pw=?
	// 메소드 이름 형식 잘 맞출 것 => 메소드 명을 보고 sql문 호출함
	public Member findByIdAndPw(String id, String pw);
}
