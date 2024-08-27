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
	<!-- ���� ���͸� �κ� -->
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
	
	<!-- �����, �˸� ���� drop-down �κ� -->

	<ul class="navbar-nav align-items-center ms-auto">

		<!--�˸� ���� drop-down-->
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
					<i class="me-2" data-feather="bell"></i> �˸� ����
				</h6>

				<!-- ���� ���� �˸� -->
				<a class="dropdown-item dropdown-notifications-item" href="#!">
					<div class="dropdown-notifications-item-icon alert-bad">
						<img src="${pageContext.request.contextPath}/images/alert_bad.png"
							width="40px" height="40px">
					</div>
					<div class="dropdown-notifications-item-content">
						<div class="dropdown-notifications-item-content-details">����
							���� ����/�ſ� ����</div>
						<div class="dropdown-notifications-item-content-text">
							���� ���� ���� : 3�� </br> ���� ���� �ſ� ���� : 2��
						</div>
					</div>
				</a>
				<!-- ���� ���� ��Ȳ �˸� -->
				<a class="dropdown-item dropdown-notifications-item" href="#!">
					<div class="dropdown-notifications-item-icon alert-sensor">
						<img
							src="${pageContext.request.contextPath}/images/alert_sensor.png"
							width="40px" height="40px">
					</div>
					<div class="dropdown-notifications-item-content">
						<div class="dropdown-notifications-item-content-details">����
							�� �� ���� ����</div>
						<div class="dropdown-notifications-item-content-text">
							���� ���� ������ 2���̻� �� �� ����� 5���Դϴ�. </br> ���� Ȯ�����ּ���.
						</div>
					</div>
				</a>
				<!-- �ٿ���� ����Ʈ �˸� -->
				<a class="dropdown-item dropdown-notifications-item" href="#!">
					<div class="dropdown-notifications-item-icon alert-report">
						<img src="${pageContext.request.contextPath}/images/report.png"
							width="40px" height="40px">
					</div>
					<div class="dropdown-notifications-item-content">
						<div class="dropdown-notifications-item-content-details">�ٿ����
							����Ʈ ��Ȳ</div>
						<div class="dropdown-notifications-item-content-text">�ֱ�
							�����ϰ� ���� ����Ʈ�� �� 5���Դϴ�.</div>
					</div>
				</a>
				<!-- ���ȯ�� ������ ������ ���� �˸� -->
				<a class="dropdown-item dropdown-notifications-item" href="#!">
					<div class="dropdown-notifications-item-icon alert-fowarding">
						<img
							src="${pageContext.request.contextPath}/images/forwarding.png"
							width="40px" height="40px">
					</div>
					<div class="dropdown-notifications-item-content">
						<div class="dropdown-notifications-item-content-details">���ȯ���������
							������ ����</div>
						<div class="dropdown-notifications-item-content-text">������
							������ �޴��� Ȯ�����ּ���.</div>
					</div>
				</a> <a class="dropdown-item dropdown-notifications-footer" href="#!">��
					���� �˸� Ȯ��</a>
			</div>
		</li>


		<!-- header user Ŭ�� �� �ߴ� ����� ǥ�� -->
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
						<div class="dropdown-user-details-name">����</div>
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