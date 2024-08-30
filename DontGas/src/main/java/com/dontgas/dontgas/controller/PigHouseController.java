package com.dontgas.dontgas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.dontgas.dontgas.entity.PigHouse;
import com.dontgas.dontgas.service.PigHouseService;

@Controller
public class PigHouseController {

    @Autowired
    private PigHouseService pigHouseService;

//    @GetMapping("/list")
//    public String listPigHouses(Model model) {
//        List<PigHouse> pigHouseList = pigHouseService.getAllPigHouses();
//        model.addAttribute("pigHouseList", pigHouseList);
//        return "list";
//    }
    
    @GetMapping("/info/{id}")
    public String getPigHouseById(@PathVariable Long id, Model model) {
        PigHouse pigHouse = pigHouseService.getPigHouseById(id);
        if (pigHouse != null) {
            model.addAttribute("pigHouse", pigHouse);
            return "info"; // 상세 정보 페이지로 리턴
        } else {
            return "error/404"; // 돈사를 찾을 수 없는 경우
        }
    }
}
