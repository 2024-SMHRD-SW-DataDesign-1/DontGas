package com.dontgas.dontgas.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dontgas.dontgas.entity.LogH2S;

@Repository
public interface LogH2SRepository extends JpaRepository<LogH2S, Long> {

}
