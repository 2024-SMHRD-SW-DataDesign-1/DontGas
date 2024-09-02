package com.dontgas.dontgas.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dontgas.dontgas.entity.AccountEntity;

public interface AccountRepository extends JpaRepository<AccountEntity, String>{

	// existsBy~ : ~(엔티티 내 변수명)에 매핑된 필드에 accId와 같은 값이 존재하는지 여부를 반환
	boolean existsByAccId(String accId);

	// findBy~ : ~(엔티티 내 변수명)에 매핑된 필드 accId 파라미터의 값과 일치한 데이터를 반환
    AccountEntity findByAccId(String accId);
}
