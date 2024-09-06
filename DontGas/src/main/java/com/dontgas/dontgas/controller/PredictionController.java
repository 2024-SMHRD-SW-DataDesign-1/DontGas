package com.dontgas.dontgas.controller;

import com.dontgas.dontgas.service.OnnxModelPredictor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PredictionController {

    private final OnnxModelPredictor predictor;

    public PredictionController() {
        try {
            String modelPath = "/model/model.onnx";
            predictor = new OnnxModelPredictor(modelPath);
        } catch (Exception e) {
            throw new RuntimeException("Failed to initialize ONNX model predictor", e);
        }
    }

    @GetMapping("/predict")
    public float[] predict(
            @RequestParam float temp,
            @RequestParam float hum,
            @RequestParam float wind_deg,
            @RequestParam float wind_sp) {
        try {
            float[] inputData = {temp, hum, wind_deg, wind_sp};
            return predictor.predict(inputData);
        } catch (Exception e) {
            e.printStackTrace();
            return new float[]{};
        }
    }
}
