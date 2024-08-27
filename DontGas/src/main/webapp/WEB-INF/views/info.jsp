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
	<nav
		class="topnav navbar navbar-expand shadow justify-content-between justify-content-sm-start navbar-light topnav-custom"
		id="sidenavAccordion">
		<!-- Sidenav Toggle Button-->
		<button
			class="btn btn-icon btn-transparent-dark order-1 order-lg-0 me-2 ms-lg-2 me-lg-0 sidenav-toggle-btn-custom"
			id="sidebarToggle">
			<i data-feather="menu"></i>
		</button>

		<!-- 돈사 리스트 보기로 이동-->
		<a class="navbar-brand pe-3 ps-4 ps-lg-2 navbar-custom" href="list">Don't
			Gas</a>
		<!-- 검색바 -->
		<form class="form-inline me-auto d-none d-lg-block me-3">
			<div
				class="input-group input-group-joined input-group-solid search-input-custom">
				<input class="form-control pe-0" type="search" placeholder="Search"
					aria-label="Search" />
				<div class="input-group-text">
					<i data-feather="search"></i>
				</div>
			</div>
		</form>



		<!-- Navbar Items-->
		<ul class="navbar-nav align-items-center ms-auto">
			<!-- Alerts Dropdown-->
			<li
				class="nav-item dropdown no-caret d-none d-sm-block me-3 dropdown-notifications">
				<a
				class="btn btn-icon btn-transparent-dark dropdown-toggle alert-custom"
				id="navbarDropdownAlerts" href="javascript:void(0);" role="button"
				data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img
					class="btn-icon"
					src="${pageContext.request.contextPath}/images/bell.png"></img></a>
				<div
					class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up"
					aria-labelledby="navbarDropdownAlerts">
					<h6 class="dropdown-header dropdown-notifications-header">
						<i class="me-2" data-feather="bell"></i> Alerts Center
					</h6>

					<!-- Example Alert 1-->
					<a class="dropdown-item dropdown-notifications-item" href="#!">
						<div class="dropdown-notifications-item-icon bg-warning">
							<i data-feather="activity"></i>
						</div>
						<div class="dropdown-notifications-item-content">
							<div class="dropdown-notifications-item-content-details">December
								29, 2021</div>
							<div class="dropdown-notifications-item-content-text">This
								is an alert message. It's nothing serious, but it requires your
								attention.</div>
						</div>
					</a>
					<!-- Example Alert 2-->
					<a class="dropdown-item dropdown-notifications-item" href="#!">
						<div class="dropdown-notifications-item-icon bg-info">
							<i data-feather="bar-chart"></i>
						</div>
						<div class="dropdown-notifications-item-content">
							<div class="dropdown-notifications-item-content-details">December
								22, 2021</div>
							<div class="dropdown-notifications-item-content-text">A new
								monthly report is ready. Click here to view!</div>
						</div>
					</a>
					<!-- Example Alert 3-->
					<a class="dropdown-item dropdown-notifications-item" href="#!">
						<div class="dropdown-notifications-item-icon bg-danger">
							<i class="fas fa-exclamation-triangle"></i>
						</div>
						<div class="dropdown-notifications-item-content">
							<div class="dropdown-notifications-item-content-details">December
								8, 2021</div>
							<div class="dropdown-notifications-item-content-text">Critical
								system failure, systems shutting down.</div>
						</div>
					</a>
					<!-- Example Alert 4-->
					<a class="dropdown-item dropdown-notifications-item" href="#!">
						<div class="dropdown-notifications-item-icon bg-success">
							<i data-feather="user-plus"></i>
						</div>
						<div class="dropdown-notifications-item-content">
							<div class="dropdown-notifications-item-content-details">December
								2, 2021</div>
							<div class="dropdown-notifications-item-content-text">New
								user request. Woody has requested access to the organization.</div>
						</div>
					</a> <a class="dropdown-item dropdown-notifications-footer" href="#!">View
						All Alerts</a>
				</div>
			</li>


			<!-- 사용자 정보 -->
			<li class="nav-item dropdown no-caret dropdown-user me-3 me-lg-4">
				<a class="btn btn-icon btn-transparent-dark dropdown-toggle"
				id="navbarDropdownUserImage" href="javascript:void(0);"
				role="button" data-bs-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"><img class="img-fluid"
					src="${pageContext.request.contextPath}/images/user_man1.png" /></a>
				<div
					class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up"
					aria-labelledby="navbarDropdownUserImage">
					<h6 class="dropdown-header d-flex align-items-center">
						<img class="dropdown-user-img"
							src="${pageContext.request.contextPath}/images/user_man1.png" />
						<div class="dropdown-user-details">
							<div class="dropdown-user-details-name">포도</div>
							<div class="dropdown-user-details-email">podo@pig.com</div>
						</div>
					</h6>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="loginpage">
						<div class="dropdown-item-icon">
							<i data-feather="log-out"></i>
						</div> Logout
					</a>
				</div>
			</li>
		</ul>
	</nav>




	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sidenav shadow-right sidenav-light sidenav-custom">

			</nav>
		</div>
		<div id="layoutSidenav_content">
			<!-- header 대시보드 -->
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

										돈사 악취 모니터링
									</h1>
									<!-- 양돈장 이름 - 돈사1 or 2 순으로 데이터 넣기 -->
									<div class="page-header-subtitle page-header-subtitle-custom">
										대나무 축산 돈사1</div>
								</div>


							</div>
						</div>
					</div>


				</header>

				<!-- 모니터링 메인 콘텐츠 시작점 -->
				<div class="container-xl px-4 mt-n10-custom">
					<div class="row">

						<!-- 모니터링 메인 콘텐츠 1 - 황화수소 레벨 -->
						<div class="col-xxl-4 col-xl-12 mb-4">
							<div class="card h-100-custom">
								<div class="card-body h-100 p-5">
									<div class="row align-items-center">
										<div class="col-xl-8 col-xxl-12">
											<div
												class="text-center text-xl-start text-xxl-center mb-4 mb-xl-0 mb-xxl-4">
												<h1 class="text-primary-custom">황화수소 레벨</h1>
												<div class="col-xl-4 col-xxl-12 text-center">
													<img class="o-level2"
														src="${pageContext.request.contextPath}/images/Soso.png"
														alt="보통" style="max-width: 26rem" />
												</div>
											</div>
										</div>

										<!-- 수치, 상태 데이터 들어갈 자리  -->
										<div>
											<p class="text-gray-700-custom mb-0">1 ppm</p>
											<p class="text-gray-700-custom mb-0">보통</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- 모니터링 메인 콘텐츠 2 - 암모니아 레벨 -->

						<div class="col-xxl-4 col-xl-12 mb-4">
							<div class="card h-100-custom">
								<div class="card-body h-100 p-5">
									<div class="row align-items-center">
										<div class="col-xl-8 col-xxl-12">
											<div
												class="text-center text-xl-start text-xxl-center mb-4 mb-xl-0 mb-xxl-4">
												<h1 class="text-primary-custom">암모니아 레벨</h1>
												<div class="col-xl-4 col-xxl-12 text-center">
													<img class="o-level2"
														src="${pageContext.request.contextPath}/images/VeryBad.png"
														alt="매우 나쁨" style="max-width: 26rem" />
												</div>
											</div>
										</div>
										<!-- 수치, 상태 데이터 들어갈 자리  -->
										<div>
											<p class="text-gray-700-custom mb-0">2 ppm</p>
											<p class="text-gray-700-custom mb-0">매우 나쁨</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- 모니터링 메인 콘텐츠 3 - 메탄 레벨 -->
						<div class="col-xxl-4 col-xl-12 mb-4">
							<div class="card h-100-custom">
								<div class="card-body h-100 p-5">
									<div class="row align-items-center">
										<div class="col-xl-8 col-xxl-12">
											<div
												class="text-center text-xl-start text-xxl-center mb-4 mb-xl-0 mb-xxl-4">
												<h1 class="text-primary-custom">메탄 레벨</h1>
												<div class="col-xl-4 col-xxl-12 text-center">
													<img class="o-level2"
														src="${pageContext.request.contextPath}/images/Bad.png"
														alt="나쁨" style="max-width: 26rem" />
												</div>
											</div>
										</div>
										<!-- 수치, 상태 데이터 들어갈 자리  -->
										<div>

											<p class="text-gray-700-custom mb-0">1.5 ppb</p>
											<p class="text-gray-700-custom mb-0">나쁨</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 메인 콘텐츠 끝점 -->





				<!-- 실시간 기상 정보 시작점 -->


				<div class="weather-container">
					<div class="weather-item temp">
						<span class="label">기온</span> 
						<span class="value"><span id="temp">-</span>°C</span>
					</div>
					
					<div class="weather-item humidity">
						<span class="label">습도</span> 
						<span class="value"><span id="hum">-</span>%</span>
					</div>
					
					<div class="weather-item wind-dir">
						<span class="label">풍향</span> 
						<span class="value"><img id="winddir" src="${pageContext.request.contextPath}/images/illust_direction/direction_South.png" alt="Wind Direction Icon"></span>
					</div>
					
					<div class="weather-item wind-speed">
						<span class="label">풍속</span> 
						<span class="value"><span id="windspeed">-</span>m/s</span>
					</div>
					
					<div class="weather-item weather-info">
						<span class="label">날씨</span> 
						<span class="value"><img id="weather"
							src=""></img></span>
					</div>
					
				</div>
				
				



				<div class="row">
					<!-- 실시간 기상 정보 - 기온 -->

				</div>
				<!-- 실시간 기상 정보 끝점 -->

				<!-- 날짜 선택 (달력) -->
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

				<!-- 차트 들어갈 부분 (아래 날짜 칸에 선택한 날짜 들어가게끔 넣기)-->
				<div class="row">
					<div class="col-xl-6 mb-4 chart-custom">
						<div class="card card-header-actions h-100-custom">
							<div class="card-header">
								2024.08.19 ~ 2024.08.26 악취 요소별 추이
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
				<!-- row 끝 -->
			</main>

			<!--  다크 모드  -->
			<img id="modbtn"
				src="${pageContext.request.contextPath}/images/darkpig.png"
				alt="다크모드 버튼" onclick="toggleDarkMode()"
				data-light-src="${pageContext.request.contextPath}/images/lightpig.png"
				data-dark-src="${pageContext.request.contextPath}/images/darkpig.png">

			<!--  footer  -->
			<footer class="footer-admin mt-auto footer-custom">
				<div class="container-xl px-4">
					<div class="row">
						<div class="copyright-footer">Copyright &copy; Don't Gas
							2024</div>
					</div>
				</div>
			</footer>

		</div>
		<!-- layoutSidenav content 끝 -->
	</div>

	<!-- layoutSidenav 끝 -->




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
