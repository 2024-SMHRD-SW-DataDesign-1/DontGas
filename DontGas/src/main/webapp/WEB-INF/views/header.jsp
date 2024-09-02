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
	<a class="navbar-brand pe-3 ps-4 ps-lg-2 navbar-custom" href="/list">Don't
		Gas</a><img class="pigpig" src="/images/pigpig.png" width="40px" height="40px">


	<!-- 사용자, 알림 정보 drop-down 부분 -->

	<ul class="navbar-nav align-items-center ms-auto">

		<!-- 게시글 관련 기능 dummy Dropdown-->
		<li class="nav-item dropdown no-caret d-none d-md-block me-3"><a
			class="nav-link dropdown-toggle" id="navbarDropdownDocs"
			href="javascript:void(0);" role="button" data-bs-toggle="dropdown"
			aria-haspopup="true" aria-expanded="false">
				<div class="fw-500">게시글 댓글 알림</div> <img class="imoticon"src="/images/commentcheck.png">
				
		</a>
			<div
				class="dropdown-menu dropdown-menu-end py-0 me-sm-n15 me-lg-0 o-hidden animated--fade-in-up"
				aria-labelledby="navbarDropdownDocs">
				<a class="dropdown-item py-3"
					href="https://docs.startbootstrap.com/sb-admin-pro" target="_blank">
					<div class="icon-stack bg-primary-soft text-primary me-4">
						<i data-feather="book"></i>
					</div>
					<div>
						<div class="small text-gray-500">게시글 댓글 확인</div>
						게시글에 새로운 댓글이 달렸습니다!
					</div>
				</a>

				<div class="dropdown-divider m-0"></div>
				<a class="dropdown-item py-3"
					href="https://docs.startbootstrap.com/sb-admin-pro/changelog"
					target="_blank">
					<div class="icon-stack bg-primary-soft text-primary me-4">
						<i data-feather="file-text"></i>
					</div>
					<div>
						<div class="small text-gray-500">게시글 수정</div>
						게시글 수정은 이곳을 클릭해주세요!
					</div>
				</a>
			</div></li>
		
		<!-- 게시글 Dropdown-->
		<li
			class="nav-item dropdown no-caret d-none d-sm-block me-3 dropdown-notifications">
			<a class="btn btn-icon btn-transparent-dark dropdown-toggle"
			id="navbarDropdownMessages" href="javascript:void(0);" role="button"
			data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
				data-feather="mail"></i></a>
			<div
				class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up"
				aria-labelledby="navbarDropdownMessages">
				<h6 class="dropdown-header dropdown-notifications-header">
					<i class="me-2" data-feather="mail"></i> 게시글 알림
				</h6>


				<!-- Message 1  -->
				<a class="dropdown-item dropdown-notifications-item" href="#!">
					<img class="imoticon"
					src="/images/user_joyrich.png" />
					<div class="dropdown-notifications-item-content">
						<div class="dropdown-notifications-item-content-text">
							안녕하세요. 포도님. 돈사 악취 관리는 생애주기별로 확인이 가능합니다. 
							Don't Gas 홈페이지 생애주기별 관리 메뉴를 보시면 관리하기 수월하실거에요!</div>
						<div class="dropdown-notifications-item-content-details">
							흥부자· 58분전</div>
					</div>
				</a>
				<!-- Message 2-->
				<a class="dropdown-item dropdown-notifications-item" href="#!">
					<img class="imoticon"
					src="/images/user_seongmin.png" />
					<div class="dropdown-notifications-item-content">
						<div class="dropdown-notifications-item-content-text">
						금주 기상 예보 확인하시어 돈사 관리에 유의해주세요!</div>
						<div class="dropdown-notifications-item-content-details">김성민
							 · 2일전</div>
					</div>
				</a>
				<!-- Message 3-->
				<a class="dropdown-item dropdown-notifications-item" href="#!">
					<img class="imoticon"
					src="/images/user_peach.png" />
					<div class="dropdown-notifications-item-content">
						<div class="dropdown-notifications-item-content-text">
						안녕하세요 포도님. 요즘 돈사 악취 민원은 어떠신가요?
						저희 양돈장은 지난달 보다 민원이 2건 줄었습니다 :)</div>
						<div class="dropdown-notifications-item-content-details">복숭아 · 3시간 전</div>
					</div>
				</a>
				<!-- Message 4-->
				<a class="dropdown-item dropdown-notifications-item" href="#!">
					<img class="imoticon"
					src="/images/user_watermelon.png" />
					<div class="dropdown-notifications-item-content">
						<div class="dropdown-notifications-item-content-text">
						금주 주말에 비 예보가 있다고 합니다! 날이 맑을 때 미리 분변 건조해주세요.</div>
						<div class="dropdown-notifications-item-content-details">반짝이는 워터멜론 · 3일전</div>
					</div>
				</a>
				<!--게시글 알림 더보기란-->
				<a class="dropdown-item dropdown-notifications-footer" href="#!">게시글 알림 더보기</a>
			</div>
		</li>


		<!--알림 정보 drop-down-->
		<li
			class="nav-item dropdown no-caret d-none d-sm-block me-3 dropdown-notifications">
			<a
			class="btn btn-icon btn-transparent-dark dropdown-toggle alert-custom"
			id="navbarDropdownAlerts" href="javascript:void(0);" role="button"
			data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img
				class="btn-icon" src="/images/bell.png"></img></a>
			<div
				class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up"
				aria-labelledby="navbarDropdownAlerts">
				<h6 class="dropdown-header alert-header">
					<i class="me-2" data-feather="bell"></i> 알림 정보
				</h6>

				<!-- 악취 레벨 알림 -->
				<a class="dropdown-item dropdown-notifications-item" href="#!">
					<div class="dropdown-notifications-item-icon alert-bad">
						<img src="/images/alert_bad.png" width="40px" height="40px">
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
						<img src="/images/alert_sensor.png" width="40px" height="40px">
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
						<img src="/images/report.png" width="40px" height="40px">
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
						<img src="/images/forwarding.png" width="40px" height="40px">
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
				class="img-fluid" src="/images/user_man1.png" /></a>
			<div
				class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up"
				aria-labelledby="navbarDropdownUserImage">
				<h6 class="dropdown-header d-flex align-items-center">
					<img class="dropdown-user-img" src="/images/user_man1.png" />
					<div class="dropdown-user-details">
						<div class="dropdown-user-details-name"><%=session.getAttribute("accName")%></div>
						<div class="dropdown-user-details-email">podo@pig.com</div>
					</div>
				</h6>
				<div class="dropdown-divider"></div>
				<form action="/logout" method="get" style="display: inline;">
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