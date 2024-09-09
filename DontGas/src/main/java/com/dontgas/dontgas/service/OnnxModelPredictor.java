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

    public int[] predict(float[] inputData) throws OrtException {
        // 입력 데이터 준비
        OnnxTensor inputTensor = OnnxTensor.createTensor(env, new float[][]{inputData});

        // 입력 데이터를 맵에 추가
        Map<String, OnnxTensor> inputs = new HashMap<>();
        inputs.put("float_input", inputTensor);  // ONNX 모델의 입력 이름에 맞게 설정

        // 예측 수행
        OrtSession.Result results = session.run(inputs);

        // 예측 결과 가져오기
        Object result = results.get(0).getValue();
        
        // 결과가 2D 배열일 경우 1D 배열로 변환
        float[] output;
        if (result instanceof float[][]) {
            float[][] resultArray = (float[][]) result;
            output = resultArray[0];  // 첫 번째 행을 선택
        } else if (result instanceof float[]) {
            output = (float[]) result;
        } else {
            throw new IllegalStateException("Unexpected output type: " + result.getClass().getName());
        }

        // 결과를 정수로 변환
        int[] intOutput = new int[output.length];
        for (int i = 0; i < output.length; i++) {
            intOutput[i] = Math.round(output[i]);  // 소수점 반올림
        }

        return intOutput;
    }

    public void close() throws OrtException {
        session.close();
        env.close();
    }
}
