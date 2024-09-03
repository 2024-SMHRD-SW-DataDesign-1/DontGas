//package com.dontgas.dontgas.interceptor;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Component;
//import org.springframework.web.servlet.HandlerInterceptor;
//
//import com.dontgas.dontgas.entity.PigHouse;
//import com.dontgas.dontgas.service.PigHouseService;
//
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import java.util.List;
//
//@Component
//public class DataInterceptor implements HandlerInterceptor {
//
//    @Autowired
//    private PigHouseService pigHouseService;
//
//    @Override
//    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        // DB에서 데이터 조회
//        List<PigHouse> data = pigHouseService.getAllPigHouses();
//        
////        // request에 데이터 저장
////        request.setAttribute("pigHouseList", data);
//        
//         // Session에 데이터 저장
//         request.getSession().setAttribute("pigHouseList", data);
//
//        return true; // 다음 인터셉터나 컨트롤러로 요청을 진행
//    }
//}
