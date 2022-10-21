<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Solartec - Renewable Energy Website Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<!-- FontAwesome JS-->
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

<script defer
	src="${ pageContext.request.contextPath }/resources/assets_portal/plugins/fontawesome/js/all.min.js"></script>

<!-- App CSS -->
<link id="theme-style" rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/assets_portal/css/portal.css">


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"
	integrity="sha512-ElRFoEQdI5Ht6kZvyzXhYG9NqjtkmlkfYk0wr6wHxU9JEHakS7UJZNeml5ALk+8IKlU6jDgMabC3vkumRokgJA=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	//은퇴준비자금
	var resultPreparedAmount = '<c:out value="${retireVO.resultPreparedAmount}"/>'
	//공적연금
	var resultPensionAmount = '<c:out value="${retireVO.resultPensionAmount}"/>'
	//월저축금액
	var resultSavingAmount = '<c:out value="${retireVO.resultSavingAmount}"/>'

	console.log(resultPreparedAmount)
	console.log(resultSavingAmount)
	console.log(resultPensionAmount)

	$(document).ready(
			function() {

				let myChartOne = document.getElementById('myChartOne')
						.getContext('2d');

				let barChart = new Chart(myChartOne, {
					type : 'pie',
					data : {
						labels : [ '은퇴준비자김', '공적연금', '월 저축액' ],
						datasets : [ {
							label : '은퇴설계',
							data : [ resultPreparedAmount, resultPensionAmount,
									resultSavingAmount ],
							backgroundColor : [ 'rgba(255,99,132,1)',
									'rgba(25,99,132,1)', 'rgba(255,9,12,1)' ]
						} ]
					},
					options : {
						responsive : true,
						legend : {
							display : true,
							position : 'bottom',
							align : 'center',
						}
					}

				})
			});
</script>

</head>

