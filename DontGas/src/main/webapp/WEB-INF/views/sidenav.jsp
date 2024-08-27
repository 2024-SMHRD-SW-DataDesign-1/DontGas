<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!-- ���̵�޴� -->
<div id="layoutSidenav_nav">
	<nav class="sidenav shadow-right sidenav-light sidenav-custom">
		<div class="sidenav-menu">
			<div class="nav accordion" id="accordionSidenav">
				<p class="nav-link collapsed sidemenu-custom" data-bs-toggle="modal"
					data-bs-target="#Modal" aria-expanded="false"
					aria-controls="collapseDashboards">
					csv �ٿ�ε� <img class="btn-icon"
						src="${pageContext.request.contextPath}/images/csv-download.png"></img>
				</p>
			</div>
		</div>
	</nav>
</div>



<!-- ����Ʈ �ٿ�ε� ���â -->
<div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" style="display: none;" aria-hidden="true">
	<div class="modal-dialog modal-dialog-scrollable modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">CSV �ٿ�ε�</h5>
				<button class="btn-close" type="button" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
					<div class="card table-body-custom">
						<div class="card-body ">
							<table id="datatablesModal">
								<thead>
									<tr class="table-head-custom">
										<th>�����</th>
										<th>�ּ�</th>
										<th>�ٿ�ε� ����<th>
									</tr>
								</thead>
								<tbody>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">�볪�� ���</a></td>
										<td>���󳲵� ��籺 ����</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">���� �絷��</a></td>
										<td>���ϵ� ĥ� �ְ���</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">���絷��</a></td>
										<td>����ϵ� ��â�� �����</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">����絷��</a></td>
										<td>����Ư����ġ�� �������� ���ﵿ</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">�񺹾絷��</a></td>
										<td>��󳲵� ��õ�� �ʰ��</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">�ݻ�絷��</a></td>
										<td>���󳲵� ���ֽ� ��ȸ�</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">�ͻ� �絷��</a></td>
										<td>���󳲵� ������ ������</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">���� ����</a></td>
										<td>���ϵ� ���� �з���</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">�������絷��</a></td>
										<td>��� ���ֽ� ������ ������</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">���;絷��</a></td>
										<td>��⵵ ��õ�� �ϵ��� ������</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">��Ⱦ絷��</a></td>
										<td>���� �ξȱ� ��ȸ� ���ʸ�</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">�ظ��絷��</a></td>
										<td>���� ��â�� �ظ���</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">��ȭ�絷��</a></td>
										<td>���ϵ� ���̽� ������</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">���������</a></td>
										<td>��⵵ ���� ���籸 ��õ��</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">���۳���</a></td>
										<td>���ϵ� ��ȭ�� ��ȭ��</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr class="table-head-custom">
										<td class="pighouse_name"><img class="user"
											src="${pageContext.request.contextPath}/images/user.png"><a
											href="info">���������п� ����4</a></td>
										<td>����ϵ� ���ֱ� �̼���</td>
										<td><input class="form-check-input" id="flexCheckDefault" type="checkbox" value=""><td>
									</tr>
									<tr>
								
								</tbody>
							</table>
						</div>
					</div>
			</div>
			<div class="modal-footer">
				<button class="btn btn-primary" type="button" data-bs-dismiss="modal">�ٿ�ε�</button>
				<button class="btn btn-primary" type="button" data-bs-dismiss="modal">�ݱ�</button>
			</div>
		</div>
	</div>
</div>
F
