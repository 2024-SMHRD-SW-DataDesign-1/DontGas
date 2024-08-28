<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
	
	<!-- 사용자, 알림 정보 drop-down 부분 -->

	<ul class="navbar-nav align-items-center ms-auto">

		<!--알림 정보 drop-down-->
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
				<h6 class="dropdown-header alert-header">
					<i class="me-2" data-feather="bell"></i> 알림 정보
				</h6>

				<!-- 악취 레벨 알림 -->
				<a class="dropdown-item dropdown-notifications-item" href="#!">
					<div class="dropdown-notifications-item-icon alert-bad">
						<img src="${pageContext.request.contextPath}/images/alert_bad.png"
							width="40px" height="40px">
					</div>
					<div class="dropdown-notifications-item-content">
						<div class="dropdown-notifications-item-content-details">악취
							레벨 나쁨/매우 나쁨</div>
						<div class="dropdown-notifications-item-content-text">
							악취 레벨 나쁨 : 3개 </br> 악취 레벨 매우 나쁨 : 2개
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
						<div class="dropdown-notifications-item-content-details">연결
							안 된 돈사 정보</div>
						<div class="dropdown-notifications-item-content-text">
							센서 미연결 2개이상 돈사 : 5개 </br> 센서 확인해주세요.
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
						<div class="dropdown-notifications-item-content-details">다운받은
							리포트 현황</div>
						<div class="dropdown-notifications-item-content-text">최근
							일주일간 받은 리포트는 총 5개입니다.</div>
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
						<div class="dropdown-notifications-item-content-details">축산환경관리원에
							데이터 전송</div>
						<div class="dropdown-notifications-item-content-text">데이터
							전송은 메뉴를 확인해주세요.</div>
					</div>
				</a> <a class="dropdown-item dropdown-notifications-footer" href="#!">더
					많은 알림 확인</a>
			</div>
		</li>


		<!-- header user 클릭 시 뜨는 사용자 표시 -->
		<li class="nav-item dropdown no-caret dropdown-user me-3 me-lg-4">
			<a class="btn btn-icon btn-transparent-dark dropdown-toggle"
			id="navbarDropdownUserImage" href="javascript:void(0);" role="button"
			data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img
				class="img-fluid"
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
				<form action="logout" method="get" style="display: inline;">
					<button type="submit" class="dropdown-item">
						<div class="dropdown-item-icon">
							<i data-feather="log-out"></i>
						</div>
						Logout
					</button>
				</form>
			</div>
		</li>
	</ul>
</nav>