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
<title>Don't Gas - List</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
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
<<<<<<< HEAD
	<nav
		class="topnav navbar navbar-expand shadow justify-content-between justify-content-sm-start navbar-light topnav-custom"
		id="sidenavAccordion">
		<!-- Sidenav Toggle Button-->
		<button
			class="btn btn-icon btn-transparent-dark order-1 order-lg-0 me-2 ms-lg-2 me-lg-0 sidenav-toggle-btn-custom"
			id="sidebarToggle">
			<i data-feather="menu"></i>
		</button>
		<!-- Navbar Brand-->
		<a class="navbar-brand pe-3 ps-4 ps-lg-2 navbar-custom" href="list">Don't
			Gas</a>
		<!-- 돈사 필터링 부분 -->
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
		<!-- user, alerts, csv 다운 버튼 부분 -->

		<ul class="navbar-nav align-items-center ms-auto">
			<!-- csv 파일 다운 버튼 -->
			<li
				class="nav-item dropdown no-caret d-none d-sm-block me-3 dropdown-notifications">
				<a
				class="btn btn-icon btn-transparent-dark dropdown-toggle alert-custom"
				id="navbarDropdownAlerts" href="javascript:void(0);" role="button"
				data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img
					class="btn-icon"
					src="${pageContext.request.contextPath}/images/csv-download.png"></img></a>

				<!--알림 정보 drop-down--> <li
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
					<h6 class="dropdown-header alert-header">
						<i class="me-2" data-feather="bell"></i> 알림 정보
					</h6>

					<!-- 악취 레벨 알림 -->
					<a class="dropdown-item dropdown-notifications-item" href="#!">
						<div class="dropdown-notifications-item-icon alert-bad">
							<img
								src="${pageContext.request.contextPath}/images/alert_bad.png"
								width="40px" height="40px">
						</div>
						<div class="dropdown-notifications-item-content">
							<div class="dropdown-notifications-item-content-details">악취
								레벨 나쁨/매우 나쁨</div>
							<div class="dropdown-notifications-item-content-text">
							악취 레벨 나쁨 : 3개
							</br>
							악취 레벨 매우 나쁨 : 2개 
							</div>
						</div>
					</a>
					<!-- 센서 연결 현황 알림 -->
					<a class="dropdown-item dropdown-notifications-item" href="#!">
						<div class="dropdown-notifications-item-icon alert-sensor">
							<img
								src="${pageContext.request.contextPath}/images/alert_sensor.png"
								width="40px" height="40px">
						</div>
						<div class="dropdown-notifications-item-content">
							<div class="dropdown-notifications-item-content-details">연결 안 된 돈사 정보</div>
							<div class="dropdown-notifications-item-content-text">
							현재 센서 연결이 2개이상 안 된 돈사는 5개입니다. 
							</br>
							센서 확인해주세요.
							</div>
						</div>
					</a>
					<!-- 다운받은 리포트 알림 -->
					<a class="dropdown-item dropdown-notifications-item" href="#!">
						<div class="dropdown-notifications-item-icon alert-report">
							<img src="${pageContext.request.contextPath}/images/report.png"
								width="40px" height="40px">
						</div>
						<div class="dropdown-notifications-item-content">
							<div class="dropdown-notifications-item-content-details">다운받은 리포트 현황</div>
							<div class="dropdown-notifications-item-content-text">최근 일주일간 받은 리포트는 총 5개입니다.</div>
						</div>
					</a>
					<!-- 축산환경 관리원 데이터 전송 알림 -->
					<a class="dropdown-item dropdown-notifications-item" href="#!">
						<div class="dropdown-notifications-item-icon alert-fowarding">
							<img
								src="${pageContext.request.contextPath}/images/forwarding.png"
								width="40px" height="40px">
						</div>
						<div class="dropdown-notifications-item-content">
							<div class="dropdown-notifications-item-content-details">축산환경관리원에 데이터 전송</div>
							<div class="dropdown-notifications-item-content-text">데이터 전송은 csv 메뉴를 확인해주세요.</div>
						</div>
					</a> <a class="dropdown-item dropdown-notifications-footer" href="#!">더 많은 알림 확인</a>
				</div>
			</li>
=======
	
	<!-- 헤더 -->
	<%@ include file="header.jsp" %>
>>>>>>> branch 'master' of https://github.com/2024-SMHRD-SW-DataDesign-1/DontGas.git


	<div id="layoutSidenav">
