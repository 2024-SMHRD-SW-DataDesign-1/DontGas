package com.dontgas.dontgas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.dontgas.dontgas.entity.LogEntity;

public interface LogRepository extends JpaRepository<LogEntity, String> {
	
	@Query(name = "LogEntity.findLogResults", nativeQuery = true)
	List<LogEntity> findLogResults();
	
	@Query(name = "LogEntity.findByPhouseId", nativeQuery = true)
	List<LogEntity> findByPhouseId(@Param("phouseId") Long id);
	
	@Query(name = "LogEntity.findLogResultsNow", nativeQuery = true)
	List<LogEntity> findLogResultsNow();
	
//	@Query(name = "LogEntity.findH2SNullTime", nativeQuery = true)
//	List<LogEntity> findH2SNullTime();
//	
//	@Query(name = "LogEntity.findNH3NullTime", nativeQuery = true)
//	List<LogEntity> findNH3NullTime();
//	
//	@Query(name = "LogEntity.findCH4NullTime", nativeQuery = true)
//	List<LogEntity> findCH4NullTime();
}
