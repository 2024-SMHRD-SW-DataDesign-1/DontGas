package com.dontgas.dontgas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.dontgas.dontgas.entity.LogEntity;
import com.dontgas.dontgas.entity.PigHouse;
import com.dontgas.dontgas.service.LogService;
import com.dontgas.dontgas.service.PigHouseService;

import jakarta.servlet.http.HttpSession;

@Controller
public class PigHouseController {

    @Autowired
    private PigHouseService pigHouseService;
    
    
    @Autowired
    private LogService logService;

    
    @GetMapping("/list")
    public String listPigHouses(HttpSession session) {
        List<PigHouse> pigHouseList = pigHouseService.getAllPigHouses();
        session.setAttribute("pigHouseList", pigHouseList);
        
        List<LogEntity> logResultsNow = logService.getLogResultsNow();
        session.setAttribute("logResultsNow", logResultsNow);
        
        
        return "list";
    }

    
    @GetMapping("/info/{id}")
    public String getPigHouseById(@PathVariable Long id, Model model) {
        PigHouse pigHouse = pigHouseService.getPigHouseById(id);
        if (pigHouse != null) {
            model.addAttribute("pigHouse", pigHouse);
            
            List<LogEntity> logResults = logService.getLogResultsById(id);
            model.addAttribute("logResults", logResults);
            
            return "info"; // 상세 정보 페이지로 리턴
        } else {
            return "error/404"; // 돈사를 찾을 수 없는 경우
        }
    }
}