<<<<<<< HEAD
		<div id="layoutSidenav_nav">
			<nav class="sidenav shadow-right sidenav-light sidenav-custom">
				<div class="sidenav-menu">
					<div class="nav accordion" id="accordionSidenav">
						<p class="nav-link collapsed sidemenu-custom"
							data-bs-toggle="modal" data-bs-target="#exampleModalLg"
							aria-expanded="false" aria-controls="collapseDashboards">엑셀 다운로드</p>
					</div>
				</div>
			</nav>
		</div>
=======
	
		<!-- 사이드 메뉴 -->
		<%@ include file="sidenav.jsp" %>
>>>>>>> branch 'master' of https://github.com/2024-SMHRD-SW-DataDesign-1/DontGas.git
		


		<div id="layoutSidenav_content">
			<main>
				<header
					class="page-header page-header-compact page-header-light border-bottom mb-4 page-header-custom">
					<div class="container-fluid px-4">
						<div class="page-header-content">
							<div class="row align-items-center justify-content-between pt-3">
								<div class="col-auto mb-3">
									<h1 class="page-header-title page-header-title-custom">
										<div class="page-header-icon">
											<img class="header-icon-custom"
												src="${pageContext.request.contextPath}/images/pigslist.png">
										</div>
										돈사 리스트
									</h1>
								</div>
								<div class="col-12 col-xl-auto mb-3"></div>
							</div>
						</div>
					</div>
				</header>



				<!-- 돈사 리스트 테이블 -->
				<div class="container-fluid px-4">
					<div class="card table-body-custom">
						<div class="card-body ">
							<table id="datatablesSimple">
								<thead>
									<tr class="table-head-custom">
										<th>돈사명</th>
										<th>주소</th>
										<th>연락처</th>
										<th>악취 상태</th>
										<th>연결 상태</th>
									</tr>
								</thead>
								<tfoot>
									<tr class="table-head-custom">
										<th>돈사명</th>
										<th>주소</th>
										<th>연락처</th>
										<th>악취 상태</th>
										<th>연결 상태</th>
									</tr>
								</tfoot>
								<tbody>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">대나무 축산</a></td>
										<td>전라남도 담양군 고서면</td>
										<td>010-1111-1111</td>
										<td><img class="o-level"
											src="${pageContext.request.contextPath}/images/VeryGood.png"></td>
										<td><img class="connect-1"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-2"
											src="${pageContext.request.contextPath}/images/connect_x.png">
											<img class="connect-3"
											src="${pageContext.request.contextPath}/images/connect_o.png"></td>

									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">성민 양돈장</a></td>
										<td>경상북도 칠곡군 왜관읍</td>
										<td>010-2222-2222</td>
										<td><img class="o-level"
											src="${pageContext.request.contextPath}/images/Soso.png"></td>
										<td><img class="connect-1"
											src="${pageContext.request.contextPath}/images/connect_x.png">
											<img class="connect-2"
											src="${pageContext.request.contextPath}/images/connect_x.png">
											<img class="connect-3"
											src="${pageContext.request.contextPath}/images/connect_o.png"></td>

									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">고라양돈장</a></td>
										<td>전라북도 고창군 무장면</td>
										<td>010-1234-5678</td>
										<td><img class="o-level"
											src="${pageContext.request.contextPath}/images/Soso.png"></td>
										<td><img class="connect-1"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-2"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-3"
											src="${pageContext.request.contextPath}/images/connect_x.png"></td>

									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">동흥양돈장</a></td>
										<td>제주특별자치도 서귀포시 동흥동</td>
										<td>010-3333-6699</td>
										<td><img class="o-level"
											src="${pageContext.request.contextPath}/images/Good.png"></td>
										<td><img class="connect-1"
											src="${pageContext.request.contextPath}/images/connect_x.png">
											<img class="connect-2"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-3"
											src="${pageContext.request.contextPath}/images/connect_o.png"></td>

									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">희복양돈장</a></td>
										<td>경상남도 합천군 초계면</td>
										<td>010-1378-8789</td>
										<td><img class="o-level"
											src="${pageContext.request.contextPath}/images/VeryGood.png"></td>
										<td><img class="connect-1"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-2"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-3"
											src="${pageContext.request.contextPath}/images/connect_o.png"></td>

									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">금산양돈장</a></td>
										<td>전라남도 나주시 노안면</td>
										<td>010-4444-5555</td>
										<td><img class="o-level"
											src="${pageContext.request.contextPath}/images/Good.png"></td>
										<td><img class="connect-1"
											src="${pageContext.request.contextPath}/images/connect_x.png">
											<img class="connect-2"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-3"
											src="${pageContext.request.contextPath}/images/connect_o.png"></td>

									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">귀산 양돈장</a></td>
										<td>전라남도 보성군 조성면</td>
										<td>010-6787-9494</td>
										<td><img class="o-level"
											src="${pageContext.request.contextPath}/images/Soso.png"></td>
										<td><img class="connect-1"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-2"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-3"
											src="${pageContext.request.contextPath}/images/connect_x.png"></td>

									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">덕유 농장</a></td>
										<td>경상북도 경산시 압량읍</td>
										<td>010-2121-5898</td>
										<td><img class="o-level"
											src="${pageContext.request.contextPath}/images/Bad.png"></td>
										<td><img class="connect-1"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-2"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-3"
											src="${pageContext.request.contextPath}/images/connect_o.png"></td>

									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">비젼축산양돈장</a></td>
										<td>경기 양주시 은현면 은현로</td>
										<td>010-8912-0789</td>
										<td><img class="o-level"
											src="${pageContext.request.contextPath}/images/Soso.png"></td>
										<td><img class="connect-1"
											src="${pageContext.request.contextPath}/images/connect_x.png">
											<img class="connect-2"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-3"
											src="${pageContext.request.contextPath}/images/connect_o.png"></td>

									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">샛터양돈장</a></td>
										<td>경기도 포천시 일동면 사직리</td>
										<td>010-7777-8888</td>
										<td><img class="o-level"
											src="${pageContext.request.contextPath}/images/Soso.png"></td>
										<td><img class="connect-1"
											src="${pageContext.request.contextPath}/images/connect_x.png">
											<img class="connect-2"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-3"
											src="${pageContext.request.contextPath}/images/connect_x.png"></td>

									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">행안양돈장</a></td>
										<td>전북 부안군 행안면 대초리</td>
										<td>010-0000-3333</td>
										<td><img class="o-level"
											src="${pageContext.request.contextPath}/images/VeryBad.png"></td>
										<td><img class="connect-1"
											src="${pageContext.request.contextPath}/images/connect_x.png">
											<img class="connect-2"
											src="${pageContext.request.contextPath}/images/connect_x.png">
											<img class="connect-3"
											src="${pageContext.request.contextPath}/images/connect_x.png"></td>

									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">해리양돈장</a></td>
										<td>전북 고창군 해리면</td>
										<td>010-5555-55555</td>
										<td><img class="o-level"
											src="${pageContext.request.contextPath}/images/Soso.png"></td>
										<td><img class="connect-1"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-2"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-3"
											src="${pageContext.request.contextPath}/images/connect_o.png"></td>

									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">선화양돈장</a></td>
										<td>경상북도 구미시 옥성면</td>
										<td>010-7777-6556</td>
										<td><img class="o-level"
											src="${pageContext.request.contextPath}/images/Bad.png"></td>
										<td><img class="connect-1"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-2"
											src="${pageContext.request.contextPath}/images/connect_x.png">
											<img class="connect-3"
											src="${pageContext.request.contextPath}/images/connect_x.png">
										</td>

									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">대농농원돈사</a></td>
										<td>경기도 고양시 덕양구 현천동</td>
										<td>010-7979-1004</td>
										<td><img class="o-level"
											src="${pageContext.request.contextPath}/images/VeryGood.png"></td>
										<td><img class="connect-1"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-2"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-3"
											src="${pageContext.request.contextPath}/images/connect_x.png"></td>

									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">보송농장</a></td>
										<td>경상북도 봉화군 봉화읍</td>
										<td>010-4869-1369</td>
										<td><img class="o-level"
											src="${pageContext.request.contextPath}/images/VeryGood.png"></td>
										<td><img class="connect-1"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-2"
											src="${pageContext.request.contextPath}/images/connect_x.png">
											<img class="connect-3"
											src="${pageContext.request.contextPath}/images/connect_x.png"></td>

									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">국립축산과학원 돈사4</a></td>
										<td>전라북도 완주군 이서면</td>
										<td>010-2468-1357</td>
										<td><img class="o-level"
											src="${pageContext.request.contextPath}/images/Good.png"></td>
										<td><img class="connect-1"
											src="${pageContext.request.contextPath}/images/connect_o.png">
											<img class="connect-2"
											src="${pageContext.request.contextPath}/images/connect_x.png">
											<img class="connect-3"
											src="${pageContext.request.contextPath}/images/connect_o.png"></td>

									</tr>
									<tr>
								
								</tbody>
							</table>
						</div>
					</div>
				</div>







			</main>
			
			<!-- footer -->
			<%@ include file="footer.jsp" %>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="js/datatables.js"></script>
	<script src="${pageContext.request.contextPath}/js/darkmode.js"></script>
</body>
</html>
