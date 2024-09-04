window.addEventListener('DOMContentLoaded', event => {

	const datatablesSimple = document.getElementById('datatablesSimple');
	if (datatablesSimple) {
		new simpleDatatables.DataTable(datatablesSimple, {
			searchable: true,
			sortable : true,
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
			columns:[{
					select: [2, 3], sortable: false
			}]
		});
	}

});