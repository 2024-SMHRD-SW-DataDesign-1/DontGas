<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Don't Gas - Monitoring</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/litepicker/dist/css/litepicker.css"
	rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<link href="css/lightstyles.css" rel="stylesheet" id="theme-style" />
<link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
<script data-search-pseudo-elements defer
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js"
	crossorigin="anonymous"></script>
</head>



<body class="nav-fixed body-custom">

	<!-- ��� -->
	<%@ include file="header.jsp" %>
	




	<div id="layoutSidenav">
	
	
		<!-- ���̵� �޴� -->
		<%@ include file="sidenav.jsp" %>

		
		
		<div id="layoutSidenav_content">
			<!-- header ��ú��� -->
			<main class="main-custom">
				<header
					class="page-header page-header-custom pb-10 info-page-header-custom">
					<div class="container-xl px-4">
						<div class="page-header-content pt-4">
							<div class="row align-items-center justify-content-between">
								<div class="col-auto mt-4">
									<h1 class="page-header-title page-header-title-custom">
										<div class="page-header-icon">
											<img
												src="${pageContext.request.contextPath}/images/monitoring.png"
												width="40px" height="40px">
										</div>

										���� ���� ����͸�
									</h1>
									<!-- �絷�� �̸� - ����1 or 2 ������ ������ �ֱ� -->
									<div class="page-header-subtitle page-header-subtitle-custom">
										�볪�� ��� ����1</div>
								</div>


							</div>
						</div>
					</div>


				</header>

				<!-- ����͸� ���� ������ ������ -->
				<div class="container-xl px-4 mt-n10-custom">
					<div class="row">

						<!-- ����͸� ���� ������ 1 - Ȳȭ���� ���� -->
						<div class="col-xxl-4 col-xl-12 mb-4">
							<div class="card h-100-custom">
								<div class="card-body h-100 p-5">
									<div class="row align-items-center">
										<div class="col-xl-8 col-xxl-12">
											<div
												class="text-center text-xl-start text-xxl-center mb-4 mb-xl-0 mb-xxl-4">
												<h1 class="text-primary-custom">Ȳȭ���� ����</h1>
												<div class="col-xl-4 col-xxl-12 text-center">
													<img class="o-level2"
														src="${pageContext.request.contextPath}/images/Soso.png"
														alt="����" style="max-width: 26rem" />
												</div>
											</div>
										</div>

										<!-- ��ġ, ���� ������ �� �ڸ�  -->
										<div>
											<p class="text-gray-700-custom mb-0">1 ppm</p>
											<p class="text-gray-700-custom mb-0">����</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- ����͸� ���� ������ 2 - �ϸ�Ͼ� ���� -->

						<div class="col-xxl-4 col-xl-12 mb-4">
							<div class="card h-100-custom">
								<div class="card-body h-100 p-5">
									<div class="row align-items-center">
										<div class="col-xl-8 col-xxl-12">
											<div
												class="text-center text-xl-start text-xxl-center mb-4 mb-xl-0 mb-xxl-4">
												<h1 class="text-primary-custom">�ϸ�Ͼ� ����</h1>
												<div class="col-xl-4 col-xxl-12 text-center">
													<img class="o-level2"
														src="${pageContext.request.contextPath}/images/VeryBad.png"
														alt="�ſ� ����" style="max-width: 26rem" />
												</div>
											</div>
										</div>
										<!-- ��ġ, ���� ������ �� �ڸ�  -->
										<div>
											<p class="text-gray-700-custom mb-0">2 ppm</p>
											<p class="text-gray-700-custom mb-0">�ſ� ����</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- ����͸� ���� ������ 3 - ��ź ���� -->
						<div class="col-xxl-4 col-xl-12 mb-4">
							<div class="card h-100-custom">
								<div class="card-body h-100 p-5">
									<div class="row align-items-center">
										<div class="col-xl-8 col-xxl-12">
											<div
												class="text-center text-xl-start text-xxl-center mb-4 mb-xl-0 mb-xxl-4">
												<h1 class="text-primary-custom">��ź ����</h1>
												<div class="col-xl-4 col-xxl-12 text-center">
													<img class="o-level2"
														src="${pageContext.request.contextPath}/images/Bad.png"
														alt="����" style="max-width: 26rem" />
												</div>
											</div>
										</div>
										<!-- ��ġ, ���� ������ �� �ڸ�  -->
										<div>

											<p class="text-gray-700-custom mb-0">1.5 ppb</p>
											<p class="text-gray-700-custom mb-0">����</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ���� ������ ���� -->





				<!-- �ǽð� ��� ���� ������ -->


				<div class="weather-container">
					<div class="weather-item temp">
						<span class="label">���</span> 
						<span class="value"><span id="temp">-</span>��C</span>
					</div>
					
					<div class="weather-item humidity">
						<span class="label">����</span> 
						<span class="value"><span id="hum">-</span>%</span>
					</div>
					
					<div class="weather-item wind-dir">
						<span class="label">ǳ��</span> 
						<span class="value"></span>
					</div>
					
					<div class="weather-item wind-speed">
						<span class="label">ǳ��</span> 
						<span class="value"><span id="windspeed">-</span>m/s</span>
					</div>
					
					<div class="weather-item weather-info">
						<span class="label">����</span> 
						<span class="value"><img id="weather"
							src=""></img></span>
					</div>
					
				</div>
				
				



				<div class="row">
					<!-- �ǽð� ��� ���� - ��� -->

				</div>
				<!-- �ǽð� ��� ���� ���� -->

				<!-- ��¥ ���� (�޷�) -->
				<div class="col-12 col-xl-auto mt-4">
					<div class="input-group input-group-joined border-0-calendar"
						style="width: 18rem">
						<span class="input-group-text"><img
							src="${pageContext.request.contextPath}/images/calendar.png"
							width="30px" height="30px"></span> <input
							class="form-control ps-0 pointer" id="litepickerRangePlugin"
							placeholder="Select date range..." />
					</div>
				</div>

				<!-- ��Ʈ �� �κ� (�Ʒ� ��¥ ĭ�� ������ ��¥ ���Բ� �ֱ�)-->
				<div class="row">
					<div class="col-xl-6 mb-4 chart-custom">
						<div class="card card-header-actions h-100-custom">
							<div class="card-header">
								2024.08.19 ~ 2024.08.26 ���� ��Һ� ����
								<div class="dropdown no-caret">
									<button
										class="btn btn-transparent-dark btn-icon dropdown-toggle"
										id="areaChartDropdownExample" type="button"
										data-bs-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<i class="text-gray-500" data-feather="more-vertical"></i>
									</button>
									<div
										class="dropdown-menu dropdown-menu-end animated--fade-in-up"
										aria-labelledby="areaChartDropdownExample">
										<a class="dropdown-item" href="#!">Last 12 Months</a> <a
											class="dropdown-item" href="#!">Last 30 Days</a> <a
											class="dropdown-item" href="#!">Last 7 Days</a> <a
											class="dropdown-item" href="#!">This Month</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="#!">Custom Range</a>
									</div>
								</div>
							</div>
							<div class="card-body">
								<div class="chart-area">
									<canvas id="myAreaChart" width="100%" height="30"></canvas>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- row �� -->
			</main>

			<%@ include file="footer.jsp" %>

		</div>
		<!-- layoutSidenav content �� -->
	</div>

	<!-- layoutSidenav �� -->




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="js/datatables.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/litepicker/dist/bundle.js"
		crossorigin="anonymous"></script>
	<script src="js/litepicker.js"></script>
	<script src="${pageContext.request.contextPath}/js/darkmode.js"></script>
	<script src="${pageContext.request.contextPath}/js/weather.js"></script>
</body>
</html>
