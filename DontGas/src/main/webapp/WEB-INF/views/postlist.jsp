<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>Don't Gas - PostList</title>
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
											<i data-feather="list"></i>
										</div>
										게시판
									</h1>
								</div>
								<div class="col-12 col-xl-auto mb-3">
									<a class="btn btn-sm btn-light post-button-custom"
										href="blog-management-create-post.html"> <i class="me-1"
										data-feather="plus"></i> 게시글 추가
									</a>
								</div>
							</div>
						</div>
					</div>
				</header>
				
				
				<!-- 게시글 리스트 테이블-->
				<div class="container-fluid px-4">
					<div class="card table-body-custom">
						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr class="table-head-custom">
										<th style="width:55%">게시글 제목</th>
										<th style="width:15%">게시 날짜</th>
										<th style="width:14%">게시글 종류</th>
										<th style="width:13%">수정 및 삭제</th>
									</tr>
								</thead>
								
								<tbody>
									<tr>
										<td>저희 자돈 돈사 악취가 고민입니다..</td>
										<td style="text-align:center;">2024.09.02</td>
										<td style="text-align:center;"><div class="badge bg-gray-200 text-dark">악취 고민</div></td>
										<td style="text-align:center;"><a
											class="btn btn-datatable btn-icon btn-transparent-dark me-2"
											href="blog-management-edit-post.html"><i
												data-feather="edit"></i></a> <a
											class="btn btn-datatable btn-icon btn-transparent-dark"
											href="#!"><i data-feather="trash-2"></i></a></td>
									</tr>
									<tr>
										<td>돼지 급이기 추천 받습니다.</td>
										<td style="text-align:center;">2024.09.08</td>
										<td style="text-align:center;"><div class="badge bg-yellow-soft text-yellow">제품 추천</div></td>
										<td style="text-align:center;"><a
											class="btn btn-datatable btn-icon btn-transparent-dark me-2"
											href="blog-management-edit-post.html"><i
												data-feather="edit"></i></a> <a
											class="btn btn-datatable btn-icon btn-transparent-dark"
											href="#!"><i data-feather="trash-2"></i></a></td>
									</tr>
									<tr>
										<td>이번에 일본쪽에 태풍이 온다던데, 우리나라는 괜찮나요?</td>
										<td style="text-align:center;">2024.08.31</td>
										<td style="text-align:center;"><div class="badge bg-green-soft text-blue">기상 관련</div></td>
										<td style="text-align:center;"><a
											class="btn btn-datatable btn-icon btn-transparent-dark me-2"
											href="blog-management-edit-post.html"><i
												data-feather="edit"></i></a> <a
											class="btn btn-datatable btn-icon btn-transparent-dark"
											href="#!"><i data-feather="trash-2"></i></a></td>
									</tr>
									<tr>
										<td>스마트팜 전시회 관련 안내</td>
										<td style="text-align:center;">2024.09.01</td>
										<td style="text-align:center;"><div class="badge bg-green-soft text-green">스마트팜</div></td>
										<td style="text-align:center;"><a
											class="btn btn-datatable btn-icon btn-transparent-dark me-2"
											href="blog-management-edit-post.html"><i
												data-feather="edit"></i></a> <a
											class="btn btn-datatable btn-icon btn-transparent-dark"
											href="#!"><i data-feather="trash-2"></i></a></td>
									</tr>
									<tr>
										<td>악취 민원 이번달에 몇 건 나오셨나요?</td>
										<td style="text-align:center;">2024.09.06</td>
										<td style="text-align:center;"><div class="badge bg-green-soft text-dark">악취 고민</div></td>
										<td style="text-align:center;"><a
											class="btn btn-datatable btn-icon btn-transparent-dark me-2"
											href="blog-management-edit-post.html"><i
												data-feather="edit"></i></a> <a
											class="btn btn-datatable btn-icon btn-transparent-dark"
											href="#!"><i data-feather="trash-2"></i></a></td>
									</tr>
									<tr>
										<td>Don't Gas 모니터링 데이터 축산환경관리원에 보내려면 어떻게 해야하나요?</td>
										<td style="text-align:center;">2024.09.02</td>
										<td style="text-align:center;"><div class="badge bg-green-soft text-red">Don't Gas 사용법</div></td>
										<td style="text-align:center;"><a
											class="btn btn-datatable btn-icon btn-transparent-dark me-2"
											href="blog-management-edit-post.html"><i
												data-feather="edit"></i></a> <a
											class="btn btn-datatable btn-icon btn-transparent-dark"
											href="#!"><i data-feather="trash-2"></i></a></td>
									</tr>
									<tr>
										<td>센서 연결된거 확인했는데 센서 미연결로 뜹니다.</td>
										<td style="text-align:center;">2024.09.07</td>
										<td style="text-align:center;"><div class="badge bg-green-soft text-red">Don't Gas 사용법</div></td>
										<td style="text-align:center;"><a
											class="btn btn-datatable btn-icon btn-transparent-dark me-2"
											href="blog-management-edit-post.html"><i
												data-feather="edit"></i></a> <a
											class="btn btn-datatable btn-icon btn-transparent-dark"
											href="#!"><i data-feather="trash-2"></i></a></td>
									</tr>
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
	<script src="/js/darkmode.js"></script>
</body>
</html>
