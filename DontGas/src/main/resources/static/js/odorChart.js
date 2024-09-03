// Set new default font family and font color to mimic Bootstrap's default styling
(Chart.defaults.global.defaultFontFamily = "Metropolis"),
'-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = "#858796";

function number_format(number, decimals, dec_point, thousands_sep) {
    // *     example: number_format(1234.56, 2, ',', ' ');
    // *     return: '1 234,56'
    number = (number + "").replace(",", "").replace(" ", "");
    var n = !isFinite(+number) ? 0 : +number,
        prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
        sep = typeof thousands_sep === "undefined" ? "," : thousands_sep,
        dec = typeof dec_point === "undefined" ? "." : dec_point,
        s = "",
        toFixedFix = function(n, prec) {
            var k = Math.pow(10, prec);
            return "" + Math.round(n * k) / k;
        };
    // Fix for IE parseFloat(0.55).toFixed(0) = 0;
    s = (prec ? toFixedFix(n, prec) : "" + Math.round(n)).split(".");
    if (s[0].length > 3) {
        s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
    }
    if ((s[1] || "").length < prec) {
        s[1] = s[1] || "";
        s[1] += new Array(prec - s[1].length + 1).join("0");
    }
    return s.join(dec);
}




// Area Chart Example
var ctx = document.getElementById("odorChart-area");
var odorChart = new Chart(ctx, {
    type: "line",
    data: {
        labels: [],
        datasets: [ 
            {
                label: '황화수소',
                lineTension: 0.3,
                backgroundColor: 'rgba(0, 97, 242, 0.05)',
                borderColor: 'rgba(0, 97, 242, 1)',
                pointRadius: 3,
                pointBackgroundColor: 'rgba(0, 97, 242, 1)',
                pointBorderColor: 'rgba(0, 97, 242, 1)',
                pointHoverRadius: 3,
                pointHoverBackgroundColor: 'rgba(0, 97, 242, 1)',
                pointHoverBorderColor: 'rgba(0, 97, 242, 1)',
                pointHitRadius: 10,
                pointBorderWidth: 2,
                data: []  // H2S Values
            },
            {
                label: '암모니아',
                lineTension: 0.3,
                backgroundColor: 'rgba(255, 193, 7, 0.05)',
                borderColor: 'rgba(255, 193, 7, 1)',
                pointRadius: 3,
                pointBackgroundColor: 'rgba(255, 193, 7, 1)',
                pointBorderColor: 'rgba(255, 193, 7, 1)',
                pointHoverRadius: 3,
                pointHoverBackgroundColor: 'rgba(255, 193, 7, 1)',
                pointHoverBorderColor: 'rgba(255, 193, 7, 1)',
                pointHitRadius: 10,
                pointBorderWidth: 2,
                data: []  // NH3 Values
            },
            {
                label: '메탄',
                lineTension: 0.3,
                backgroundColor: 'rgba(40, 167, 69, 0.05)',
                borderColor: 'rgba(40, 167, 69, 1)',
                pointRadius: 3,
                pointBackgroundColor: 'rgba(40, 167, 69, 1)',
                pointBorderColor: 'rgba(40, 167, 69, 1)',
                pointHoverRadius: 3,
                pointHoverBackgroundColor: 'rgba(40, 167, 69, 1)',
                pointHoverBorderColor: 'rgba(40, 167, 69, 1)',
                pointHitRadius: 10,
                pointBorderWidth: 2,
                data: []  // CH4 Values
            }
        ]
    },
    options: {
        maintainAspectRatio: false,
        layout: {
            padding: {
                left: 10,
                right: 25,
                top: 25,
                bottom: 0
            }
        },
        scales: {
            xAxes: [{
                time: {
                    unit: "date"
                },
                gridLines: {
                    display: false,
                    drawBorder: false
                },
                ticks: {
                    maxTicksLimit: 7
                }
            }],
            yAxes: [{
                ticks: {
                    maxTicksLimit: 5,
                    padding: 10,
                    // Include a dollar sign in the ticks
                    callback: function(value, index, values) {
                        return number_format(value) + "ppm";
                    }
                },
                gridLines: {
                    color: "rgb(234, 236, 244)",
                    zeroLineColor: "rgb(234, 236, 244)",
                    drawBorder: false,
                    borderDash: [2],
                    zeroLineBorderDash: [2]
                }
            }]
        },
        legend: {
            display: false
        },
        tooltips: {
            backgroundColor: "rgb(255,255,255)",
            bodyFontColor: "#858796",
            titleMarginBottom: 10,
            titleFontColor: "#6e707e",
            titleFontSize: 14,
            borderColor: "#dddfeb",
            borderWidth: 1,
            xPadding: 15,
            yPadding: 15,
            displayColors: false,
            intersect: false,
            mode: "index",
            caretPadding: 10,
            callbacks: {
                label: function(tooltipItem, chart) {
                    var datasetLabel =
                        chart.datasets[tooltipItem.datasetIndex].label || "";
                    return datasetLabel + ": " + number_format(tooltipItem.yLabel) + "ppm";
                }
            }
        }
    }
});

function updateChart(startDate, endDate, logResultsJson) {

    	const filteredResults = logResultsJson.filter(log => {
            let date = new Date(log.insertTime);
            
            function formatDate(date) {
			    const year = date.getFullYear();
			    const month = String(date.getMonth() + 1).padStart(2, '0');
			    const day = String(date.getDate()).padStart(2, '0');
			    return `${year}. ${month}. ${day}`;
			}
			
			date = formatDate(date);
			
            function parseDate(date) {
			    const parts = date.split('.').map(part => part.trim());
			    return new Date(parts[0], parts[1] - 1, parts[2]);
			}
			date = parseDate(date)
            return date >= new Date(startDate) && date <= new Date(endDate);
        });

        const labels = filteredResults.map(log => log.insertTime);
        const h2sValues = filteredResults.map(log => log.h2sValue);
        const nh3Values = filteredResults.map(log => log.nh3Value);
        const ch4Values = filteredResults.map(log => log.ch4Value);
		
        odorChart.data.labels = labels;
		odorChart.data.datasets[0].data = document.getElementById('h2sCheckbox').checked ? h2sValues : [];
    	odorChart.data.datasets[1].data = document.getElementById('nh3Checkbox').checked ? nh3Values : [];
   		odorChart.data.datasets[2].data = document.getElementById('ch4Checkbox').checked ? ch4Values : [];
   		document.getElementById('h2sCheckbox').addEventListener('change', () => updateChart(startDate, endDate, logResultsJson));
        document.getElementById('nh3Checkbox').addEventListener('change', () => updateChart(startDate, endDate, logResultsJson));
        document.getElementById('ch4Checkbox').addEventListener('change', () => updateChart(startDate, endDate, logResultsJson));
        odorChart.update();
}
