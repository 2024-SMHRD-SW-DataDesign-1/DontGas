package com.dontgas.dontgas.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
	
	
	@Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception{

        http	// 인가 관련 설정
            .authorizeHttpRequests((auth) -> auth
                    .anyRequest().permitAll()	// 그 외 나머지 경로는 권한 상관 없이 로그인만 되어 있으면 접근 가능
            );

        return http.build();
    }
}
