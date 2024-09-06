package com.dontgas.dontgas.controller;

import com.dontgas.dontgas.service.OnnxModelPredictor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@CrossOrigin(origins = "*")
public class PredictionController {

    private final OnnxModelPredictor predictor;

    public PredictionController() {
        try {
            String modelPath = "src/main/resources/static/model/model.onnx";
            predictor = new OnnxModelPredictor(modelPath);
        } catch (Exception e) {
            throw new RuntimeException("Failed to initialize ONNX model predictor", e);
        }
    }

    @GetMapping("/predict")
    public List<int[]> predict(
            @RequestParam List<Float> temp,
            @RequestParam List<Float> hum,
            @RequestParam List<Float> wind_deg,
            @RequestParam List<Float> wind_sp) {
        try {
            // 예측 결과를 저장할 리스트
            List<int[]> results = new ArrayList<>();
            
            // 각 데이터에 대해 예측 수행
            for (int i = 0; i < temp.size(); i++) {
                float[] inputData = {
                    temp.get(i),
                    hum.get(i),
                    wind_deg.get(i),
                    wind_sp.get(i)
                };
                // 예측 수행
                int[] prediction = predictor.predict(inputData);
                results.add(prediction); // 전체 배열을 리스트에 추가
            }
            
            return results;
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }
}
