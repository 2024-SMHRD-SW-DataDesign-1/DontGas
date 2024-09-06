async function predictWithWeatherData(forecast) {

    // Forecast 데이터를 쿼리 파라미터로 변환
    const queryParams = forecast.map(data => 
        `temp=${data.temp}&hum=${data.hum}&wind_deg=${data.wind_deg}&wind_sp=${data.wind_sp}`
    ).join('&');

    const url = `/predict?${queryParams}`;

    try {
        const response = await fetch(url, {
            method: 'GET'
        });

        if (!response.ok) {
            throw new Error('Failed to make prediction request');
        }

        const data = await response.json();
        return data;

    } catch (error) {
        console.error('Error making prediction request:', error);
        return null;
    }
}
