//package com.dontgas.dontgas.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.dontgas.dontgas.service.LogCH4Service;
//import com.dontgas.dontgas.service.TimeseriesService;
//
//@RestController
//public class TimeseriesController {
//	
//	@Autowired
//    private TimeseriesService timeseriesService;
//	
//	@Autowired
//    private LogCH4Service logCH4Service;
//
//    @GetMapping("/forecast")
//    public String forecast() {
//        return logCH4Service.getAllCh4s();
//    }
//}
