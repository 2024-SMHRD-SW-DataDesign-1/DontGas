package com.dontgas.dontgas.service;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class TimeseriesService {
	private final String API_URL = "https://api-inference.huggingface.co/models/ibm-granite/granite-timeseries-ttm-v1";
    private final String API_TOKEN = "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"; // 발급받은 API 토큰을 입력하세요.

    public String forecastTimeSeries(String inputData) {
        RestTemplate restTemplate = new RestTemplate();
        
        HttpHeaders headers = new HttpHeaders();
        headers.set("Authorization", "Bearer " + API_TOKEN);
        
        String requestJson = "{\"inputs\": " + inputData + "}";
        HttpEntity<String> entity = new HttpEntity<>(requestJson, headers);
        
        ResponseEntity<String> response = restTemplate.exchange(API_URL, HttpMethod.POST, entity, String.class);
        
        return response.getBody();
    }
}
