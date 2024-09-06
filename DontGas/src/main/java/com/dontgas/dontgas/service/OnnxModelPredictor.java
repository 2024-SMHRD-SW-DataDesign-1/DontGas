package com.dontgas.dontgas.service;

import ai.onnxruntime.OnnxTensor;
import ai.onnxruntime.OrtEnvironment;
import ai.onnxruntime.OrtSession;
import ai.onnxruntime.OrtException;

import java.util.HashMap;
import java.util.Map;

public class OnnxModelPredictor {

    private OrtEnvironment env;
    private OrtSession session;

    public OnnxModelPredictor(String modelPath) throws OrtException {
        // ONNX Runtime 환경 설정
        env = OrtEnvironment.getEnvironment();
        session = env.createSession(modelPath, new OrtSession.SessionOptions());
    }

    public float[] predict(float[] inputData) throws OrtException {
        // 입력 데이터 준비
        OnnxTensor inputTensor = OnnxTensor.createTensor(env, new float[][]{inputData});

        // 입력 데이터를 맵에 추가
        Map<String, OnnxTensor> inputs = new HashMap<>();
        inputs.put("float_input", inputTensor);  // ONNX 모델의 입력 이름에 맞게 설정

        // 예측 수행
        OrtSession.Result results = session.run(inputs);

        // 예측 결과 반환
        float[] output = (float[]) results.get(0).getValue();
        return output;
    }

    public void close() throws OrtException {
        session.close();
        env.close();
    }
}
