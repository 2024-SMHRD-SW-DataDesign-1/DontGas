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

@NamedNativeQuery(
	    name = "LogEntity.findLogResultsNow",
	    query = "select UUID() as virtual_id, h.phouse_id, h.h2s_insert_time as insert_time, h.h2s_value, n.nh3_value, c.ch4_value " +
	            "from tb_log_h2s h " +
	            "inner join tb_log_nh3 n on h.h2s_insert_time = n.nh3_insert_time and h.phouse_id = n.phouse_id " +
	            "inner join tb_log_ch4 c on h.h2s_insert_time = c.ch4_insert_time and h.phouse_id = c.phouse_id " +
	            "where h.h2s_insert_time = (" +
	            "   select max(h2s_insert_time) " +
	            "   from tb_log_h2s " +
	            "   where phouse_id = h.phouse_id" +
	            ") " +
	            "order by h.phouse_id asc",
	    resultSetMapping = "LogResultMapping"
	)


//@NamedNativeQuery(
//	    name = "LogEntity.findH2SNullTime",
//	    query = "WITH OrderedH2S AS ( " +
//	            "    SELECT h.phouse_id, " +
//	            "           h.h2s_insert_time, " +
//	            "           h.h2s_value, " +
//	            "           ROW_NUMBER() OVER (PARTITION BY h.phouse_id ORDER BY h.h2s_insert_time DESC) AS rn " +
//	            "    FROM tb_log_h2s h " +
//	            "), " +
//	            "ValidH2S AS ( " +
//	            "    SELECT  o.phouse_id, " +
//	            "           o.h2s_insert_time AS valid_insert_time " +
//	            "    FROM OrderedH2S o " +
//	            "    WHERE o.h2s_value IS NOT NULL " +
//	            "), " +
//	            "NullH2S AS ( " +
//	            "    SELECT n.phouse_id, " +
//	            "           n.h2s_insert_time AS null_insert_time " +
//	            "    FROM OrderedH2S n " +
//	            "    WHERE n.h2s_value IS NULL " +
//	            "    AND EXISTS ( " +
//	            "        SELECT 1 " +
//	            "        FROM ValidH2S v " +
//	            "        WHERE n.phouse_id = v.phouse_id " +
//	            "          AND n.h2s_insert_time > v.valid_insert_time " +
//	            "    ) " +
//	            ") " +
//	            "SELECT UUID() AS virtual_id, phouse_id, " +
//	            "       MIN(null_insert_time) AS first_null_after_last_not_null " +
//	            "FROM NullH2S " +
//	            "GROUP BY phouse_id " +
//	            "ORDER BY phouse_id ASC",
//	    resultSetMapping = "LogResultMapping"
//	)
//
//@NamedNativeQuery(
//	    name = "LogEntity.findNH3NullTime",
//	    query = "WITH OrderedRecords AS ( " +
//	            "    SELECT n.phouse_id, " +
//	            "           n.nh3_insert_time, " +
//	            "           n.nh3_value, " +
//	            "           ROW_NUMBER() OVER (PARTITION BY n.phouse_id ORDER BY n.nh3_insert_time DESC) AS rn " +
//	            "    FROM tb_log_nh3 n " +
//	            "), " +
//	            "ValidRecords AS ( " +
//	            "    SELECT o.phouse_id, " +
//	            "           o.nh3_insert_time AS valid_insert_time " +
//	            "    FROM OrderedRecords o " +
//	            "    WHERE o.nh3_value IS NOT NULL " +
//	            "), " +
//	            "NullRecords AS ( " +
//	            "    SELECT n.phouse_id, " +
//	            "           n.nh3_insert_time AS null_insert_time " +
//	            "    FROM OrderedRecords n " +
//	            "    WHERE n.nh3_value IS NULL " +
//	            "    AND EXISTS ( " +
//	            "        SELECT 1 " +
//	            "        FROM ValidRecords v " +
//	            "        WHERE n.phouse_id = v.phouse_id " +
//	            "          AND n.nh3_insert_time > v.valid_insert_time " +
//	            "    ) " +
//	            ") " +
//	            "SELECT UUID() AS virtual_id, phouse_id, " +
//	            "       MIN(null_insert_time) AS first_null_after_last_not_null " +
//	            "FROM NullRecords " +
//	            "GROUP BY phouse_id " +
//	            "ORDER BY phouse_id ASC",
//	    resultSetMapping = "LogResultMapping"
//	)
//
//@NamedNativeQuery(
//	    name = "LogEntity.findCH4NullTime",
//	    query = "WITH OrderedCH4 AS ( " +
//	            "    SELECT c.phouse_id, " +
//	            "           c.ch4_insert_time, " +
//	            "           c.ch4_value, " +
//	            "           ROW_NUMBER() OVER (PARTITION BY c.phouse_id ORDER BY c.ch4_insert_time DESC) AS rn " +
//	            "    FROM tb_log_ch4 c " +
//	            "), " +
//	            "ValidCH4 AS ( " +
//	            "    SELECT  o.phouse_id, " +
//	            "           o.ch4_insert_time AS valid_insert_time " +
//	            "    FROM OrderedCH4 o " +
//	            "    WHERE o.ch4_value IS NOT NULL " +
//	            "), " +
//	            "NullCH4 AS ( " +
//	            "    SELECT n.phouse_id, " +
//	            "           n.ch4_insert_time AS null_insert_time " +
//	            "    FROM OrderedCH4 n " +
//	            "    WHERE n.ch4_value IS NULL " +
//	            "    AND EXISTS ( " +
//	            "        SELECT 1 " +
//	            "        FROM ValidCH4 v " +
//	            "        WHERE n.phouse_id = v.phouse_id " +
//	            "          AND n.ch4_insert_time > v.valid_insert_time " +
//	            "    ) " +
//	            ") " +
//	            "SELECT UUID() AS virtual_id, phouse_id, " +
//	            "       MIN(null_insert_time) AS first_null_after_last_not_null " +
//	            "FROM NullCH4 " +
//	            "GROUP BY phouse_id " +
//	            "ORDER BY phouse_id ASC",
//	    resultSetMapping = "LogResultMapping"
//	)




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
