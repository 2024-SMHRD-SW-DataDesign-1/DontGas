<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Don't Gas - CreatePost</title>
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
										게시글 추가
									</h1>
								</div>

							</div>
						</div>
					</div>
				</header>

				<!-- Main page content-->
				<div class="container-fluid px-4">
					<div class="row gx-4">
						<div class="col-lg-8">
							<div class="card mb-4">
								<div class="card-header">게시글 제목</div>
								<div class="card-body">
									<input class="form-control" id="postTitleInput" type="text"
										placeholder="Enter your post title..." />
								</div>
							</div>
							<div class="card card-header-actions mb-4">
								<div class="card-header">
									미리보기 <i class="text-muted" data-feather="info"
										data-bs-toggle="tooltip" data-bs-placement="left"
										title="The post preview text shows below the post title, and is the post summary on blog pages."></i>
								</div>
								<div class="card-body">
									<textarea class="lh-base form-control" type="text"
										placeholder="Enter your post preview text..." rows="4"></textarea>
								</div>
							</div>
							<div class="card card-header-actions mb-4 mb-lg-0">
								<div class="card-header">
									게시글 내용 <i class="text-muted" data-feather="info"
										data-bs-toggle="tooltip" data-bs-placement="left"
										title="Markdown is supported within the post content editor."></i>
								</div>
								<div class="card-body">
									<textarea id="postEditor">
									## 게시글을 써주세요.
									</textarea>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="card card-header-actions">
								<div class="card-header">
									게시글 업로드 <i class="text-muted" data-feather="info"
										data-bs-toggle="tooltip" data-bs-placement="left"
										title="After submitting, your post will be published once it is approved by a moderator."></i>
								</div>
								<div class="card-body">
									<div class="d-grid mb-3">
										<button class="fw-500 btn btn-primary-soft text-primary">임시
											저장</button>
									</div>
									<div class="d-grid">
										<button class="fw-500 btn btn-primary">업로드하기</button>
									</div>
								</div>
							</div>
						</div>


					</div>
				</div>

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