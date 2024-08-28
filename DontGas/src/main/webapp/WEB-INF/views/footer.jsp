<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<img id="modbtn"
	src="${pageContext.request.contextPath}/images/darkpig.png"
	alt="다크모드 버튼" onclick="toggleDarkMode()"
	data-light-src="${pageContext.request.contextPath}/images/lightpig.png"
	data-dark-src="${pageContext.request.contextPath}/images/darkpig.png">

<footer class="footer-admin mt-auto footer-light">
	<div class="container-xl px-4">
		<div class="row">
			<div class="copyright-footer">Copyright &copy; Don't Gas 2024</div>
		</div>
	</div>
</footer>