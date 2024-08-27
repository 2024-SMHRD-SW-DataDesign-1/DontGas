async function getWeather() {
            const apiKey = '603aa562f93c1b6e5fb4e7596aa820d5';
            const city = 'gwangju';
            const url = `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${apiKey}`;

            try {
                const response = await fetch(url);
                const data = await response.json();

                // Convert temperature from Kelvin to Celsius
                const temp = parseInt(data.main.temp - 273.15);
                const humidity = data.main.humidity;
                const windspeed =data.wind['speed'];
                const clouds = data.clouds['all'];
                const winddir = data.wind['deg'];




                // Update the DOM with the temperature
                document.getElementById('temp').textContent = `${temp}`;
                document.getElementById('hum').textContent = `${humidity}`;
                document.getElementById('windspeed').textContent = `${windspeed}`;
                document.getElementById('clouds').textContent = `${clouds}`;
                document.getElementById('winddir').textContent = `${winddir}`;

                
            } catch (error) {
                console.error('Error fetching the weather data:', error);
            }
        }

        // Call the function to get weather data when the page loads
        getWeather();
