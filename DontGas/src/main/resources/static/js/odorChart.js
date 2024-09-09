(Chart.defaults.global.defaultFontFamily = "Metropolis"),
	'-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = "#858796";

function number_format(number, decimals, dec_point, thousands_sep) {
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



// 악취 추이
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
				top: 5,
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
			display: true
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




// 악취 예측
function updatePredictChart(labels, h2sData, nh3Data, ch4Data) {

	var ctx2 = document.getElementById("odorChart-area2");
	var odorChart2 = new Chart(ctx2, {
		type: "line",
		data: {
			labels: labels,
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
					data: h2sData
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
					data: nh3Data
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
					data: ch4Data
				}
			]
		},
		options: {
			maintainAspectRatio: false,
			layout: {
				padding: {
					left: 10,
					right: 25,
					top: 5,
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
						maxTicksLimit: 7,
						callback: function(value, index, values) {
							var date = new Date(value);
							return date.toLocaleTimeString('ko-KR', {
								hour: '2-digit',
								minute: '2-digit'
							});
						}
					}
				}],
				yAxes: [{
					ticks: {
						maxTicksLimit: 5,
						padding: 10,
						callback: function(value, index, values) {
							switch (index) {
								case 4:
									return '매우 좋음';
								case 3:
									return '좋음';
								case 2:
									return '보통';
								case 1:
									return '나쁨';
								case 0:
									return '매우 나쁨';
								default:
									return value; // 그 외의 경우, 기본값 반환
							}
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
				display: true
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
							
							switch (tooltipItem.yLabel) {
								case 4:
									return datasetLabel + ": " + '매우 좋음';
								case 3:
									return datasetLabel + ": " + '좋음';
								case 2:
									return datasetLabel + ": " + '보통';
								case 1:
									return datasetLabel + ": " + '나쁨';
								case 0:
									return datasetLabel + ": " + '매우 나쁨';
								default:
									return value; // 그 외의 경우, 기본값 반환
							}
					}
				}
			}
		}
	});
}




// 악취 추이(다운로드)
var ctx3 = document.getElementById("odorChart-area_modal");
var odorChart_modal = new Chart(ctx3, {
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
				top: 5,
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
			display: true
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


// 악취 추이 및 예측 업데이트
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


// 악취 추이(다운로드) 업데이트
function updateChart_modal(displayedData) {

	// 데이터를 담을 배열 초기화
	const labels = [];
	const h2sValues = [];
	const nh3Values = [];
	const ch4Values = [];

	// 각 객체의 cells 배열에서 데이터 추출
	displayedData.forEach(item => {
		labels.push(item.cells[3].text);  // insertTime
		h2sValues.push(item.cells[0].text);  // h2sValue
		nh3Values.push(item.cells[1].text);  // nh3Value
		ch4Values.push(item.cells[2].text);  // ch4Value
	});

	odorChart_modal.data.labels = labels;
	odorChart_modal.data.datasets[0].data = h2sValues;
	odorChart_modal.data.datasets[1].data = nh3Values;
	odorChart_modal.data.datasets[2].data = ch4Values;
	odorChart_modal.update();
}
