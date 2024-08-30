package com.dontgas.dontgas.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.dontgas.dontgas.dto.CustomAccountDetails;
import com.dontgas.dontgas.entity.AccountEntity;
import com.dontgas.dontgas.repository.AccountRepository;

@Service
public class CustomAccountDetailsService implements UserDetailsService{

	@Autowired
	private AccountRepository accRepository;
	
	@Override
	public UserDetails loadUserByUsername(String accId) throws UsernameNotFoundException {
		
		AccountEntity accData = accRepository.findByAccId(accId);
		
		if (accData != null) {

            return new CustomAccountDetails(accData);
        }

		
		return null;
	}

}
