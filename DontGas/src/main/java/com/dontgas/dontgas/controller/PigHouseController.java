package com.dontgas.dontgas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.dontgas.dontgas.entity.PigHouse;
import com.dontgas.dontgas.service.PigHouseService;

@Controller
public class PigHouseController {

    @Autowired
    private PigHouseService pigHouseService;

    @GetMapping("/list")
    public String listPigHouses(Model model) {
        List<PigHouse> pigHouseList = pigHouseService.getAllPigHouses();
        model.addAttribute("pigHouseList", pigHouseList);
        return "list";
    }
}
