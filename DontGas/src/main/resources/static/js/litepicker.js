// Litepicker
// 
// The date pickers in Material Admin Pro
// are powered by the Litepicker plugin.
// Litepicker is a lightweight, no dependencies
// date picker that allows for date ranges
// and other options. For more usage details
// visit the Litepicker docs.
// 
// Litepicker Documentation
// https://wakirin.github.io/Litepicker

window.addEventListener('DOMContentLoaded', event => {

	const litepickerSingleDate = document.getElementById('litepickerSingleDate');
	if (litepickerSingleDate) {
		new Litepicker({
			element: litepickerSingleDate,
			format: 'MMM DD, YYYY'
		});
	}

	const litepickerDateRange = document.getElementById('litepickerDateRange');
	if (litepickerDateRange) {
		new Litepicker({
			element: litepickerDateRange,
			singleMode: false,
			format: 'MMM DD, YYYY'
		});
	}

	const litepickerDateRange2Months = document.getElementById('litepickerDateRange2Months');
	if (litepickerDateRange2Months) {
		new Litepicker({
			element: litepickerDateRange2Months,
			singleMode: false,
			numberOfMonths: 2,
			numberOfColumns: 2,
			format: 'MMM DD, YYYY'
		});
	}

	const litepickerRangePlugin = document.getElementById('litepickerRangePlugin');
	if (litepickerRangePlugin) {
		new Litepicker({
			element: litepickerRangePlugin,
			startDate: new Date(),
			endDate: new Date(),
			singleMode: false,
			numberOfMonths: 4,
			numberOfColumns: 4,
			format: 'YYYY. MM. DD',
			plugins: ['ranges'],
			lang: "ko",
			position: "top"
		});

	}

	const datePicker = document.getElementById('datePicker');
	if (datePicker) {
		const picker = new Litepicker({
			element: datePicker,
			startDate: new Date(),
			endDate: new Date(),
			firstDay: 0,
			singleMode: false,
			numberOfMonths: 3,
			numberOfColumns: 3,
			format: 'YYYY. MM. DD',
			plugins: ['ranges'],
			ranges: {
				customRanges: {
					'오늘': [new Date(), new Date()],
					'이번 달': [
						new Date(new Date().getFullYear(), new Date().getMonth(), 1),
						new Date(new Date().getFullYear(), new Date().getMonth() + 1, 0)
					],
					'저번 달': [
						new Date(new Date().getFullYear(), new Date().getMonth() - 1, 1),
						new Date(new Date().getFullYear(), new Date().getMonth(), 0)
					],
					'지난 한 주': [
						new Date(new Date().setMonth(new Date().getMonth() - 1)),
						new Date()
					],
					'지난 한 달': [
						new Date(new Date().setDate(new Date().getDate() - 7)),
						new Date()
					],
					'지난 1년': [
						new Date(new Date().getFullYear() - 1, new Date().getMonth(), new Date().getDate()),
						new Date()
					],
				}
			},
			lang: "ko",
			position: "top",
			showTooltip: false,
			setup: (picker) => {
				let startDate = picker.getStartDate();
				let endDate = picker.getEndDate();
				picker.on('selected', (startDate, endDate) => {
					if (startDate) {
						document.getElementById('dateRange').textContent = "(" + startDate.format('YYYY. MM. DD')  + " ~ " +  endDate.format('YYYY. MM. DD') + ")";
					}
				});
			}
		});

	}
});
