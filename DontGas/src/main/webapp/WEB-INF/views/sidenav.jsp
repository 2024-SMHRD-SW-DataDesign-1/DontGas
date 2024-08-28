<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 사이드메뉴 -->
<div id="layoutSidenav_nav">
	<nav class="sidenav shadow-right sidenav-light sidenav-custom">
		<div class="sidenav-menu">
			<div class="nav accordion" id="accordionSidenav">
				<p class="nav-link collapsed sidemenu-custom" data-bs-toggle="modal"
					data-bs-target="#Modal" aria-expanded="false"
					aria-controls="collapseDashboards">
					csv 다운로드 <img class="btn-icon"
						src="${pageContext.request.contextPath}/images/csv-download.png"></img>
				</p>
			</div>
		</div>
	</nav>
</div>



<!-- 리포트 다운로드 모달창 -->
<div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" style="display: none;" aria-hidden="true">
	<div class="modal-dialog modal-dialog-scrollable modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">CSV 다운로드</h5>
				<button class="btn-close" type="button" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
					<div class="card table-body-custom">
						<div class="card-body ">
							<table id="datatablesModal">
								<thead>
									<tr class="table-head-custom">
										<th>돈사명</th>
										<th>주소</th>
										<th>다운로드 선택<th>
									</tr>
								</thead>
								<tbody>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">대나무 축산</a></td>
										<td>전라남도 담양군 고서면</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">성민 양돈장</a></td>
										<td>경상북도 칠곡군 왜관읍</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">고라양돈장</a></td>
										<td>전라북도 고창군 무장면</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">동흥양돈장</a></td>
										<td>제주특별자치도 서귀포시 동흥동</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">희복양돈장</a></td>
										<td>경상남도 합천군 초계면</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">금산양돈장</a></td>
										<td>전라남도 나주시 노안면</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">귀산 양돈장</a></td>
										<td>전라남도 보성군 조성면</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">덕유 농장</a></td>
										<td>경상북도 경산시 압량읍</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">비젼축산양돈장</a></td>
										<td>경기 양주시 은현면 은현로</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">샛터양돈장</a></td>
										<td>경기도 포천시 일동면 사직리</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">행안양돈장</a></td>
										<td>전북 부안군 행안면 대초리</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">해리양돈장</a></td>
										<td>전북 고창군 해리면</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">선화양돈장</a></td>
										<td>경상북도 구미시 옥성면</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">대농농원돈사</a></td>
										<td>경기도 고양시 덕양구 현천동</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">보송농장</a></td>
										<td>경상북도 봉화군 봉화읍</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">국립축산과학원 돈사4</a></td>
										<td>전라북도 완주군 이서면</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr>
								
								</tbody>
							</table>
						</div>
					</div>
			</div>
			<div class="modal-footer">
				<button class="btn btn-primary" type="button" data-bs-dismiss="modal">다운로드</button>
				<button class="btn btn-primary" type="button" data-bs-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
F
