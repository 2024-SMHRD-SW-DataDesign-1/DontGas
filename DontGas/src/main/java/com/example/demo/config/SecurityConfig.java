package com.example.demo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.annotation.web.configurers.ExceptionHandlingConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

import com.example.demo.jwt.CustomAuthenticationEntryPoint;
import com.example.demo.jwt.JwtAuthenticationFilter;
import com.example.demo.jwt.JwtExceptionFilter;
import com.example.demo.jwt.JwtUtil;

import jakarta.servlet.DispatcherType;

@Configuration // 설정 파일 어노테이션
@EnableWebSecurity // Spring Security 활성화 어노테이션
				   // 내부적으로 SpringSecurityFilterChain이 동작하게됨
public class SecurityConfig {
	
	@Autowired
	private UserDetailsService userDetailService;
	
	@Autowired
	private JwtUtil jwtUtil;
	
	// css, js, 이미지 등(정적 리소스) => 정적 리소스가 제대로 적용되지 않는 상황이 발생
	@Bean // 수동으로 객체 생성하는 어노테이션
	public WebSecurityCustomizer WebSecurityCustomizer() {
		return (web) -> web.ignoring().requestMatchers("/css/**", "/images/**", "/js/**"); // 정적 리소스에는 Security 코드를 적용하지 않게 만들기
	}
	
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception { // 필터를 순서대로 확인함
		http
		
		
		.csrf(csrf -> csrf.disable()) // GET 요청을 제외한 다른 요청으로부터 보호, csrf 토큰을 포함해야함(위조요청), rest api 사용 시에는 굳이 설정할 필요 X => disable
		
		
		
		// 아래는 react 연결 시 추가 내용
		// 세션 관리 상태 없음으로 구성
		.sessionManagement(sessionManagement -> sessionManagement.sessionCreationPolicy(
				SessionCreationPolicy.STATELESS))
		
		.formLogin(form -> form.disable()) // 로그인 폼 비활성화
		.httpBasic(AbstractHttpConfigurer::disable) // HTTP 기반 기본 인증 비활성화
		
		.addFilterBefore(new JwtAuthenticationFilter(userDetailService, jwtUtil), UsernamePasswordAuthenticationFilter.class)
		.addFilterBefore(new JwtExceptionFilter(), JwtAuthenticationFilter.class)
		// 여기까지 //
		
		
		.authorizeHttpRequests(auth -> auth
				// react 연결 시 필요 없는 거 주석 처리
				.dispatcherTypeMatchers(DispatcherType.FORWARD).permitAll() // 무한 반복 방지
				.requestMatchers("/login").permitAll() // 얘네는 굳이 인증을 하지 않아도 접근을 허용하겠음
				
				// 아래는 react 연결 시 수정 사항
				.requestMatchers("/api/member/*").permitAll() // 얘네는 굳이 인증을 하지 않아도 접근을 허용하겠음
				//
				
				.requestMatchers("/admin").hasRole("ADMIN") // 얘는 ADMIN 권한이 있을 경우에만 접근 허용하겠음 (일반 사용자 권한은 보통 USER로 설정)
				.anyRequest().authenticated() // 그 외의 요청은 무조건 인증 확인하겠음
		)
		
		// react 연결 시 추가
		.exceptionHandling(exceptionHandling-> exceptionHandling.authenticationEntryPoint(new CustomAuthenticationEntryPoint()))
		
		
		// 아래 필터는 react 연결 시에는 필요없어서(기본 폼 사용 X) 주석 처리했음
		.formLogin(form -> form
				.loginPage("/login") // 기본 로그인 페이지 설정
				.defaultSuccessUrl("/list") // 로그인 성공 시 요청 url(index.jsp)
				.failureUrl("/login") // 로그인 실패 시 요청 url(login.jsp)
				.permitAll() // 여기까지 왔으면 성공한거니까 무조건 붙여줘야됨
		)
		.logout(logout -> logout
				.logoutUrl("/logout") // 로그아웃 url 설정
				.logoutSuccessUrl("/login") // 로그아웃 성공 시 요청 url (login.jsp)
				.permitAll()
		)
		
		.userDetailsService(userDetailService)
		
		
		;
		
		
		
		return http.build();
	}
	
	
	
	
	// 비밀번호 저장&확인 시 암호화해서 할 거임
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	
	
	
	
	// react 연결 시 추가 ===============================================
	
	// CORS : Cross-origin resource sharing(교차 출처 리소스 공유)
	// 도메인 밖의 다른 도메인으로부터 요청할 수 있게 허용
	@Bean
    public CorsFilter corsFilter() {
        CorsConfiguration config = new CorsConfiguration();
        config.setAllowCredentials(true);
        config.addAllowedOrigin("http://localhost:3000");// 리액트 서버
        config.addAllowedHeader("*");
        config.addAllowedMethod("*");

        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", config); //모든 경로에 대해 CORS 설정

        return new CorsFilter(source);
    }
	
	// -----------------------------------------------------
	
	// 로그인 시 사용 -> jwt(web token)

	// 인증 공급자 : UserDetailsService, PasswordEncoder 활용 인증 논리 구현
	@Bean
    public AuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
        authenticationProvider.setUserDetailsService(userDetailService);
        authenticationProvider.setPasswordEncoder(passwordEncoder());
        return authenticationProvider;
    }
	
	// 인증 관리자 : 인증 공급자 활용 인증 처리
	@Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration config) throws Exception {
        return config.getAuthenticationManager();
    }
	
	// ===================================================
}
