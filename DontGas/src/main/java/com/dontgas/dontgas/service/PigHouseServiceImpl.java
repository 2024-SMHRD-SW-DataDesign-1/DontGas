package com.dontgas.dontgas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dontgas.dontgas.entity.PigHouse;
import com.dontgas.dontgas.repository.PigHouseRepository;

@Service
public class PigHouseServiceImpl implements PigHouseService  {
	
	@Autowired
    private PigHouseRepository pigHouseRepository;

	@Override
	public List<PigHouse> getAllPigHouses() {
		 return pigHouseRepository.findAll();
	}
	
	@Override
    public PigHouse getPigHouseById(Long id) {
        return pigHouseRepository.findById(id).orElse(null);
    }
}
