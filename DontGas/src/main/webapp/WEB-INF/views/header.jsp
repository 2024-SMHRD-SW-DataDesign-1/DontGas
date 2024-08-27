<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

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

		<!-- Alerts Dropdown (종모양)-->
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
					<i class="me-2" data-feather="bell"></i> 알림 정보
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