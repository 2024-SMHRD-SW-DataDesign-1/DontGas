const apiKey = '603aa562f93c1b6e5fb4e7596aa820d5';

const getWeather = (city) => {
    const cityMap = {
        gwangju: '광주',
        seoul: '서울',
        busan: '부산'
    };
    const cityShow = cityMap[city] || '광주';

    const url = `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${apiKey}`;

    axios.get(url)
        .then(response => {
            const data = response.data;

            // 온도 변환 (켈빈 -> 섭씨)
            const temp = parseInt(data.main.temp - 273.15);

            // 날씨 아이콘
            const iconUrl = `https://openweathermap.org/img/wn/${data.weather[0].icon}@2x.png`;

            // 구름의 양에 따른 상태
            const clouds = data.clouds.all;
            let cloudStatus = '맑음';
            if (clouds > 90) {
                cloudStatus = '매우 흐림';
            } else if (clouds > 60) {
                cloudStatus = '흐림';
            } else if (clouds > 30) {
                cloudStatus = '약간 흐림';
            }

            // UI 업데이트
            document.getElementById('temp').textContent = `${temp}℃`;
            document.getElementById('city-show').textContent = cityShow;
            document.getElementById('cloud').textContent = cloudStatus;
            document.getElementById('weather-icon').src = iconUrl;
        })
        .catch(error => {
            console.error('날씨 데이터를 가져오는 데 실패했습니다.', error);
        });
};
