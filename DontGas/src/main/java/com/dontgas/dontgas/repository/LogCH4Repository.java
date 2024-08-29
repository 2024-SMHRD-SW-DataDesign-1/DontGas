package com.dontgas.dontgas.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dontgas.dontgas.entity.LogCH4;

@Repository
public interface LogCH4Repository extends JpaRepository<LogCH4, Long> {

}
