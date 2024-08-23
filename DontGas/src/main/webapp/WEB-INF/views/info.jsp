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
					<a class="dropdown-item" href="login">
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
									<div class="page-header-subtitle page-header-subtitle-custom">Example
										dashboard overview and content summary</div>
								</div>

								<!-- 날짜 선택 (달력) -->
								<div class="col-12 col-xl-auto mt-4">
									<div class="input-group input-group-joined border-0"
										style="width: 18rem">
										<span class="input-group-text"><img
											src="${pageContext.request.contextPath}/images/calendar.png"
											width="30px" height="30px"></span> <input
											class="form-control ps-0 pointer" id="litepickerRangePlugin"
											placeholder="Select date range..." />
									</div>
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
                                                <div class="col-xl-4 col-xxl-12 text-center"><img class="o-level2"
                                                        src="${pageContext.request.contextPath}/images/VeryBad.png"
                                                        alt="매우 나쁨" style="max-width: 26rem" /></div>
                                            </div>
                                        </div>
                                        <div>
                                            <p class="text-gray-700-custom mb-0">2 ppm </p>
                                            <p class="text-gray-700-custom mb-0"> 매우 나쁨 </p>
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
                                                <div class="col-xl-4 col-xxl-12 text-center"><img class="o-level2"
                                                        src="${pageContext.request.contextPath}/images/Bad.png"
                                                        alt="매우 나쁨" style="max-width: 26rem" /></div>
                                            </div>
                                        </div>
                                        <div>
                                            <p class="text-gray-700-custom mb-0">1.5 ppb </p>
                                            <p class="text-gray-700-custom mb-0"> 나쁨 </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
					</div>
				</div> <!-- 메인 콘텐츠 끝점 -->
				
				
				
				
				
				<!-- 실시간 기상 정보 시작점 -->
				<div class="row">
				<!-- 실시간 기상 정보 - 기온 -->
					<div class="col-lg-6 col-xl-3 mb-4">
						<div class="card bg-primary text-white h-100">
							<div class="card-body">
								<div class="d-flex justify-content-between align-items-center">
									<div class="me-3">
										<div class="text-white-75-custom small">기온</div>
										
										<!-- 이 부분은 습도 데이터 들어가야함!! -->
										<div class="text-lg fw-bold">30℃</div>
										
									</div>
									<img class="feather-xl text-white-50-custom" src="${pageContext.request.contextPath}/images/temperature.png"></img>
								</div>
							</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between small">
								<a class="text-white stretched-link" href="#!">View Report</a>
								<div class="text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
					
					
					<!-- 실시간 기상 정보 - 습도 -->
					<div class="col-lg-6 col-xl-3 mb-4">
						<div class="card bg-warning text-white h-100">
							<div class="card-body">
								<div class="d-flex justify-content-between align-items-center">
									<div class="me-3">
										<div class="text-white-75-custom small">습도</div>
										
										<!-- 이 부분은 습도 데이터 들어가야함!! -->
										<div class="text-lg fw-bold">70%</div>
										
									</div>
									 <img class="feather-xl text-white-50-custom" src="${pageContext.request.contextPath}/images/humidity.png"></img>
								</div>
							</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between small">
								<a class="text-white stretched-link" href="#!">View Report</a>
								<div class="text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
					
					
					<!-- 실시간 기상 정보 - 풍향/풍속 -->
					<div class="col-lg-6 col-xl-3 mb-4">
						<div class="card bg-success text-white h-100">
							<div class="card-body">
								<div class="d-flex justify-content-between align-items-center">
									<div class="me-3">
										<div class="text-white-75-custom small">풍향·풍속</div>
										
										<!-- 이 부분은 풍향/풍속 데이터 들어가야함!! -->
										<div class="text-lg fw-bold">북동 5 m/s</div>
										
									</div>
										<!-- 이 부분은 풍향/풍속 사진 데이터 맞춰서 들어가야함!! (ex. 북동풍 관측 되면 NE 이미지 표시) -->
									   <img class="weather" src="${pageContext.request.contextPath}/images/illust_direction/direction_NE.png"></img>
								</div>
							</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between small">
								<a class="text-white stretched-link" href="#!">View Report</a>
								<div class="text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
					
					
					<!-- 실시간 기상 정보 - 날씨 -->
					<div class="col-lg-6 col-xl-3 mb-4">
						<div class="card bg-danger text-white h-100">
							<div class="card-body">
								<div class="d-flex justify-content-between align-items-center">
									<div class="me-3">
										<div class="text-white-75-custom small">오늘 날씨</div>
										
										<!-- 이 부분은 날씨 데이터 들어가야함!! ${} -->
										<div class="text-lg fw-bold">맑음</div>
									</div>
									<!-- 이 부분은 날씨 데이터 그림 맞춰서 들어가야함!! ${} (ex. 맑음이면 맑음 이미지 표시) -->
									 <img class=weather src="${pageContext.request.contextPath}/images/Sunny.png">
								</div>
							</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between small">
								<a class="text-white stretched-link" href="#!">View Report</a>
								<div class="text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
				</div> <!-- 실시간 기상 정보 끝점 -->
				
				
				
				<!-- Example Charts for Dashboard Demo-->
				<div class="row">
					<div class="col-xl-6 mb-4">
						<div class="card card-header-actions h-100">
							<div class="card-header">
								Earnings Breakdown
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
					<div class="col-xl-6 mb-4">
						<div class="card card-header-actions h-100">
							<div class="card-header">
								Monthly Revenue
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
								<div class="chart-bar">
									<canvas id="myBarChart" width="100%" height="30"></canvas>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Example DataTable for Dashboard Demo-->
				<div class="card mb-4">
					<div class="card-header">Personnel Management</div>
					<div class="card-body">
						<table id="datatablesSimple">
							<thead>
								<tr>
									<th>Name</th>
									<th>Position</th>
									<th>Office</th>
									<th>Age</th>
									<th>Start date</th>
									<th>Salary</th>
									<th>Status</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>Name</th>
									<th>Position</th>
									<th>Office</th>
									<th>Age</th>
									<th>Start date</th>
									<th>Salary</th>
									<th>Status</th>
									<th>Actions</th>
								</tr>
							</tfoot>
							<tbody>
								<tr>
									<td>Tiger Nixon</td>
									<td>System Architect</td>
									<td>Edinburgh</td>
									<td>61</td>
									<td>2011/04/25</td>
									<td>$320,800</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Garrett Winters</td>
									<td>Accountant</td>
									<td>Tokyo</td>
									<td>63</td>
									<td>2011/07/25</td>
									<td>$170,750</td>
									<td><div class="badge bg-warning rounded-pill">Pending</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Ashton Cox</td>
									<td>Junior Technical Author</td>
									<td>San Francisco</td>
									<td>66</td>
									<td>2009/01/12</td>
									<td>$86,000</td>
									<td><div
											class="badge bg-secondary text-white rounded-pill">Part-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Cedric Kelly</td>
									<td>Senior Javascript Developer</td>
									<td>Edinburgh</td>
									<td>22</td>
									<td>2012/03/29</td>
									<td>$433,060</td>
									<td><div class="badge bg-info rounded-pill">Contract</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Airi Satou</td>
									<td>Accountant</td>
									<td>Tokyo</td>
									<td>33</td>
									<td>2008/11/28</td>
									<td>$162,700</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Brielle Williamson</td>
									<td>Integration Specialist</td>
									<td>New York</td>
									<td>61</td>
									<td>2012/12/02</td>
									<td>$372,000</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Herrod Chandler</td>
									<td>Sales Assistant</td>
									<td>San Francisco</td>
									<td>59</td>
									<td>2012/08/06</td>
									<td>$137,500</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Rhona Davidson</td>
									<td>Integration Specialist</td>
									<td>Tokyo</td>
									<td>55</td>
									<td>2010/10/14</td>
									<td>$327,900</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Colleen Hurst</td>
									<td>Javascript Developer</td>
									<td>San Francisco</td>
									<td>39</td>
									<td>2009/09/15</td>
									<td>$205,500</td>
									<td><div class="badge bg-info rounded-pill">Contract</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Sonya Frost</td>
									<td>Software Engineer</td>
									<td>Edinburgh</td>
									<td>23</td>
									<td>2008/12/13</td>
									<td>$103,600</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Jena Gaines</td>
									<td>Office Manager</td>
									<td>London</td>
									<td>30</td>
									<td>2008/12/19</td>
									<td>$90,560</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Quinn Flynn</td>
									<td>Support Lead</td>
									<td>Edinburgh</td>
									<td>22</td>
									<td>2013/03/03</td>
									<td>$342,000</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Charde Marshall</td>
									<td>Regional Director</td>
									<td>San Francisco</td>
									<td>36</td>
									<td>2008/10/16</td>
									<td>$470,600</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Haley Kennedy</td>
									<td>Senior Marketing Designer</td>
									<td>London</td>
									<td>43</td>
									<td>2012/12/18</td>
									<td>$313,500</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Tatyana Fitzpatrick</td>
									<td>Regional Director</td>
									<td>London</td>
									<td>19</td>
									<td>2010/03/17</td>
									<td>$385,750</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Michael Silva</td>
									<td>Marketing Designer</td>
									<td>London</td>
									<td>66</td>
									<td>2012/11/27</td>
									<td>$198,500</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Paul Byrd</td>
									<td>Chief Financial Officer (CFO)</td>
									<td>New York</td>
									<td>64</td>
									<td>2010/06/09</td>
									<td>$725,000</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Gloria Little</td>
									<td>Systems Administrator</td>
									<td>New York</td>
									<td>59</td>
									<td>2009/04/10</td>
									<td>$237,500</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Bradley Greer</td>
									<td>Software Engineer</td>
									<td>London</td>
									<td>41</td>
									<td>2012/10/13</td>
									<td>$132,000</td>
									<td><div class="badge bg-warning rounded-pill">Pending</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Dai Rios</td>
									<td>Personnel Lead</td>
									<td>Edinburgh</td>
									<td>35</td>
									<td>2012/09/26</td>
									<td>$217,500</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Jenette Caldwell</td>
									<td>Development Lead</td>
									<td>New York</td>
									<td>30</td>
									<td>2011/09/03</td>
									<td>$345,000</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Yuri Berry</td>
									<td>Chief Marketing Officer (CMO)</td>
									<td>New York</td>
									<td>40</td>
									<td>2009/06/25</td>
									<td>$675,000</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Caesar Vance</td>
									<td>Pre-Sales Support</td>
									<td>New York</td>
									<td>21</td>
									<td>2011/12/12</td>
									<td>$106,450</td>
									<td><div
											class="badge bg-secondary text-white rounded-pill">Part-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Doris Wilder</td>
									<td>Sales Assistant</td>
									<td>Sidney</td>
									<td>23</td>
									<td>2010/09/20</td>
									<td>$85,600</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Angelica Ramos</td>
									<td>Chief Executive Officer (CEO)</td>
									<td>London</td>
									<td>47</td>
									<td>2009/10/09</td>
									<td>$1,200,000</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Gavin Joyce</td>
									<td>Developer</td>
									<td>Edinburgh</td>
									<td>42</td>
									<td>2010/12/22</td>
									<td>$92,575</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Jennifer Chang</td>
									<td>Regional Director</td>
									<td>Singapore</td>
									<td>28</td>
									<td>2010/11/14</td>
									<td>$357,650</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Brenden Wagner</td>
									<td>Software Engineer</td>
									<td>San Francisco</td>
									<td>28</td>
									<td>2011/06/07</td>
									<td>$206,850</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Fiona Green</td>
									<td>Chief Operating Officer (COO)</td>
									<td>San Francisco</td>
									<td>48</td>
									<td>2010/03/11</td>
									<td>$850,000</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Shou Itou</td>
									<td>Regional Marketing</td>
									<td>Tokyo</td>
									<td>20</td>
									<td>2011/08/14</td>
									<td>$163,000</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Michelle House</td>
									<td>Integration Specialist</td>
									<td>Sidney</td>
									<td>37</td>
									<td>2011/06/02</td>
									<td>$95,400</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Suki Burks</td>
									<td>Developer</td>
									<td>London</td>
									<td>53</td>
									<td>2009/10/22</td>
									<td>$114,500</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Prescott Bartlett</td>
									<td>Technical Author</td>
									<td>London</td>
									<td>27</td>
									<td>2011/05/07</td>
									<td>$145,000</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Gavin Cortez</td>
									<td>Team Leader</td>
									<td>San Francisco</td>
									<td>22</td>
									<td>2008/10/26</td>
									<td>$235,500</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Martena Mccray</td>
									<td>Post-Sales support</td>
									<td>Edinburgh</td>
									<td>46</td>
									<td>2011/03/09</td>
									<td>$324,050</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Unity Butler</td>
									<td>Marketing Designer</td>
									<td>San Francisco</td>
									<td>47</td>
									<td>2009/12/09</td>
									<td>$85,675</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Howard Hatfield</td>
									<td>Office Manager</td>
									<td>San Francisco</td>
									<td>51</td>
									<td>2008/12/16</td>
									<td>$164,500</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Hope Fuentes</td>
									<td>Secretary</td>
									<td>San Francisco</td>
									<td>41</td>
									<td>2010/02/12</td>
									<td>$109,850</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Vivian Harrell</td>
									<td>Financial Controller</td>
									<td>San Francisco</td>
									<td>62</td>
									<td>2009/02/14</td>
									<td>$452,500</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Timothy Mooney</td>
									<td>Office Manager</td>
									<td>London</td>
									<td>37</td>
									<td>2008/12/11</td>
									<td>$136,200</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Jackson Bradshaw</td>
									<td>Director</td>
									<td>New York</td>
									<td>65</td>
									<td>2008/09/26</td>
									<td>$645,750</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Olivia Liang</td>
									<td>Support Engineer</td>
									<td>Singapore</td>
									<td>64</td>
									<td>2011/02/03</td>
									<td>$234,500</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Bruno Nash</td>
									<td>Software Engineer</td>
									<td>London</td>
									<td>38</td>
									<td>2011/05/03</td>
									<td>$163,500</td>
									<td><div class="badge bg-info rounded-pill">Contract</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Sakura Yamamoto</td>
									<td>Support Engineer</td>
									<td>Tokyo</td>
									<td>37</td>
									<td>2009/08/19</td>
									<td>$139,575</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Thor Walton</td>
									<td>Developer</td>
									<td>New York</td>
									<td>61</td>
									<td>2013/08/11</td>
									<td>$98,540</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Finn Camacho</td>
									<td>Support Engineer</td>
									<td>San Francisco</td>
									<td>47</td>
									<td>2009/07/07</td>
									<td>$87,500</td>
									<td><div class="badge bg-info rounded-pill">Contract</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Serge Baldwin</td>
									<td>Data Coordinator</td>
									<td>Singapore</td>
									<td>64</td>
									<td>2012/04/09</td>
									<td>$138,575</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Zenaida Frank</td>
									<td>Software Engineer</td>
									<td>New York</td>
									<td>63</td>
									<td>2010/01/04</td>
									<td>$125,250</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Zorita Serrano</td>
									<td>Software Engineer</td>
									<td>San Francisco</td>
									<td>56</td>
									<td>2012/06/01</td>
									<td>$115,000</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Jennifer Acosta</td>
									<td>Junior Javascript Developer</td>
									<td>Edinburgh</td>
									<td>43</td>
									<td>2013/02/01</td>
									<td>$75,650</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Cara Stevens</td>
									<td>Sales Assistant</td>
									<td>New York</td>
									<td>46</td>
									<td>2011/12/06</td>
									<td>$145,600</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Hermione Butler</td>
									<td>Regional Director</td>
									<td>London</td>
									<td>47</td>
									<td>2011/03/21</td>
									<td>$356,250</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Lael Greer</td>
									<td>Systems Administrator</td>
									<td>London</td>
									<td>21</td>
									<td>2009/02/27</td>
									<td>$103,500</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Jonas Alexander</td>
									<td>Developer</td>
									<td>San Francisco</td>
									<td>30</td>
									<td>2010/07/14</td>
									<td>$86,500</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Shad Decker</td>
									<td>Regional Director</td>
									<td>Edinburgh</td>
									<td>51</td>
									<td>2008/11/13</td>
									<td>$183,000</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Michael Bruce</td>
									<td>Javascript Developer</td>
									<td>Singapore</td>
									<td>29</td>
									<td>2011/06/27</td>
									<td>$183,000</td>
									<td><div class="badge bg-primary text-white rounded-pill">Full-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Donna Snider</td>
									<td>Customer Support</td>
									<td>New York</td>
									<td>27</td>
									<td>2011/01/25</td>
									<td>$112,000</td>
									<td><div
											class="badge bg-secondary text-white rounded-pill">Part-time</div></td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2">
											<i data-feather="more-vertical"></i>
										</button>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark">
											<i data-feather="trash-2"></i>
										</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
		</div>
		</main>

		<img id="modbtn"
			src="${pageContext.request.contextPath}/images/darkpig.png"
			alt="다크모드 버튼" onclick="toggleDarkMode()"
			data-light-src="${pageContext.request.contextPath}/images/lightpig.png"
			data-dark-src="${pageContext.request.contextPath}/images/darkpig.png">

		<footer class="footer-admin mt-auto footer-light">
			<div class="container-xl px-4">
				<div class="row">
					<div class="copyright-footer">Copyright &copy; Don't Gas 2024</div>
				</div>
			</div>
		</footer>
	</div>
	</div>
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
</body>
</html>
