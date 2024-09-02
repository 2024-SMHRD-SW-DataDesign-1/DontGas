package com.dontgas.dontgas.component;

import java.io.IOException;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.dontgas.dontgas.dto.CustomAccountDetails;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

// SecurityConfig 클래스에서, FilterChain 내 http.loginForm(.successHandler())를 통해 호출되는 컴포넌트 클래스 
@Component
public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		// authentication.getPrincipal()로 반환되는 값은
		// CustomAccountDetails 클래스에서 지정한 Getter 메서드의 반환값임(지금은 accId - 계정 ID, accPw - 계정 비밀번호, accName - 계정명)
		// 반환된 값을 accDetails에 대입
		CustomAccountDetails accDetails = (CustomAccountDetails) authentication.getPrincipal();

		// accDetails 내의 계정명 값을 accName에 대입
		String accName = accDetails.getName();
		
		// 세션에 계정명 저장
        HttpSession session = request.getSession();
        session.setAttribute("accName", accName);
        
        // 원하는 페이지로 리다이렉트(현재는 리스트 페이지로 리다이렉트)
        // SystemConfig 클래스에서 .defaultSuccessUrl() 대신 사용함
        // sendRedirect()를 써야 리다이렉트하면서, 이 클래스에서 세션에 계정명(accName) 저장했던 게 전달이 됨
        // sendRedirect() 안 쓰고 SystemConfig 클래스에서 .defaultSuccessUrl()로 리다이렉트하면, 세션의 accName 값을 jsp에서 불러올 때 null이 나옴
		response.sendRedirect("/list"); 
	}

}