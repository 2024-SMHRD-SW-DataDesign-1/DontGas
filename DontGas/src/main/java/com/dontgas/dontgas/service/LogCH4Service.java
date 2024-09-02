//package com.dontgas.dontgas.service;
//
//import java.util.List;
//import java.util.stream.Collectors;
//import java.sql.Timestamp;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.dontgas.dontgas.entity.LogCH4;
//import com.dontgas.dontgas.repository.LogCH4Repository;
//
//@Service
//public class LogCH4Service {
//    @Autowired
//    private LogCH4Repository logCH4Repository;
//    
//    @Autowired
//    private TimeseriesService timeseriesService; 
//
//    public String getAllCh4s() {
//        List<LogCH4> logs = logCH4Repository.findAll();
//        
//        // 로그의 값을 JSON 형식으로 변환
//        String inputData = logs.stream()
//            .map(log -> String.format(
//                "{\"ch4_value\": %.2f, \"ch4_insert_time\": \"%s\"}", 
//                log.getCh4Value(), 
//                log.getCh4InsertTime().toString())) // 타임스탬프를 문자열로 변환
//            .collect(Collectors.joining(", "));
//        
//        // JSON 배열 형식으로 포맷팅
//        String jsonArray = "[" + inputData + "]";
//        
//        // 타임 시리즈 예측 서비스 호출
//        return timeseriesService.forecastTimeSeries(jsonArray);
//    }
//}
