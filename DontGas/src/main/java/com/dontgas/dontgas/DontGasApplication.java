package com.dontgas.dontgas;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

// @SpringBootApplication : 설정 자동화 어노테이션
// 해당 어노테이션이 있는 위치로부터 설정 내용을 읽기 때문에 이 어노테이션을 포함한 클래스는 프로젝트의 최상단에 위치해야 함
@SpringBootApplication
public class DontGasApplication {

	public static void main(String[] args) {
		SpringApplication.run(DontGasApplication.class, args);
	}

}
