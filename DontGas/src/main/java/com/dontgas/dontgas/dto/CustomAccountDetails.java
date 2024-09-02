package com.dontgas.dontgas.dto;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.dontgas.dontgas.entity.AccountEntity;

public class CustomAccountDetails implements UserDetails {
	
	private AccountEntity accEntity;

    public CustomAccountDetails(AccountEntity accEntity) {

        this.accEntity = accEntity;
    }


    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {

        Collection<GrantedAuthority> collection = new ArrayList<>();

        collection.add(new GrantedAuthority() {

            @Override
            public String getAuthority() {

                return accEntity.getAccRole();
            }
        });

        return collection;
    }

    @Override
    public String getPassword() {
        return accEntity.getAccPw();
    }

    @Override
    public String getUsername() {	// UserDetails에 있는 메서드라서 메서드명을 바꾸지 못함. Id Getter 역할.
        return accEntity.getAccId();
    }

    public String getName() {	// 계정명(acc_name)의 Getter
    	return accEntity.getAccName();
    }
    
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
