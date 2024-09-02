package com.dontgas.dontgas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.dontgas.dontgas.entity.PigHouse;

@Repository
public interface PigHouseRepository extends JpaRepository<PigHouse, Long> {
	
	@Query("SELECT p FROM PigHouse p LEFT JOIN FETCH p.farmer WHERE p.phouseId = :id")
    PigHouse findByPhouseId(@Param("id") Long id);
}
