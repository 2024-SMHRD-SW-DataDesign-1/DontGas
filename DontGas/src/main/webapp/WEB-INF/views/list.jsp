<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


	<!-- 헤더 -->
	<%@ include file="header.jsp"%>



	<div id="layoutSidenav">


		<!-- 사이드 메뉴 -->
		<%@ include file="sidenav.jsp"%>



		<div id="layoutSidenav_content">
			<main>
				<header
					class="page-header page-header-compact page-header-light border-bottom mb-4 page-header-custom">
					<div class="container-fluid px-4">
						<div class="page-header-content">
							<div class="row align-items-center justify-content-between pt-3">
								<div class="col-auto mb-3">
									<h1 class="page-header-title page-header-title-custom-list">
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
										<th class="stink-custom">악취 상태</th>
										<th class="pighouse-custom">돈사명</th>
										<th class="connecting-custom">
										<span class="tooltip-link" data-tooltip="황화수소-암모니아-메탄 순서">연결 상태 
										<img src="${pageContext.request.contextPath}/images/question1.png" width="20px" height="20px">
										</span></th>
										<th class="address-custom">주소</th>
										<th class="contact-custom">연락처</th>
									</tr>


								</thead>

								<tbody>

									<c:forEach var="pigHouse" items="${sessionScope.pigHouseList}">
										<tr>
											<td data-order="1">
												<img class="o-level" src="${pageContext.request.contextPath}/images/VeryGood.png">
											</td>

											<td class="pighouse_name">
												<img class="user" src="${pageContext.request.contextPath}/images/user.png">
												<a href="info/${pigHouse.phouseId}">${pigHouse.phouseName}</a>
											</td>

											<td class="connecting-sort"><img class="connect-1"
												src="${pageContext.request.contextPath}/images/connect_o.png">
												<img class="connect-2"
												src="${pageContext.request.contextPath}/images/connect_x.png">
												<img class="connect-3"
												src="${pageContext.request.contextPath}/images/connect_o.png">
											</td>

											<td class="center-sort">${pigHouse.phouseAddress}</td>

											<td class="center-sort">${pigHouse.farmer.farmerPhoneNumber}</td>
										</tr>
									</c:forEach>

									
								</tbody>
							</table>
						</div>
					</div>
				</div>







			</main>

			<!-- footer -->
			<%@ include file="footer.jsp"%>
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
