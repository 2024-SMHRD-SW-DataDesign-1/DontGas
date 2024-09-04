<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
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
<title>Don't Gas - List</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<link href="/css/lightstyles.css" rel="stylesheet" id="theme-style" />
<link rel="icon" type="image/x-icon" href="/images/pigpig.png" />
<script data-search-pseudo-elements defer
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js"
	crossorigin="anonymous"></script>
</head>

<body class="nav-fixed body-custom">


	<!-- ��� -->
	<%@ include file="header.jsp"%>



	<div id="layoutSidenav">


		<!-- ���̵� �޴� -->
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
											<img class="header-icon-custom" src="/images/pigslist.png">
										</div>
										���� ����Ʈ
									</h1>
								</div>
								<div class="col-12 col-xl-auto mb-3"></div>
							</div>
						</div>
					</div>
				</header>



				<!-- ���� ����Ʈ ���̺� -->
				<div class="container-fluid px-4">
					<div class="card table-body-custom">
						<div class="card-body ">
							<table id="datatablesSimple">
								<thead>
									<tr class="table-head-custom">
										<th class="stink-custom">���� ����</th>
										<th class="pighouse-custom">�����</th>
										<th class="connecting-custom"><span class="tooltip-link"
											data-tooltip="Ȳȭ����-�ϸ�Ͼ�-��ź ����">���� ����</span> <img
											src="/images/question1.png" width="20px" height="20px">
										</th>
										<th class="address-custom">�ּ�</th>
										<th class="contact-custom">����ó</th>
									</tr>
								</thead>

								<tbody>

									<!-- ���� 1��(�ݺ�) -->
									<c:forEach var="log" items="${sessionScope.logResultsNow}">
										<tr>

											<!-- ���� id ����(�����, �����ּ�, ���� ����ó ����� ����) -->
											<c:forEach var="phouse" items="${sessionScope.pigHouseList}">
												<c:if test="${phouse.phouseId == log.phouseId}">
													<c:set var="pigHouse" value="${phouse}" />
												</c:if>
											</c:forEach>


											<!-- ���� ���� ���� �˰��� -->
											<c:set var="h2sLevel">
												<c:choose>
													<c:when test="${log.h2sValue >= 1.8}">VeryBad</c:when>
													<c:when test="${log.h2sValue >= 0.5}">Bad</c:when>
													<c:when test="${log.h2sValue >= 0.1}">Soso</c:when>
													<c:when test="${log.h2sValue >= 0.07}">Good</c:when>
													<c:otherwise>VeryGood</c:otherwise>
												</c:choose>
											</c:set>

											<c:set var="nh3Level">
												<c:choose>
													<c:when test="${log.nh3Value >= 50}">VeryBad</c:when>
													<c:when test="${log.nh3Value >= 20}">Bad</c:when>
													<c:when test="${log.nh3Value >= 10}">Soso</c:when>
													<c:when test="${log.nh3Value >= 5}">Good</c:when>
													<c:otherwise>VeryGood</c:otherwise>
												</c:choose>
											</c:set>

											<c:set var="highestLevel">
												<c:choose>

													<c:when
														test="${h2sLevel == 'VeryBad' || nh3Level == 'VeryBad'}">VeryBad</c:when>
													<c:when test="${h2sLevel == 'Bad' || nh3Level == 'Bad'}">Bad</c:when>
													<c:when test="${h2sLevel == 'Soso' || nh3Level == 'Soso'}">Soso</c:when>
													<c:when test="${h2sLevel == 'Good' || nh3Level == 'Good'}">Good</c:when>
													<c:otherwise>VeryGood</c:otherwise>
												</c:choose>
											</c:set>

											<c:set var="dataOrder">
												<c:choose>
													<c:when test="${highestLevel == 'VeryBad'}">5</c:when>
													<c:when test="${highestLevel == 'Bad'}">4</c:when>
													<c:when test="${highestLevel == 'Soso'}">3</c:when>
													<c:when test="${highestLevel == 'Good'}">2</c:when>
													<c:otherwise>1</c:otherwise>
												</c:choose>
											</c:set>

											<!-- ���� ���� ������ -->
											<td data-order="${dataOrder}"><img class="o-level"
												src="/images/${highestLevel}.png" alt="${highestLevel}">
											</td>

											<!-- ���� �̸� -->
											<td class="pighouse_name"><img class="user"
												src="/images/user.png"> <a
												href="info/${pigHouse.phouseId}"><c:out
														value="${pigHouse.phouseName}" /></a></td>


											<!-- ���� ���� ���¿� ���� ������ ���� dataOrder2 �Ӽ� ���� -->
											<c:set var="dataOrder2">
												<c:choose>
													<c:when
														test="${log.h2sValue == null && log.nh3Value == null && log.ch4Value == null}">
											            0
											        </c:when>

													<c:when
														test="${log.h2sValue != null && log.nh3Value == null && log.ch4Value == null}">
											            1
											        </c:when>

													<c:when
														test="${log.h2sValue == null && log.nh3Value != null && log.ch4Value == null}">
											            2
											        </c:when>

													<c:when
														test="${log.h2sValue == null && log.nh3Value == null && log.ch4Value != null}">
											            3
											        </c:when>

													<c:when
														test="${log.h2sValue != null && log.nh3Value != null && log.ch4Value == null}">
											            4
											        </c:when>

													<c:when
														test="${log.h2sValue == null && log.nh3Value != null && log.ch4Value != null}">
											            5
											        </c:when>

													<c:when
														test="${log.h2sValue != null && log.nh3Value == null && log.ch4Value != null}">
											            6
											        </c:when>

													<c:when
														test="${log.h2sValue != null && log.nh3Value != null && log.ch4Value != null}">
											            7
											        </c:when>
												</c:choose>
											</c:set>

											<!-- ���� ���� ���� -->
											<td class="connecting-sort" data-order="${dataOrder2}">
												<c:choose>
													<c:when test="${log.h2sValue == null}">
														<img class="connect-1" src="/images/connect_x.png"
															alt="H2S Disconnected">
													</c:when>
													<c:otherwise>
														<img class="connect-1" src="/images/connect_o.png"
															alt="H2S Connected">
													</c:otherwise>
												</c:choose> <c:choose>
													<c:when test="${log.nh3Value == null}">
														<img class="connect-2" src="/images/connect_x.png"
															alt="NH3 Disconnected">
													</c:when>
													<c:otherwise>
														<img class="connect-2" src="/images/connect_o.png"
															alt="NH3 Connected">
													</c:otherwise>
												</c:choose> <c:choose>
													<c:when test="${log.ch4Value == null}">
														<img class="connect-3" src="/images/connect_x.png"
															alt="CH4 Disconnected">
													</c:when>
													<c:otherwise>
														<img class="connect-3" src="/images/connect_o.png"
															alt="CH4 Connected">
													</c:otherwise>
												</c:choose>
											</td>

											<!-- ���� �ּ� -->
											<td class="center-sort"><c:out
													value="${pigHouse.phouseAddress}" /></td>

											<!-- ���� ����ó -->
											<td class="center-sort"><c:out
													value="${pigHouse.farmer.farmerPhoneNumber}" /></td>
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
	<script src="js/darkmode.js"></script>
</body>
</html>