<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>
	<!-- Page Header Start -->
	<div class="container-fluid page-header py-5 mb-5">
		<div class="container py-5">
			<h1 class="display-3 text-white mb-3 animated slideInDown">Contact</h1>
			<nav aria-label="breadcrumb animated slideInDown">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
					<li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
					<li class="breadcrumb-item text-white active" aria-current="page">Contact</li>
				</ol>
			</nav>
		</div>
	</div>
	<!-- Page Header End -->


	<div class="container-fluid sidepanel-inner d-flex flex-column"
		style="width: 20%; float: left;">
		<div style="padding-left: 30px;">
			<h3 style="color: #018c8d">재무설계</h3>
			<hr style="width: 200px; height: 5px; background-color: #018c8d">
			<div style="color: grey;">재무설계 안내</div>
			<hr style="width: 200px;">
			<h6 style="color: black">재무설계</h6>
			<hr style="width: 200px;">
			<div style="color: grey">재무설계 결과</div>
			<hr style="width: 200px;">
			<div style="color: grey">맞춤형 금융 상품 추천</div>
			<hr style="width: 200px;">
		</div>
	</div>

	<div class="app-wrapper">
		<div class="card"
			style="width: 90%; position: absolute; left: 5%; background-color: #dcefe7">


			<div class="app-content pt-3 p-md-3 p-lg-4">
				<div class="container-xl">
					<br> <br>
					<!-- first result -->
					<div
						style="width: 100%; background-color: white; height: auto; border: 5px solid black; color: black;">
						<div
							style="font-size: 18px; text-align: center; padding-top: 40px; padding-bottom: 10px;">
							고객님의 은퇴 예상 나이는 <span style="color: blue;">${retireVO.retireAge }년</span>이며
							고객님의 은퇴자금 준비 기간은 <span style="color: blue;">${retireVO.preparePeriod}년</span>입니다.
						</div>
						<div
							style="font-size: 18px; text-align: center; padding-bottom: 40px;">
							고객님의 기대 수명은 <span style="color: blue;">${retireVO.expectedAge }세</span>,
							은퇴 준비 부족 자금은 <span style="color: blue;">${retireVO.resultRequiredAmount-retireVO.resultPreparedAmount-retireVO.resultSavingAmount-retireVO.resultPensionAmount }만원</span>
							입니다.
						</div>
					</div>
					<!-- first result end  -->

					<br> <br>

					<!-- second (photo) div start  -->
					<div class="container"
						style="padding-top: 50px; text-align: center; width: 100%; background-color: white; height: 500px; border: 5px solid black; color: black;">
						<div style="text-align: center;">
							<div class="col-12 col-lg-4"
								style="float: left; text-align: right; font-size: 20px;">은퇴
								준비 기간</div>
						</div>
						<div class="col-12 col-lg-4" style="float: left; font-size: 20px;">
							---></div>
						<div class="col-12 col-lg-4"
							style="float: left; text-align: left; font-size: 20px;">은퇴
							기간</div>
						<br> <br> <br>
						<div class="col-auto">
							<div class="col-12 col-sm-4" style="float: left;">
								<img class="img-fluid" alt="사진"
									src="${pageContext.request.contextPath }/resources/img/retire1.png">
								<div style="text-align: center;">
									현재연령
									<div>${retireVO.age }세</div>
								</div>
							</div>
							<div class="col-12 col-sm-4" style="float: left;">
								<img class="img-fluid" alt="사진"
									src="${pageContext.request.contextPath }/resources/img/retire2.png">
								<div style="text-align: center;">
									은퇴연령
									<div>${retireVO.retireAge }세</div>
								</div>
							</div>
							<div class="col-12 col-sm-4" style="float: left;">
								<img class="img-fluid" alt="사진"
									src="${pageContext.request.contextPath }/resources/img/retire3.png">
								<div style="text-align: center;">
									기대수명
									<div>${retireVO.expectedAge }세</div>
								</div>
							</div>
						</div>

					</div>
					<!-- second (photo) div end  -->
					<br> <br> <br>
					<!-- <div
					style="width: 80%; background-color: white; height: 400px; color: black;padding: 70px; 50px;">
					 -->

					<table class="table table-bordered "
						style="text-align: center; width: 100%; height: 300px; margin: auto; background-color: white; color: black">
						<thead class="table-dark">
							<tr>
								<th>구분</th>
								<th>준비자금금액</th>
								<th>필요자금</th>
								<th>부족자금</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>은퇴 준비자금</th>
								<td>${retireVO.resultPreparedAmount }</td>
								<td rowspan="3">${retireVO.resultRequiredAmount }</td>
								<td rowspan="3">${retireVO.resultRequiredAmount-(retireVO.resultPreparedAmount +retireVO.resultPensionAmount +retireVO.resultSavingAmount)}</td>
							</tr>
							<tr>
								<th>공적연금</th>
								<td>${retireVO.resultPensionAmount }</td>
							</tr>
							<tr>
								<th>월 저축액</th>
								<td>${retireVO.resultSavingAmount }</td>
							</tr>
							<tr class="table-warning">
								<th>합계</th>
								<td>${retireVO.resultPreparedAmount +retireVO.resultPensionAmount +retireVO.resultSavingAmount  }</td>
								<td style="color: red;">${retireVO.resultRequiredAmount }</td>
								<td style="color: blue;">${retireVO.resultRequiredAmount-(retireVO.resultPreparedAmount +retireVO.resultPensionAmount +retireVO.resultSavingAmount)}</td>
							</tr>
						</tbody>

					</table>

					<h1 class="app-page-title" style="padding-top: 100px;">■ 은퇴 준비
						차트</h1>
					<div class="col-12 col-lg-9" style="margin: auto;">
						<div class="app-card app-card-chart h-100 shadow-sm">
							<div class="app-card-header p-3 border-0">
								<h4 class="app-card-title">Pie Chart Demo</h4>
							</div>
							<!--//app-card-header-->
							<div class="app-card-body p-4">
								<div class="chart-container">
									<canvas id="myChartOne"></canvas>
								</div>
							</div>
							<!--//app-card-body-->
						</div>
						<!--//app-card-->
					</div>



					<h1 class="app-page-title">■ 연령별 은퇴 준비 전략</h1>
					<div class="app-card shadow-sm mb-4 border-left-decoration">
						<div class="inner">
							<div class="app-card-header p-4">100세 시대</div>
							<div class="row gx-5 gy-3">
								<div class="col-12 col-lg-9">
									<div>
										인생 2막의 시작을 준비하기에 지금도 늦지 않았습니다. <br> 하나원큐레이터와 함께 행복한 노후
										준비를 위한 맞춤형 은퇴 금융 상품을 만나보세요.
									</div>
								</div>
								<!--//col-->
								<div class="col-12 col-lg-3">
									<a class="btn app-btn-primary"
										href="https://www.chartjs.org/docs/latest/" target="_blank"><svg
											width="1em" height="1em" viewBox="0 0 16 16"
											class="bi bi-arrow-up-right-square me-2" fill="currentColor"
											xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd"
												d="M14 1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
  <path fill-rule="evenodd"
												d="M5.172 10.828a.5.5 0 0 0 .707 0l4.096-4.096V9.5a.5.5 0 1 0 1 0V5.525a.5.5 0 0 0-.5-.5H6.5a.5.5 0 0 0 0 1h2.768l-4.096 4.096a.5.5 0 0 0 0 .707z" />
</svg>Learn More</a>
								</div>
								<!--//col-->
							</div>
							<!--//row-->

						</div>
						<!--//app-card-body-->
					</div>
					<!--//inner-->


					<h1 class="app-page-title">■ 금융 상품 추천</h1>


				</div>
				<!--//app-card-->
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
	
</body>
</html>