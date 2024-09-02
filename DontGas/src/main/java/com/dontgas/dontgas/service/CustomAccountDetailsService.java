package com.dontgas.dontgas.service;

import java.time.LocalDateTime;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.dontgas.dontgas.dto.CustomAccountDetails;
import com.dontgas.dontgas.entity.AccountEntity;
import com.dontgas.dontgas.repository.AccountRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CustomAccountDetailsService implements UserDetailsService{

	private final AccountRepository accRepository;
	
	@Override
	public UserDetails loadUserByUsername(String accId) throws UsernameNotFoundException {
		// accId와 일치한 데이터를 accData에 대입, 로그인이 성공했다면 accData에 값이 들어왔을 것
		AccountEntity accData = accRepository.findByAccId(accId);
		
		// accData에 값이 들어왔다면(로그인 성공)
		if (accData != null) {
			// 로그인 성공 시, DB의 tb_account 테이블의 acc_login_lately 컬럼 값을 Don't Gas의 WAS의 현재 시각으로 업데이트
			accData.setAccLoginLately(LocalDateTime.now());
			accRepository.save(accData);
			
            return new CustomAccountDetails(accData);
        }

		
		return null;
	}

}
