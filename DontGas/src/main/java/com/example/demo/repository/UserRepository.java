package com.example.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Member;

@Repository
public interface UserRepository extends JpaRepository<Member, Long> {
	Optional<Member> findById(String id);
	
	boolean existsById(String id);
}
