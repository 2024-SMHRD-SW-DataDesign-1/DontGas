window.addEventListener('DOMContentLoaded', event => {

    const datatablesSimple = document.getElementById('datatablesSimple');
    if (datatablesSimple) {
        new simpleDatatables.DataTable(datatablesSimple, {
			searchable: false,
			labels: {
           		perPage: "개 씩 보기",
                info: "{start} - {end} / {rows}"
            },
            sortable: {
            customSort: (a, b, column) => {

                // 기본 한국어 로케일을 사용하여 다른 열에 대해 정렬
                return a.localeCompare(b, 'ko', { sensitivity: 'base' });
            }
        },
            columns: [
			    { select: [2], sortable: false }, // 정렬 비활성화
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