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
	
	<!-- 헤더 -->
	<%@ include file="header.jsp" %>


	<div id="layoutSidenav">
	
		<!-- 사이드 메뉴 -->
		<%@ include file="sidenav.jsp" %>
		


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
