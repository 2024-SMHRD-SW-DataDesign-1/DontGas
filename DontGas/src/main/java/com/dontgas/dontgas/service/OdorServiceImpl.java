package com.dontgas.dontgas.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.dontgas.dontgas.repository.LogCH4Repository;
import com.dontgas.dontgas.repository.LogH2SRepository;
import com.dontgas.dontgas.repository.LogNH3Repository;

public class OdorServiceImpl implements OdorService {
	
	@Autowired
    private LogCH4Repository logCH4Repository;
	
	@Autowired
    private LogH2SRepository logH2SRepository;
	
	@Autowired
    private LogNH3Repository logNH3Repository;

}
