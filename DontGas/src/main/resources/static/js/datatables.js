window.addEventListener('DOMContentLoaded', event => {

    const datatablesSimple = document.getElementById('datatablesSimple');
    if (datatablesSimple) {
        new simpleDatatables.DataTable(datatablesSimple, {
			labels: {
           		perPage: "",
                info: "{start} - {end} / {rows}"
            },
            columns: [
			    { select: [2, 3, 4], sortable: false }, // 정렬 비활성화
			]
		});
    }
    
    
    const datatablesModal = document.getElementById('datatablesModal');
    if (datatablesModal) {
        new simpleDatatables.DataTable(datatablesModal, {
			perPage: Number.MAX_SAFE_INTEGER,  // 한 페이지에 표시할 항목 수
			perPageSelect: "",
			sortable: false,
			searchable: false,
			info: false,
		    labels: {
		        perPage: "",
		        info: "",
		        noRows : "데이터가 없습니다."
		    }
		});
    }
});