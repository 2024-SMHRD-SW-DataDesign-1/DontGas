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
}
