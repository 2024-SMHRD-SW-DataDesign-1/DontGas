package com.dontgas.dontgas.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dontgas.dontgas.entity.AccountEntity;

public interface AccountRepository extends JpaRepository<AccountEntity, String>{

	boolean existsByAccId(String accId);


    AccountEntity findByAccId(String accId);
}
