package com.dontgas.dontgas.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.dontgas.dontgas.interceptor.DataInterceptor;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Autowired
    private DataInterceptor dataInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 모든 경로에 대해 Interceptor 적용
        registry.addInterceptor(dataInterceptor).addPathPatterns("/**");
    }
}
