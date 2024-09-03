package com.dontgas.dontgas.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.EntityResult;
import jakarta.persistence.FieldResult;
import jakarta.persistence.Id;
import jakarta.persistence.NamedNativeQuery;
import jakarta.persistence.SqlResultSetMapping;
import lombok.Getter;
import lombok.Setter;

@Entity
@SqlResultSetMapping(
	name = "LogResultMapping",
	entities = {
			@EntityResult(entityClass = LogEntity.class, fields = {
				@FieldResult(name = "virtualId", column = "virtual_id"),
				@FieldResult(name = "phouseId", column = "phouse_id"),
				@FieldResult(name = "insertTime", column = "insert_time"),
				@FieldResult(name = "h2sValue", column = "h2s_value"),
				@FieldResult(name = "nh3Value", column = "nh3_value"),
				@FieldResult(name = "ch4Value", column = "ch4_value")
			})
	}		
)

@NamedNativeQuery(
	name = "LogEntity.findLogResults",
	query = "select UUID() as virtual_id, h.phouse_id, h.h2s_insert_time as insert_time, h.h2s_value,  n.nh3_value, c.ch4_value " +
			"from tb_log_h2s h " +
			"inner join tb_log_nh3 n on h.h2s_insert_time = n.nh3_insert_time and h.phouse_id = n.phouse_id " +
			"inner join tb_log_ch4 c on h.h2s_insert_time = c.ch4_insert_time and h.phouse_id = c.phouse_id " +
			"order by h.phouse_id asc, h.h2s_insert_time desc",
	resultSetMapping = "LogResultMapping"
)

@NamedNativeQuery(
	    name = "LogEntity.findByPhouseId",
	    query = "select UUID() as virtual_id, h.phouse_id, h.h2s_insert_time as insert_time, h.h2s_value,  n.nh3_value, c.ch4_value " +
	            "from tb_log_h2s h " +
	            "inner join tb_log_nh3 n on h.h2s_insert_time = n.nh3_insert_time and h.phouse_id = n.phouse_id " +
	            "inner join tb_log_ch4 c on h.h2s_insert_time = c.ch4_insert_time and h.phouse_id = c.phouse_id " +
	            "where h.phouse_id = :phouseId " +
	            "order by h.h2s_insert_time desc",
	    resultSetMapping = "LogResultMapping"
	)

@Getter
@Setter
public class LogEntity {

	@Id
	private String virtualId;
	
	private int phouseId;
	
	private LocalDateTime insertTime;
		
	private Float h2sValue;
	
	private Float nh3Value;
	
	private Float ch4Value;
}
