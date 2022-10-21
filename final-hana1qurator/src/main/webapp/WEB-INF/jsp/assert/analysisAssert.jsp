<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Solartec - Renewable Energy Website Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<script defer
	src="${ pageContext.request.contextPath }/resources/assets_portal/plugins/fontawesome/js/all.min.js"></script>

<!-- App CSS -->
<link id="theme-style" rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/assets_portal/css/portal.css">

<!-- Favicon -->
<link
	href="${ pageContext.request.contextPath }/resources/img/favicon.ico"
	rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link
	href="${ pageContext.request.contextPath }/resources/lib/animate/animate.min.css"
	rel="stylesheet">
<link
	href="${ pageContext.request.contextPath }/resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="${ pageContext.request.contextPath }/resources/lib/lightbox/css/lightbox.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link
	href="${ pageContext.request.contextPath }/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link
	href="${ pageContext.request.contextPath }/resources/css/style.css"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<style type="text/css">
* {
	font-family: 'Noto Sans KR', sans-serif !important;
}

a:hover {
	color: green;
}
</style>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>


<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>


	<!-- Page Header Start -->
	<div class="container-fluid page-header py-5 mb-5">
		<div class="container py-5">
			<h1 class="display-3 text-white mb-3 animated slideInDown">MY자산</h1>
			<nav aria-label="breadcrumb animated slideInDown">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
					<li class="breadcrumb-item"><a class="text-white" href="#">Asserts</a></li>
					<li class="breadcrumb-item text-white active" aria-current="page">MY
						자산 분석</li>
				</ol>
			</nav>
		</div>
	</div>
	<!-- Page Header End -->



	<div class="container-fluid sidepanel-inner d-flex flex-column"
		style="width: 20%; float: left;">
		<div style="padding-left: 30px;">
			<h3 style="color: #018c8d">자산관리</h3>
			<hr style="width: 200px; height: 5px; background-color: #018c8d">
			<div style="color: grey;">서비스 안내 및 가입</div>
			<hr style="width: 200px;">
			<div style="color: grey;">MY 자산 조회</div>
			<hr style="width: 200px;">
			<h6>
				<a href="#" style="color: black;">MY 자산 분석</a>
			</h6>
			<hr style="width: 200px;">
			<div style="color: grey">MY 자산 하나로 모으기</div>
			<hr style="width: 200px;">
			<div style="color: grey">서비스 해지</div>
			<hr style="width: 200px;">

		</div>
	</div>


	<div class="app-wrapper">
		<div style="margin: auto;">
			<div class="app-content pt-3 p-md-3 p-lg-4">
				<div class="container-xl">
					<div class="text-center mx-auto mt-4 mb-5 wow fadeInUp"
						data-wow-delay="0.1s" style="max-width: 600px;">
						<h6 class="text-primary">Hana 1Qurator 자산분석</h6>
						<h2 class="mb-2">MY 자산 분석</h2>
					</div>



					<div class="row g-4 mb-4">
						<div class="col-12 col-lg-12">
							<div class="app-card app-card-chart h-100 shadow-sm">

								<div
									class="app-card app-card-chart border border-light h-100 shadow-sm">
									<div class="app-card-header bg-primary p-3">
										<div class="row justify-content-between align-items-center">
											<div style="text-align: center;">
												<h4 class="app-card-title" style="color: white;">자산정보</h4>
											</div>
											<!--//col-->
										</div>
										<!--//row-->
									</div>
									<!--//app-card-header-->
									<div class="row">
										<div class="col-12 col-lg-6 app-card-body p-3 p-lg-4">
											<!-- chart  -->
											<div class="chart-container"
												style="width: 60%; margin: auto; margin-bottom: 30px;">
												<canvas id="assertsChart" width="50pxl" height="50px;"></canvas>
											</div>
										</div>
										<div class="col-12 col-lg-5 app-card-body pt-5">
											<!-- chart  -->
											<div class="row g-4 mb-3">
												<div class="col-12 col-lg-12 text-center">
													<div class="row">
															<div class="col-12 col-lg-12 p-0">
																<h3>구이경님의 순자산은 000원 입니다.</h3>
															</div>
													</div>
													
													<div class="card bg-primary text-center p-3">
													<div class="row pt-3 pb-3">
															<div class="col-12 col-lg-4">
																<h5>계좌/현금</h5>
															</div>
															<div class="col-12 col-lg-2">
																<h5>65%</h5>
															</div>
															<div class="col-12 col-lg-6" style="text-align: right;">
																<h5>300000000원</h5>
															</div>
													</div>
													
													<div class="row pb-3">
															<div class="col-12 col-lg-4">
																<h5>계좌/현금</h5>
															</div>
															<div class="col-12 col-lg-2">
																<h5>65%</h5>
															</div>
															<div class="col-12 col-lg-6" style="text-align: right;">
																<h5>300000000원</h5>
															</div>
													</div>
													
													<div class="row pb-3">
															<div class="col-12 col-lg-4">
																<h5>계좌/현금</h5>
															</div>
															<div class="col-12 col-lg-2">
																<h5>65%</h5>
															</div>
															<div class="col-12 col-lg-6" style="text-align: right;">
																<h5>300000000원</h5>
															</div>
													</div>
													</div>
												
												</div>
											</div>

										</div>
										<!--//app-card-body-->
									</div>
								</div>
								<!--//app-card-->
							</div>
							<!--//col-->
						</div>
					</div>
					<!--//row-->




					<!-- 또래와의 비교 -->
					<div class="row g-4 mb-4">
						<div class="col-12 col-lg-12">
							<div class="app-card app-card-chart h-100 shadow-sm">

								<div
									class="app-card app-card-chart border border-light h-100 shadow-sm">
									<div class="app-card-header bg-primary p-3">
										<div class="row justify-content-between align-items-center">
											<div style="text-align: center;">
												<h4 class="app-card-title" style="color: white;">자산정보</h4>
											</div>
											<!--//col-->
										</div>
										<!--//row-->
									</div>
									<!--//app-card-header-->
									<div class="row">
										<div class="col-12 col-lg-6 app-card-body p-3 p-lg-4">
											<!-- chart  -->
											<div class="chart-container"
												style="width: 60%; margin: auto; margin-bottom: 30px;">
												<canvas id="assertsChart" width="50pxl" height="50px;"></canvas>
											</div>
										</div>
										<div class="col-12 col-lg-6 app-card-body p-3 p-lg-4">
											<!-- chart  -->

											<div class="row g-4 mb-3">
												<div class="col-12 col-lg-11">
													<div
														class="app-card bg-light app-card-chart shadow-sm mt-3 mb-5">
														<div class="app-card-body p-3 p-lg-4">
															<div style="text-align: center;">
																<div class="row mt-n2 wow fadeInUp"
																	data-wow-delay="0.3s">
																	<div class="col-12 text-center mt-3">
																		<ul class="nav nav-pills mb-3 nav-fill" role="tablist">
																			<li class="nav-item">
																				<button type="button" class="nav-link active"
																					role="tab" data-bs-toggle="tab"
																					data-bs-target="#navs-pills-justified-home"
																					aria-controls="navs-pills-justified-home"
																					aria-selected="true">
																					<i class="tf-icons bx bx-home"></i>계좌
																				</button>
																			</li>
																			<li class="nav-item">
																				<button type="button" class="nav-link" role="tab"
																					data-bs-toggle="tab"
																					data-bs-target="#navs-pills-justified-profile"
																					aria-controls="navs-pills-justified-profile"
																					aria-selected="false">
																					<i class="tf-icons bx bx-user"></i>주식
																				</button>
																			</li>
																			<li class="nav-item">
																				<button type="button" class="nav-link" role="tab"
																					data-bs-toggle="tab"
																					data-bs-target="#navs-pills-justified-messages"
																					aria-controls="navs-pills-justified-messages"
																					aria-selected="false">
																					<i class="tf-icons bx bx-message-square"></i>대출
																				</button>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
														<!--//app-card-body-->
													</div>
													<!--//app-card-->
												</div>
											</div>
											<div class="row g-4 mb-3">
												<div class="col-12 col-lg-11">
													<div class="app-card bg-light app-card-chart shadow-sm">
														<div class="app-card-body p-3 p-lg-4">
															<div style="text-align: center;">
																<div class="row mt-n2 wow fadeInUp"
																	data-wow-delay="0.3s">
																	<div class="col-12 text-center mt-3">
																		<ul class="nav nav-pills mb-3 nav-fill" role="tablist">
																			<li class="nav-item">
																				<button type="button" class="nav-link active"
																					role="tab" data-bs-toggle="tab"
																					data-bs-target="#navs-pills-justified-home"
																					aria-controls="navs-pills-justified-home"
																					aria-selected="true">
																					<i class="tf-icons bx bx-home"></i>계좌
																				</button>
																			</li>
																			<li class="nav-item">
																				<button type="button" class="nav-link" role="tab"
																					data-bs-toggle="tab"
																					data-bs-target="#navs-pills-justified-profile"
																					aria-controls="navs-pills-justified-profile"
																					aria-selected="false">
																					<i class="tf-icons bx bx-user"></i>주식
																				</button>
																			</li>
																			<li class="nav-item">
																				<button type="button" class="nav-link" role="tab"
																					data-bs-toggle="tab"
																					data-bs-target="#navs-pills-justified-messages"
																					aria-controls="navs-pills-justified-messages"
																					aria-selected="false">
																					<i class="tf-icons bx bx-message-square"></i>대출
																				</button>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
														<!--//app-card-body-->
													</div>
													<!--//app-card-->
												</div>
											</div>


										</div>
										<!--//app-card-body-->
									</div>
								</div>
								<!--//app-card-->
							</div>
							<!--//col-->
						</div>
					</div>
					<!--//row-->





				</div>
				<!--//container-xl-->
			</div>
		</div>
	</div>



	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/lib/wow/wow.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/lib/easing/easing.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/lib/waypoints/waypoints.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/lib/counterup/counterup.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/lib/owlcarousel/owl.carousel.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/lib/isotope/isotope.pkgd.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/lib/lightbox/js/lightbox.min.js"></script>

	<!-- Template Javascript -->
	<script src="${ pageContext.request.contextPath }/resources/js/main.js"></script>

	<script
		src="${ pageContext.request.contextPath }/resources/focus/vendor/global/global.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/focus/js/quixnav-init.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/focus/js/custom.min.js"></script>

	<!-- Javascript -->
	<script
		src="${ pageContext.request.contextPath }/resources/assets_portal/plugins/popper.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/assets_portal/plugins/bootstrap/js/bootstrap.min.js"></script>


	<!-- Charts JS -->
	<script
		src="${ pageContext.request.contextPath }/resources/assets_portal/plugins/chart.js/chart.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/assets_portal/js/charts-demo.js"></script>

	<!-- Page Specific JS -->
	<script
		src="${ pageContext.request.contextPath }/resources/assets_portal/js/app.js"></script>

	<script
		src="${ pageContext.request.contextPath }/resources/assets_portal/plugins/popper.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/assets_portal/plugins/bootstrap/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		var accountBalance = '<c:out value="${accountBalance }"/>'
		var loanBalance = '<c:out value="${loanBalance }"/>'
		var stockBalance = '<c:out value="${stockBalance }"/>'

		var accountRatio = Math
				.round((Number(accountBalance) / (Number(accountBalance)
						+ Number(loanBalance) + Number(stockBalance))) * 100)
		var loanRatio = Math
				.round((Number(loanBalance) / (Number(accountBalance)
						+ Number(loanBalance) + Number(stockBalance))) * 100)
		var stockRatio = Math
				.round((Number(stockBalance) / (Number(accountBalance)
						+ Number(loanBalance) + Number(stockBalance))) * 100)

		$(document).ready(
				function() {

					let chart2 = document.getElementById('assertsChart')
							.getContext('2d');

					let assertsChart = new Chart(chart2,
							{
								type : 'pie',
								data : {
									labels : [ '계좌·현금', '주식', '대출' ],
									datasets : [ {
										label : '자산비율',
										data : [ accountRatio, loanRatio,
												stockRatio ],
										backgroundColor : [ '#018c8d',
												'#d3ebeb', 'red' ]
									} ]
								},
								options : {
									responsive : true,
									legend : {
										display : true,
										position : 'bottom',
										align : 'center',
									},
									animation : {
										animateScale : true,
										animateRotate : true
									}
								}

							})
				});
	</script>
</body>
</html>