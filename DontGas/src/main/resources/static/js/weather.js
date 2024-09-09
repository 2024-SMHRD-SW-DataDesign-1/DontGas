async function getWeather(city) {
            const apiKey = '603aa562f93c1b6e5fb4e7596aa820d5';
            const url = `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${apiKey}`;

            try {
                const response = await fetch(url);
                const data = await response.json();

                // Convert temperature from Kelvin to Celsius
                const temp = parseInt(data.main.temp - 273.15);
                const humidity = data.main.humidity;
                const windspeed =data.wind['speed'].toFixed(1);
                const weather_icon = `https://openweathermap.org/img/wn/${data.weather[0].icon}@2x.png`;
                const winddir = data.wind['deg'];

                // Update the DOM with the temperature
                document.getElementById('temp').textContent = `${temp}`;
                document.getElementById('hum').textContent = `${humidity}`;
                document.getElementById('windspeed').textContent = `${windspeed}`;
                document.getElementById('weather').src = `${weather_icon}`;
                document.getElementById('winddir').style.transform = `rotate(${winddir}deg)`;


                
            } catch (error) {
                console.error('Error fetching the weather data:', error);
            }
        }
        
        
        // 예측 : https://api.openweathermap.org/data/2.5/forecast?q=Jeju&appid=603aa562f93c1b6e5fb4e7596aa820d5
        async function getWeatherForecast(city) {
		    const apiKey = '603aa562f93c1b6e5fb4e7596aa820d5';
		    const url = `https://api.openweathermap.org/data/2.5/forecast?q=${city}&appid=${apiKey}`;
		
		    try {
		        const response = await fetch(url);
		        const data = await response.json();
		        
		        // Extract data for prediction
		        const forecast = data.list.slice(7, 16).map(entry => ({
		            temp: parseInt(entry.main.temp - 273.15), // Convert from Kelvin to Celsius
		            hum: entry.main.humidity,
		            wind_deg: entry.wind.deg,
		            wind_sp: entry.wind.speed.toFixed(1),
		            dt_txt: entry.dt_txt
		        }));
		
		        // Send forecast data for prediction
		        const results = await predictWithWeatherData(forecast);
		        
		        const labels = forecast.map(entry => new Date(entry.dt_txt));
        		const h2sData = results.map(result => result[0]);
        		const nh3Data = results.map(result => result[1]);
        		const ch4Data = results.map(result => result[2]);
        		
        		updatePredictChart(labels, h2sData, nh3Data, ch4Data);
		
		    } catch (error) {
		        console.error('Error fetching the weather forecast data:', error);
		    }
		}
		
		// Call the function to get weather data when the page loads
        getWeather(city);
        getWeatherForecast(city);
