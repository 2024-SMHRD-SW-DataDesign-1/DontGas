//package com.dontgas.dontgas.repository;
//
//import java.util.List;
//
//import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.repository.query.Param;
//import org.springframework.stereotype.Repository;
//
//import com.dontgas.dontgas.entity.LogH2S;
//import com.dontgas.dontgas.entity.PigHouse;
//
//@Repository
//public interface LogH2SRepository extends JpaRepository<LogH2S, Long> {
//	
//	@Query(value = "WITH OrderedH2S AS (" +
//            "    SELECT h.phouse_id, " +
//            "           h.h2s_insert_time, " +
//            "           h.h2s_value, " +
//            "           ROW_NUMBER() OVER (PARTITION BY h.phouse_id ORDER BY h.h2s_insert_time DESC) AS rn " +
//            "    FROM tb_log_h2s h " +
//            "), " +
//            "ValidH2S AS (" +
//            "    SELECT o.phouse_id, " +
//            "           o.h2s_insert_time AS valid_insert_time " +
//            "    FROM OrderedH2S o " +
//            "    WHERE o.h2s_value IS NOT NULL " +
//            "), " +
//            "NullH2S AS (" +
//            "    SELECT n.phouse_id, " +
//            "           n.h2s_insert_time AS null_insert_time " +
//            "    FROM OrderedH2S n " +
//            "    WHERE n.h2s_value IS NULL " +
//            "    AND EXISTS (" +
//            "        SELECT 1 " +
//            "        FROM ValidH2S v " +
//            "        WHERE n.phouse_id = v.phouse_id " +
//            "          AND n.h2s_insert_time > v.valid_insert_time " +
//            "    ) " +
//            ") " +
//            "SELECT phouse_id, " +
//            "       MIN(null_insert_time) AS first_null_after_last_not_null " +
//            "FROM NullH2S " +
//            "GROUP BY phouse_id " +
//            "ORDER BY phouse_id ASC",
//            nativeQuery = true)
//    List<Object[]> findH2SNullTime();
//	
//}
