package com.dontgas.dontgas.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.savedrequest.NullRequestCache;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
	
	// 로그인 시, 입력받은 비밀번호를 BCrypt 암호화(단방향 해쉬로 변환)하는 역할 
	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {

	    return new BCryptPasswordEncoder();
	}
	
	@Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception{

		// 로그인이 필요한 페이지 접속 시에 로그인 페이지로 이동하는데, 거기서 로그인하면 원래 접속하려던 페이지로 접속함
		// 이는, Security 기본값으로 원래 접속하려 했던 페이지의 URL을 기억하는 설정이 있기 때문
		// 위의 URL 기억 설정을 끄면, 어느 페이지에 접속하려고 했든, 로그인 성공 시 지정한 페이지로만 이동시킬 수 있음(현재는 /list로)
		http
    		.requestCache((auth) -> auth.requestCache(new NullRequestCache()));
		
        http	// 인가 관련 설정
            .authorizeHttpRequests((auth) -> auth
                    .requestMatchers("/", "/login", "/loginProc").permitAll()	// login 페이지는 로그인 없이 접근 가능
                    .requestMatchers("/list", "/info", "/info/**").hasRole("ADMIN")	// list, info 페이지는 ADMIN 권한이 있는 계정으로 로그인 해야 접근 가능
                    .anyRequest().permitAll()	// 그 외 나머지 경로는 권한 상관 없이 로그인만 되어 있으면 접근 가능
            );
        
        http	// form 로그인 설정
	        .formLogin((auth) -> auth.loginPage("/login")	// 로그인 및 권한이 필요한 페이지 접근 시 인가되지 않을 경우, 로그인 페이지로 이동시킬 경로를 설정
	        		.usernameParameter("accId") // username 파라미터 이름 변경
	                .passwordParameter("accPw") // password 파라미터 이름 변경
	        		.loginProcessingUrl("/loginProc")	// 로그인 처리 시 경로를 설정
	                .defaultSuccessUrl("/list")	// 로그인 성공 시 list 페이지로 이동
	                .permitAll()
	        );

        http	// 로그아웃 설정
        	.logout((auth) -> auth.logoutUrl("/logout")
        			.logoutSuccessUrl("/login"));
        

        return http.build();
    }
}
