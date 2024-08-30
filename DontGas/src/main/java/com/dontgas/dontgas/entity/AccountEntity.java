package com.dontgas.dontgas.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "tb_account")
@Getter
public class AccountEntity {

	@Id	// PK가 되는 변수(컬럼)을 지정하는 어노테이션
	@Column(name = "acc_id", nullable = false, unique = true, length = 50, updatable = false, insertable = false)
	private String accId;
	
	@Column(name = "acc_pw", nullable = false, length = 255, updatable = false, insertable = false)
	private String accPw;
	
	@Column(name = "acc_name", nullable = false, length = 50, updatable = false, insertable = false)
	private String accName;
	
	@Column(name = "acc_role", nullable = false, length = 50, updatable = false, insertable = false)
	private String accRole;
	
	@Column(name = "acc_login_lately", nullable = false, insertable = false)
	private LocalDateTime accLoginLately;
	
	@Column(name = "acc_insert_time", nullable = false, updatable = false, insertable = false)
	private LocalDateTime accInsertTime;
	
	@Column(name = "acc_is_delete", nullable = false, updatable = false, insertable = false)
	private int accIsDelete;

	// Setter는 accLoginLately만 필요하기 때문에 @Setter를 쓰지 않고, 별도로 Setter 메서드를 생성
	public void setAccLoginLately(LocalDateTime accLoginLately) {
		this.accLoginLately = accLoginLately;
	}

}
