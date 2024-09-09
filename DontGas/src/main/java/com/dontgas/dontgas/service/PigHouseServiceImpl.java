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
	
	
	// 돈사 리스트 전부 찾기
	@Override
	public List<PigHouse> getAllPigHouses() {
		 return pigHouseRepository.findAll();
	}
	
	
	// 돈사 아이디로 구분하여 찾기
	@Override
    public PigHouse getPigHouseById(Long id) {
        return pigHouseRepository.findById(id).orElse(null);
    }
}
