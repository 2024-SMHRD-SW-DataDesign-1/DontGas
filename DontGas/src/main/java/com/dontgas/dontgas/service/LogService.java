package com.dontgas.dontgas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dontgas.dontgas.entity.LogEntity;
import com.dontgas.dontgas.repository.LogRepository;

@Service
public class LogService {
	
	@Autowired
	private LogRepository logRepository;
	
	public List<LogEntity> getLogResults() {
		return logRepository.findLogResults();
	}
	
	public List<LogEntity> getLogResultsById(Long id) {
		return logRepository.findByPhouseId(id);
	}
	
	public List<LogEntity> getLogResultsNow() {
		return logRepository.findLogResultsNow();
	}
}
