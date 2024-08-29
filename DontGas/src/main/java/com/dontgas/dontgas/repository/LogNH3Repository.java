package com.dontgas.dontgas.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dontgas.dontgas.entity.LogNH3;

@Repository
public interface LogNH3Repository extends JpaRepository<LogNH3, Long> {

}
