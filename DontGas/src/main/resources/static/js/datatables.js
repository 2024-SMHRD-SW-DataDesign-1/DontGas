window.addEventListener('DOMContentLoaded', event => {

	const datatablesSimple = document.getElementById('datatablesSimple');
	if (datatablesSimple) {
		new simpleDatatables.DataTable(datatablesSimple, {
			searchable: true,
			sortable: true,
			labels: {
				perPage: "개 씩 보기",
				info: "{start} - {end} / {rows}",
				noRows: "데이터가 없습니다."
			},
			sortable: {
				customSort: (a, b, column) => {

					if (column === 0) { // 첫 번째 열에 대해 커스텀 정렬 적용

						const orderA = parseInt(a.querySelector('td img.o-level').getAttribute('data-order'), 10);
						const orderB = parseInt(b.querySelector('td img.o-level').getAttribute('data-order'), 10);

						return orderA - orderB;
					}

					// 기본 한국어 로케일을 사용하여 다른 열에 대해 정렬
					return a.localeCompare(b, 'ko', { sensitivity: 'base' });
				}
			}
		});
	}


	const datatablesModal = document.getElementById('datatablesModal');
	if (datatablesModal) {
		new simpleDatatables.DataTable(datatablesModal, {
			sortable: true,
			searchable: true,
			info: false,
			labels: {
				perPage: "개 씩 보기",
				info: "{start} - {end} / {rows}",
				noRows: "데이터가 없습니다."
			},
			columns: [{
				select: [2, 3], sortable: false
			}]
		});
	}

	const reportTable = document.getElementById('reportTable');
	if (reportTable) {
		const dataTable = new simpleDatatables.DataTable(reportTable, {
			sortable: true,
			searchable: true,
			perPageSelect: [["1개", 1], ["10개", 10], ["20개", 20], ["50개", 50], ["100개", 100], ["전부", 0]],
			info: false,
			labels: {
				perPage: " 다운로드",
				info: "{start} - {end} / {rows}",
				noRows: "데이터가 없습니다."
			}
		});

		
		function getDisplayedData() {
			const data = dataTable.data; // 전체 데이터 가져오기
			const currentPage = dataTable._currentPage; // 현재 페이지
			const perPage = dataTable.options.perPage; // 페이지당 항목 수

			// 현재 페이지에 표시된 데이터만 추출
			const start = (currentPage - 1) * perPage;
			const end = (currentPage * perPage);
			const displayedData = data.data.slice(start, end);

			updateChart_modal(displayedData);
			makeReport(displayedData);
			return displayedData;
		}

		document.getElementById('search').addEventListener('click', () => getDisplayedData());
	}




});