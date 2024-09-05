<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 사이드메뉴 -->
<div id="layoutSidenav_nav">
	<nav class="sidenav shadow-right sidenav-light sidenav-custom">
		<div class="sidenav-menu">
		
		<div class="nav accordion" id="accordionSidenav">
				<a class="nav-link collapsed sidemenu-custom" href="/list"
					style="transform: translate(40px, 13px);"> 
					<img class="btn-icon" src="/images/pigslist.png"></img> 돈사 리스트
				</a>
			</div>
			
			<div class="nav accordion" id="accordionSidenav">
				<p class="nav-link collapsed sidemenu-custom" data-bs-toggle="modal"
					data-bs-target="#Modal" aria-expanded="false"
					aria-controls="collapseDashboards">
					<img class="btn-icon-sheet" src="/images/pigslist.png"></img> 돈사 이동
				</p>
			</div>

			<div class="nav accordion" id="accordionSidenav">
				<a class="nav-link collapsed sidemenu-custom" href="/postlist"
					style="transform: translate(4px, -27px);"> <img
					class="btn-icon-board" src="/images/billboard.png"></img> 게시판
				</a>
			</div>

		</div>
	</nav>
</div>



<!-- 리포트 다운로드 모달창 -->
<div class="modal fade" id="Modal" tabindex="-1" role="dialog"
	aria-labelledby="myExtraLargeModalLabel" style="display: none;"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-scrollable modal-lg"
		role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">돈사 이동</h5>
				<button class="btn-close" type="button" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="card table-body-custom">
					<div class="card-body ">
						<table id="datatablesModal">
							<thead>
								<tr class="table-head-custom">
									<th style="text-align: center" width="24%">돈사명</th>
									<th style="text-align: center" width="24%">주소</th>
									<th style="text-align: center" width="24%">연락처</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="pigHouse" items="${sessionScope.pigHouseList}">
									<tr>

										<td class="pighouse_name"><img class="user"
											src="/images/user.png"> <a
											href="/info/${pigHouse.phouseId}">${pigHouse.phouseName}</a>
										</td>

										<td class="center-sort">${pigHouse.phouseAddress}</td>

										<td class="center-sort">
											${pigHouse.farmer.farmerPhoneNumber}</td>

									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button class="btn btn-primary-custom" type="button"
					data-bs-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
