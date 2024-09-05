<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Don't Gas - Document</title>
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
					class="page-header page-header-compact page-header-light border-bottom mb-4 page-header-custom  ">
					<div class="container-fluid px-4">
						<div class="page-header-content">
							<div class="row align-items-center justify-content-between pt-3">
								<div class="col-auto mb-3">

									<h1 class="page-header-title page-header-title-custom-list pigcare">
										<div class="page-header-icon">
											<img class=pigcare-img src="/images/pigcare.png">
										</div>
										돼지 생애주기별 관리법

									</h1>

								</div>

							</div>
						</div>
					</div>
				</header>


				<!-- Main page content (document)-->

				<div class="container-fluid px-4">
					<div class="row gx-4">
						<div class="col-lg-8 col-lg-8-board">
							<div class="card mb-4">
								<div class="card-header card-header-board">돼지의 성장단계별 분뇨 발생량</div>
								<div class="card-body">
									<img class=pigpoo src="/images/pigpoo.png">
									<div class="text">

										<p class=pigcare-text>돼지의 평균 분뇨량 마리당 일일 2.63kg (분 0.89kg,
											뇨 1.74kg))</p>

										<p class=pigcare-text>
											돼지 성장주기별 분뇨량 : 분만돈이 마리당 일일 5.81kg으로 가장 많음 </br> * 자돈 : 1.32kg, 육성돈
											2.75kg, 비육돈 3.37kg, 임신돈 4.54kg
										</p>


									</div>
								</div>
							</div>
							
							<div class="card mb-4">
								<div class="card-header card-header-board">돼지의 성장단계별 돈분 수분 및 비료성분 함량</div>
								<div class="card-body">
									<img class=pigpoo src="/images/pigpoo1.png">
									</br>
									<div class="text">

										<p class=pigcare-text>
											평균 돈분 수분함량 76.3% 
											평균 돈뇨 수분함량 98%</p>

										<p class=pigcare-text>
											비료 성분 N(돈분): 0.77%
											비료 성분 N(돈뇨): 0.93%
											</br>
											비료 성분 P2O5(돈분) : 0.50%
											비료 성분 P2O5(돈뇨) : 0.07%
											</br>
											비료 성분 K2O(돈분) : 0.25%
											비료 성분 K2O(돈뇨) : 0.23%  
										</p>


									</div>
								</div>
							</div>
							


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
	<script src="/js/darkmode.js"></script>

</body>
</html>