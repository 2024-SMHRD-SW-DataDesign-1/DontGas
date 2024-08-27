<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<div id="layoutSidenav_nav">
	<nav class="sidenav shadow-right sidenav-light sidenav-custom">
		<div class="sidenav-menu">
			<div class="nav accordion" id="accordionSidenav">
				<p class="nav-link collapsed sidemenu-custom" data-bs-toggle="modal"
					data-bs-target="#exampleModalLg" aria-expanded="false"
					aria-controls="collapseDashboards">
					csv 다운로드 <img class="btn-icon"
						src="${pageContext.request.contextPath}/images/csv-download.png"></img>
				</p>
			</div>
		</div>
	</nav>
</div>



<!-- 리포트 다운로드 모달창 -->
<div class="modal fade" id="exampleModalLg" tabindex="-1" role="dialog"
	aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Large Modal</h5>
				<button class="btn-close" type="button" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<p>This is an example of a large modal.</p>
			</div>
			<div class="modal-footer">
				<button class="btn btn-primary" type="button"
					data-bs-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
F
