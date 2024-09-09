<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href="/css/styles.css" rel="stylesheet" />
<link href="/css/lightstyles.css" rel="stylesheet" id="theme-style" />
<link rel="icon" type="image/x-icon" href="/images/pigpig.png" />
<script data-search-pseudo-elements defer
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	var city = "${pigHouse.phouseDistrict}";
</script>

<script>
	var logResultsJson = [
		<c:forEach var="log" items="${logResults}">
			{
				"insertTime": "${log.insertTime}",
				"h2sValue": "${log.h2sValue}",
				"nh3Value": "${log.nh3Value}",
				"ch4Value": "${log.ch4Value}"
			}
			<c:if test="${!loop.last}">,</c:if>
		</c:forEach>
	];
</script>
</head>


<body class="nav-fixed body-custom">


	<!-- 헤더 -->
	<%@ include file="header.jsp"%>






	<div id="layoutSidenav">


		<!-- 사이드 메뉴 -->
		<%@ include file="sidenav.jsp"%>



		<div id="layoutSidenav_content">

			<!-- header 대시보드 -->
			<main class="main-custom">
				<header
					class="page-header page-header-custom pb-10 info-page-header-custom">
					<div class="container-xl px-4">
						<div class="page-header-content pt-4">
							<div class="row align-items-center justify-content-between">
								<div class="col-auto mt-4">

									<!-- 양돈장 이름 -->
									<h1 class="page-header-title page-header-title-custom-info">
										<div class="page-header-icon">
											<img src="/images/monitoring.png" width="40px" height="40px">
										</div>

										${pigHouse.phouseName}
									</h1>
									<!-- 양돈장 전화번호 데이터 넣기 -->
									<div class="page-header-subtitle page-header-subtitle-custom">
										<img src="/images/contact.png" width="30px" height="30px">
										${pigHouse.farmer.farmerPhoneNumber}
									</div>
									<!-- 양돈장 주소 넣기-->
									<div class="page-header-subtitle page-header-subtitle-custom">
										<img src="/images/address.png" width="30px" height="30px">
										${pigHouse.phouseAddress}
									</div>

								</div>


							</div>
						</div>
					</div>


				</header>

				<!-- 모니터링 메인 콘텐츠 시작점 -->
				<div class="container-xl px-4 mt-n10-custom">
					<div class="row">


						<!-- 현재 logdata를 변수에 저장 -->
						<c:set var="latestLog" value="${null}" scope="page" />

						<c:forEach var="logResult" items="${logResults}"
							varStatus="status">
							<c:if test="${status.first}">
								<c:set var="latestLog" value="${logResult}" />
							</c:if>
						</c:forEach>



						<!-- 모니터링 메인 콘텐츠 1 - 황화수소 레벨 -->
						<div class="col-xxl-4 col-xl-12 mb-4">
							<div class="card h-100-custom">
								<div
									class="${latestLog.h2sValue == null ? 'card-null' : 'card-default'}">
									<h1
										class="${latestLog.h2sValue == null ? 'no-data-text' : 'yes-data-text'}">
										No Data</h1>
								</div>
								<div class="card-body h-100 p-5">
									<div class="row align-items-center">
										<div class="col-xl-8 col-xxl-12">
											<div
												class="text-center text-xl-start text-xxl-center mb-4 mb-xl-0 mb-xxl-4">
												<h1 class="text-primary-custom">황화수소 레벨</h1>
												<div class="col-xl-4 col-xxl-12 text-center">

													<!-- 악취 레벨 기준 -->
													<!--
													// 황화수소
													0-0.07 // 상위 10% : 0.069
													0.07-0.1 // 상위 30% : 0.098
													0.1-0.5 // 평균 : 0.480
													0.5-1.8 // 하위 10% : 1.834
													1.8- //
													-->

													<!-- 기본 이미지 URL 및 텍스트 -->
													<c:set var="imageUrl" value="/images/Soso.png" scope="page" />
													<c:set var="statusText" value="보통" scope="page" />

													<!-- h2sValue에 따라 이미지 URL 및 텍스트 설정 -->
													<c:choose>

														<c:when test="${latestLog.h2sValue lt 0.07}">
															<c:set var="imageUrl" value="/images/VeryGood.png" />
															<c:set var="statusText" value="매우 좋음" />
														</c:when>

														<c:when
															test="${latestLog.h2sValue ge 0.07 && latestLog.h2sValue lt 0.1}">
															<c:set var="imageUrl" value="/images/Good.png" />
															<c:set var="statusText" value="좋음" />
														</c:when>

														<c:when
															test="${latestLog.h2sValue ge 0.1 && latestLog.h2sValue lt 0.5}">
															<c:set var="imageUrl" value="/images/Soso.png" />
															<c:set var="statusText" value="보통" />
														</c:when>

														<c:when
															test="${latestLog.h2sValue ge 0.5 && latestLog.h2sValue lt 1.8}">
															<c:set var="imageUrl" value="/images/Bad.png" />
															<c:set var="statusText" value="나쁨" />
														</c:when>

														<c:when test="${latestLog.h2sValue ge 1.8}">
															<c:set var="imageUrl" value="/images/VeryBad.png" />
															<c:set var="statusText" value="매우 나쁨" />
														</c:when>

													</c:choose>

													<!-- 이미지 출력 -->
													<img class="o-level2" src="${imageUrl}" alt="악취 레벨 이미지"
														style="max-width: 26rem" />

												</div>
											</div>
										</div>

										<!-- 수치, 상태 데이터 들어갈 자리  -->
										<div>
											<p class="text-gray-700-custom mb-0">${latestLog.h2sValue}
												ppm</p>
											<p class="text-gray-700-custom mb-0">${statusText}</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- 모니터링 메인 콘텐츠 2 - 암모니아 레벨 -->

						<div class="col-xxl-4 col-xl-12 mb-4">
							<div class="card h-100-custom">
								<div
									class="${latestLog.nh3Value == null ? 'card-null' : 'card-default'}">
									<h1
										class="${latestLog.nh3Value == null ? 'no-data-text' : 'yes-data-text'}">
										No Data</h1>
								</div>
								<div class="card-body h-100 p-5">
									<div class="row align-items-center">
										<div class="col-xl-8 col-xxl-12">
											<div
												class="text-center text-xl-start text-xxl-center mb-4 mb-xl-0 mb-xxl-4">
												<h1 class="text-primary-custom">암모니아 레벨</h1>
												<div class="col-xl-4 col-xxl-12 text-center">

													<!-- 악취 레벨 기준 -->
													<!--
													// 암모니아
													0-5 // 상위 10% : 4.46
													5-10 // 권장 기준 : 10
													10-20 // 평균 : 20.51
													20-50 // 하위 10% : 52.81
													50- //
													-->

													<!-- 기본 이미지 URL 및 텍스트 -->
													<c:set var="imageUrl" value="/images/Soso.png" scope="page" />
													<c:set var="statusText" value="보통" scope="page" />

													<!-- nh3Value에 따라 이미지 URL 및 텍스트 설정 -->
													<c:choose>

														<c:when test="${latestLog.nh3Value lt 5}">
															<c:set var="imageUrl" value="/images/VeryGood.png" />
															<c:set var="statusText" value="매우 좋음" />
														</c:when>

														<c:when
															test="${latestLog.nh3Value ge 5 && latestLog.nh3Value lt 10}">
															<c:set var="imageUrl" value="/images/Good.png" />
															<c:set var="statusText" value="좋음" />
														</c:when>

														<c:when
															test="${latestLog.nh3Value ge 10 && latestLog.nh3Value lt 20}">
															<c:set var="imageUrl" value="/images/Soso.png" />
															<c:set var="statusText" value="보통" />
														</c:when>

														<c:when
															test="${latestLog.nh3Value ge 20 && latestLog.nh3Value lt 50}">
															<c:set var="imageUrl" value="/images/Bad.png" />
															<c:set var="statusText" value="나쁨" />
														</c:when>

														<c:when test="${latestLog.nh3Value ge 50}">
															<c:set var="imageUrl" value="/images/VeryBad.png" />
															<c:set var="statusText" value="매우 나쁨" />
														</c:when>

													</c:choose>

													<!-- 이미지 출력 -->
													<img class="o-level2" src="${imageUrl}" alt="악취 레벨 이미지"
														style="max-width: 26rem" />

												</div>
											</div>
										</div>
										<!-- 수치, 상태 데이터 들어갈 자리  -->
										<div>
											<p class="text-gray-700-custom mb-0">${latestLog.nh3Value}
												ppm</p>
											<p class="text-gray-700-custom mb-0">${statusText}</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- 모니터링 메인 콘텐츠 3 - 메탄 레벨 -->
						<div class="col-xxl-4 col-xl-12 mb-4">
							<div class="card h-100-custom">
								<div
									class="${latestLog.ch4Value == null ? 'card-null' : 'card-default'}">
									<h1
										class="${latestLog.ch4Value == null ? 'no-data-text' : 'yes-data-text'}">
										No Data</h1>
								</div>
								<div class="card-body h-100 p-5">
									<div class="row align-items-center">
										<div class="col-xl-8 col-xxl-12">
											<div
												class="text-center text-xl-start text-xxl-center mb-4 mb-xl-0 mb-xxl-4">
												<h1 class="text-primary-custom">메탄 레벨</h1>
												<div class="col-xl-4 col-xxl-12 text-center">

													<!-- 악취 레벨 기준 -->
													<!--
													// 메탄
													0-3000 //
													3000-6000 //
													6000-9000 //
													9000-12000 //
													12000- //
													-->

													<!-- 기본 이미지 URL 및 텍스트 -->
													<c:set var="imageUrl" value="/images/Soso.png" scope="page" />
													<c:set var="statusText" value="보통" scope="page" />

													<!-- h2sValue에 따라 이미지 URL 및 텍스트 설정 -->
													<c:choose>

														<c:when test="${latestLog.ch4Value lt 3000}">
															<c:set var="imageUrl" value="/images/VeryGood.png" />
															<c:set var="statusText" value="매우 좋음" />
														</c:when>

														<c:when
															test="${latestLog.ch4Value ge 3000 && latestLog.ch4Value lt 6000}">
															<c:set var="imageUrl" value="/images/Good.png" />
															<c:set var="statusText" value="좋음" />
														</c:when>

														<c:when
															test="${latestLog.ch4Value ge 6000 && latestLog.ch4Value lt 9000}">
															<c:set var="imageUrl" value="/images/Soso.png" />
															<c:set var="statusText" value="보통" />
														</c:when>

														<c:when
															test="${latestLog.ch4Value ge 9000 && latestLog.ch4Value lt 12000}">
															<c:set var="imageUrl" value="/images/Bad.png" />
															<c:set var="statusText" value="나쁨" />
														</c:when>

														<c:when test="${latestLog.ch4Value ge 12000}">
															<c:set var="imageUrl" value="/images/VeryBad.png" />
															<c:set var="statusText" value="매우 나쁨" />
														</c:when>

													</c:choose>

													<!-- 이미지 출력 -->
													<img class="o-level2" src="${imageUrl}" alt="악취 레벨 이미지"
														style="max-width: 26rem" />

												</div>
											</div>
										</div>

										<!-- 수치, 상태 데이터 들어갈 자리  -->
										<div>
											<p class="text-gray-700-custom mb-0">${latestLog.ch4Value}
												ppm</p>
											<p class="text-gray-700-custom mb-0">${statusText}</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- 메인 콘텐츠 끝점 -->





						<!-- 실시간 기상 정보 시작점 -->


						<div class="weather-container">
							<!-- 실시간 기상 정보 - 기온 -->
							<div class="weather-item temp">



								<span class="weather-label">기온</span> <span
									class="weather-value"><span id="temp">-</span>°C</span>

							</div>
							<!-- 실시간 기상 정보 - 습도 -->
							<div class="weather-item humidity">



								<span class="weather-label">습도</span> <span
									class="weather-value"><span id="hum">-</span>%</span>
							</div>
							<!-- 실시간 기상 정보 - 풍향 -->
							<div class="weather-item wind-dir">


								<span class="weather-label">풍향</span> <span
									class="weather-value"><img id="winddir"
									src="/images/illust_direction/direction_South.png"
									alt="Wind Direction Icon"></span>
							</div>
							<!-- 실시간 기상 정보 - 풍속 -->
							<div class="weather-item wind-speed">



								<span class="weather-label">풍속</span> <span
									class="weather-value"><span id="windspeed">-</span>m/s</span>
							</div>
							<!-- 실시간 기상 정보 - 날씨 -->
							<div class="weather-item weather-info">

								<span class="weather-label">날씨</span> <span
									class="weather-value"><img id="weather" src=""></img></span>
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
								<span class="input-group-text"> <img
									src="/images/calendar.png" width="30px" height="30px">
								</span> <input class="form-control ps-0 pointer" id="datePicker" />
							</div>

							<div class=calendar-checkbox>
								<div class="input-group input-group-joined border-0-calendar">

									<label class=checkbox1><input type="checkbox"
										id="h2sCheckbox" checked> H2S 황화수소</label> <label
										class=checkbox2><input type="checkbox"
										id="nh3Checkbox" checked> NH3 암모니아</label> <label
										class=checkbox3><input type="checkbox"
										id="ch4Checkbox" checked> CH4 메탄</label>

								</div>
							</div>
							<button class="btn btn-outline-green report-btn" type="button"
								data-bs-toggle="modal" data-bs-target="#DownloadModal">악취
								데이터 리포트 다운로드</button>
						</div>


						<!-- 리포트 다운로드 모달창 -->
						<div class="modal fade" id="DownloadModal" tabindex="-1"
							role="dialog" aria-labelledby="myExtraLargeModalLabel"
							style="display: none;" aria-hidden="true">
							<div class="modal-dialog modal-dialog-scrollable modal-lg"
								role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">리포트 다운로드</h5>
										<button class="btn-close" type="button"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<div class="card table-body-custom">
											<div class="card-body ">
												<table id="reportTable">
													<thead>
														<tr class="table-head-custom">
															<th style="text-align: center" width="24%">황화수소</th>
															<th style="text-align: center" width="24%">암모니아</th>
															<th style="text-align: center" width="24%">메탄</th>
															<th style="text-align: center" width="24%">업데이트 시간</th>
														</tr>
													</thead>
													<tbody>

														<c:forEach var="log" items="${logResults}">
															<tr>
																<td class="center-sort">${log.h2sValue != null ? log.h2sValue : '-'}</td>
																<td class="center-sort">${log.nh3Value != null ? log.nh3Value : '-'}</td>
																<td class="center-sort">${log.ch4Value != null ? log.ch4Value : '-'}</td>
																<td class="pighouse_name">${log.insertTime}</td>
															</tr>
														</c:forEach>

													</tbody>
												</table>
											</div>
										</div>

										<!-- 현재 페이지 데이터로 차트 그리기 -->

										<div class="card table-body-custom">
											<div class="card-body ">
												<table id="questionTable">
													<tbody>
													
														<tr>
															<td>
																<div class="chart-area_modal">
																	<canvas id="odorChart-area_modal"></canvas>
																</div>
															</td>
														</tr>
														<tr>
															<td id="Answer">보고서 자동 생성 중..</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>

									</div>

									<div class="modal-footer">

										

										<button id="search" class="btn btn-outline-info" type="button"
											style="width: 100px; margin-left: 40%; margin-top: 10px">질문하기
											(개발 중)</button>
										<button id="chartbtn" class="btn btn-primary-custom"
											type="button">차트 그리기</button>

										<button class="btn btn-primary-custom" type="button"
											onclick="exportTableToExcel()">엑셀로 다운로드 하기</button>
										<button class="btn btn-primary-custom" type="button"
											data-bs-dismiss="modal">닫기</button>
									</div>


								</div>
							</div>
						</div>

						<!-- 차트 들어갈 부분 (아래 날짜 칸에 선택한 날짜 들어가게끔 넣기)-->
						<div class="row">
							<div class="col-xl-6 mb-4 chart-custom">
								<div class="card card-header-actions h-100-custom">
									<div class="card-header card-header-custom">
										악취 요소별 추이 &nbsp;
										<p id="dateRange"></p>
									</div>
									<div class="card-body">
										<div class="chart-area">
											<canvas id="odorChart-area" width="100%" height="30"></canvas>
										</div>
									</div>
								</div>
							</div>

							<!-- 내일 악취 요소 예측 차트 -->
							<div class="col-xl-6 mb-4 chart-custom">
								<div class="card card-header-actions h-100-custom">
									<div class="card-header card-header-custom">
									<span class="tooltip-link"
											data-tooltip="악취 요소를 클릭하면 필터링 가능!" style="">
									내일 악취 요소 예측
										&nbsp;</span></div>
									<div class="card-body">
										<div class="chart-area">
										
											<canvas id="odorChart-area2" width="100%" height="30"></canvas>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- row 끝 -->
			</main>


			<!--  Footer -->
			<%@ include file="footer.jsp"%>


		</div>
		<!-- layoutSidenav content 끝 -->
	</div>

	<!-- layoutSidenav 끝 -->




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="/js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="/js/datatables.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/litepicker/dist/bundle.js"
		crossorigin="anonymous"></script>
	<script src="/js/litepicker.js"></script>
	<script src="/js/weather.js"></script>
	<script src="/js/predictWithWeatherData.js"></script>
	<script src="/js/odorChart.js"></script>
	<script src="/js/darkmode.js"></script>

	<!-- 엑셀 다운로드 -->
	<script>
        function exportTableToExcel() {
            let table = document.getElementById("reportTable");
            let wb = XLSX.utils.table_to_book(table, {sheet: "Sheet1"});
            let table2 = document.getElementById("questionTable");
            let ws2 = XLSX.utils.table_to_book(table2, {sheet: "Sheet2"});
            XLSX.utils.book_append_sheet(wb, ws2, "Sheet2");
            XLSX.writeFile(wb, "table.xlsx");
        }
    </script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>

	<!-- Gemini script -->
	<script type="importmap"> {"imports": {"@google/generative-ai": "https://esm.run/@google/generative-ai"} } </script>
	<script type="module">
   	import { GoogleGenerativeAI } from "@google/generative-ai";

   	const API_KEY = "AIzaSyDZmX5MrJQ6RxGdqJa8CxrhbDB3PBmIZvw";

   	const genAI = new GoogleGenerativeAI(API_KEY);
   	const model = genAI.getGenerativeModel({ model: "gemini-1.5-flash"});


   	$('#search').click(async ()=>{
   	$('#Answer').text('10초 정도 소요됩니다! 잠시만 기다려주세요!');
	var prompt = "치킨 메뉴 추천";

                   
   	const result = await model.generateContent(prompt);
 	const response = await result.response;
 	const text = response.text();

	$('#Answer').text(text);

    })
   </script>
</body>
</html>
