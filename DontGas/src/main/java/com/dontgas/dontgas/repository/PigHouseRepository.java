package com.dontgas.dontgas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dontgas.dontgas.entity.PigHouse;

@Repository
public interface PigHouseRepository extends JpaRepository<PigHouse, Long> {
	
	
}
