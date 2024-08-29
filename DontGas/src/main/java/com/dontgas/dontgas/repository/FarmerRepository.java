package com.dontgas.dontgas.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dontgas.dontgas.entity.Farmer;

@Repository
public interface FarmerRepository extends JpaRepository<Farmer, Long> {

}
