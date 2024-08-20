package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.BootMember;
import com.example.demo.repository.MemberRepository;

@Service
public class MemberService {
	
	@Autowired
	MemberRepository repo;
	
	// 회원 가입
	public void join(BootMember member) {
		//insert into boot_member values (id, pw, nick)
		repo.save(member);
	}
	
	// 전체 회원 정보
	public List<BootMember> getAllMembers() {
		List<BootMember> list =  repo.findAll(); // select * from boot_member
		return list;
	}
	
	// 로그인
	public BootMember login(BootMember member) {
		return repo.findByIdAndPw(member.getId(), member.getPw());
	}
	
	// 회원 삭제
	public void delete(Long uid) {
		repo.deleteById(uid);
	}
	
	// 회원 정보 수정
	public void update(BootMember member) {
		// JPA 활용 update하기
		// 1. 수정하고 싶은 행을 가져오기(read) -> select
		// Optional<> => NPE 방지(넘기는 기본키 값이 잘못된 경우)
		Optional<BootMember> find = repo.findById(member.getUid());
		
		// 2. setter 사용 필드값 수정
		find.get().setPw(member.getPw());
		find.get().setNick(member.getNick());
		
		// 3. 수정된 값을 가진 find 객체의 값을 DB에 저장(save)
		// save => 무조건 insert를 호출하는 게 아님
		//         uid를 사용해서 기존에 존재하는 uid를 가진 객체를 저장하는 경우에는 insert가 아니라 update
		// 		   기존에 존재하지 않는 uid를 가진 객체를 저장하는 경우에는 insert
		repo.save(find.get());
	}
}
