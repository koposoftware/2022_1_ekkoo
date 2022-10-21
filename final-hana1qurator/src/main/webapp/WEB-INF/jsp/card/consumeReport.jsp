<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Solartec - Renewable Energy Website Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">



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

<!-- <link rel="stylesheet" href="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css"/>  -->
<!-- App CSS -->
<link id="theme-style" rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/assets_portal/css/portal.css">

<!-- FontAwesome JS-->
<script defer
	src="${ pageContext.request.contextPath }/resources/assets_portal/plugins/fontawesome/js/all.min.js"></script>
<script
	src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"
	integrity="sha512-ElRFoEQdI5Ht6kZvyzXhYG9NqjtkmlkfYk0wr6wHxU9JEHakS7UJZNeml5ALk+8IKlU6jDgMabC3vkumRokgJA=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- 
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script> -->

<script type="text/javascript">
	//은퇴준비자금
	//var resultPreparedAmount = '<c:out value="${retireVO.resultPreparedAmount}"/>'
	//공적연금
	//var resultPensionAmount = '<c:out value="${retireVO.resultPensionAmount}"/>'
	//월저축금액
	//var resultSavingAmount = '<c:out value="${retireVO.resultSavingAmount}"/>'

	//console.log(resultPreparedAmount)
	//console.log(resultSavingAmount)
	//console.log(resultPensionAmount)

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
							data : [ 10, 20, 30 ],
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
	
	
	$(document).ready(
			function() {

				let chartBar = document.getElementById('chartBar')
						.getContext('2d');

				let barChart = new Chart(chartBar, {
					type : 'bar',
					data : {
						labels : [ '6월', '7월', '8월' ],
						datasets : [ {
							label : '6개월 소비 비교',
							data : [ 10, 20, 30 ],
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
<style type="text/css">
a:hover {
	color: red;
}
</style>


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



	<div class="app-content pt-3 p-md-3 p-lg-4">
		<div class="container-xl">
			<div class="row gy-4">
				<div class="col-12 col-md-12">
					<div
						class="card card-light app-card app-card-account shadow-sm d-flex flex-column align-items-start">
						<div class="app-card-header p-3 border-bottom-0">
							<div class="row align-items-center gx-3">
								<div class="col-auto">
									<h4 class="app-card-title">${loginVO.name }님소유카드</h4>
								</div>
								<!--//col-->
							</div>
							<!--//row-->
						</div>
						<!--//app-card-header-->
						<div class="app-card-body px-4 w-100">

							<div class="item border-bottom py-3">
								<div class="row justify-content-between align-items-center">
									<div class="container">
										<div class="row">

											<div class="col-12 col-md-4"
												style="float: left; text-align: center;">
												<img alt=""
													src="${pageContext.request.contextPath }/resources/img/card/card1.jpg">
												<div>썸타는 위비 프렌즈 봄봄</div>
												<div>0000-0000-0000-0000</div>
											</div>

											<div class="col-12 col-md-7" style="text-align: right;">
												<h5 style="text-align: left;">내 카드 이용금액</h5>
												<h2
													style="padding-top: 30px; padding-bottom: 5px; background-color: light;">이번달
													총 이용 금액은 00원입니다</h2>
												<h6 style="padding-bottom: 15px;">'결제단위'별로 고객님이 지정하신
													계좌에서 출금됩니다</h6>
												<hr>
												<br> <br>
												<table class="table table-borderless table-light">
													<tr>
														<th scope="row">결제일</th>
														<td>매월 01일</td>
													</tr>
													<tr>
														<th scope="row">결제계좌</th>
														<td>하나은행 1000</td>
													</tr>
													<tr>
														<th scope="row">명세서 수령방법</th>
														<td>스마트명세서</td>
													</tr>

												</table>

											</div>




										</div>
										<!--//col-->
									</div>
								</div>
								<!--//container-->
							</div>

						</div>
						<!--//app-card-body-->

					</div>
					<!--//app-card-->
				</div>


			</div>
			<!--//col-->


			<div style="padding-bottom: 100px;"></div>

			<h1 class="app-page-title" style="text-align: center; padding: 50px;">내가
				받은 혜택</h1>
			<div class="row gy-4">
				<div class="col-12 col-md-12">
					<div
						class="card card-primary app-card app-card-account shadow-sm d-flex flex-column align-items-start">
						<div class="app-card-header p-3 border-bottom-0">
							<div class="row align-items-center gx-3">

								<div class="col-auto">

									<h4 class="app-card-title">8월 카드 혜택</h4>
								</div>
								<!--//col-->
							</div>
							<!--//row-->
						</div>
						<!--//app-card-header-->
						<div class="app-card-body px-4 w-100">

							<div class="item border-bottom py-3">
								<div class="row justify-content-between align-items-center">
									<div class="container">
										<div class="row">

											<div class="col-12 col-md-4"
												style="float: left; text-align: center;">

												<div
													style="margin: auto; width: 100%; height: 80%; background-color: #dcefe7;">
													<div>보유포인트</div>
													<div>0p</div>
												</div>
											</div>

											<div class="col-12 col-md-8" style="text-align: right;">
												<div style="text-align: center; width: 80%; margin: auto;">
													<table class="table" style="color: black;">
														<tr>
															<td>할인금액</td>
															<td>0</td>
														</tr>
														<tr>
															<td>할부 무이자</td>
															<td>0</td>
														</tr>
														<tr>
															<td>포인트 적립</td>
															<td>0</td>
														</tr>

													</table>
													<br> <br>
												</div>
											</div>
										</div>
										<!--//col-->
									</div>
								</div>
								<!--//container-->
							</div>
						</div>
						<!--//app-card-body-->
					</div>
					<!--//app-card-->
				</div>


			</div>
			<!--//row-->




			<br> <br>
			<div style="padding-bottom: 100px;"></div>

			<h1 class="app-page-title" style="text-align: center;">나의 소비
				확인하기</h1>
			<br> <br>


			<div class="row gy-4">
				<div class="col-12 col-md-12">
					<div
						class="card card-dark app-card app-card-account shadow-sm d-flex flex-column align-items-start">
						<div class="app-card-header p-3 border-bottom-0">
							<div class="row align-items-center gx-3">
								<div class="col-12 col-lg-6">소비 내역</div>
								<div class="col-12 col-lg-6">소비 패턴</div>
								<div class="col-auto">

									<h4 class="app-card-title">8월 카드 혜택</h4>
								</div>
								<!--//col-->
							</div>
							<!--//row-->
						</div>
						<!--//app-card-header-->
						<div class="app-card-body px-4 w-100">

							<div class="item border-bottom py-3">
								<div class="row justify-content-between align-items-center">
									<div class="container">
										<div class="row">

											<div class="col-12 col-md-12">
												<div class="tab-content" id="orders-table-tab-content">
													<div class="tab-pane fade show active" id="orders-all"
														role="tabpanel" aria-labelledby="orders-all-tab">

														<table id="data_list"
															class="table table-border app-table-hover mb-0 text-left">
															<thead class="table-light">
																<tr>
																	<th class="cell">거래일시</th>
																	<th class="cell">업종분류</th>
																	<th class="cell">거래처</th>
																	<th class="cell">거래금액</th>
																</tr>
															</thead>
															<tbody>
															</tbody>
														</table>

													</div>
												</div>
											</div>


											<div class="col-12 col-lg-6">
												<div class="app-card app-card-chart h-100 shadow-sm">
													<div class="app-card-header p-3 border-0">
														<h4 class="app-card-title">Bar Chart Demo</h4>
													</div>
													<!--//app-card-header-->
													<div class="app-card-body p-4">
														<div class="chart-container">
															<canvas id="chartBar"></canvas>
														</div>
													</div>
													<!--//app-card-body-->
												</div>
												<!--//app-card-->
											</div>
											<!--//col-->


											<!-- chart -->
											<div class="col-12 col-lg-6">
												<div class="app-card app-card-chart h-100 shadow-sm">
													<div class="app-card-header p-3 border-0">
														<h4 class="app-card-title">Doughnut Chart Demo</h4>
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
											<!--//col-->
											<!-- chart-end -->


										</div>
									</div>
								</div>
								<!--//col-->
							</div>
						</div>
						<!--//container-->
					</div>
				</div>
				<!--//app-card-body-->
			</div>
			<!--//app-card-->
		</div>


	</div>
	<!--//row-->


















	<div class="app-wrapper">

		<div class="app-content pt-3 p-md-3 p-lg-4">
			<div class="container-xl">

				<div class="row g-3 mb-4 align-items-center justify-content-between">
					<div class="col-auto">
						<h1 class="app-page-title mb-0">Orders</h1>
					</div>
					<div class="col-auto">
						<div class="page-utilities">
							<div
								class="row g-2 justify-content-start justify-content-md-end align-items-center">
								<div class="col-auto">
									<form class="table-search-form row gx-1 align-items-center">
										<div class="col-auto">
											<input type="text" id="search-orders" name="searchorders"
												class="form-control search-orders" placeholder="Search">
										</div>
										<div class="col-auto">
											<button type="submit" class="btn app-btn-secondary">Search</button>
										</div>
									</form>

								</div>
								<!--//col-->
								<div class="col-auto">

									<select class="form-select w-auto">
										<option selected value="option-1">All</option>
										<option value="option-2">This week</option>
										<option value="option-3">This month</option>
										<option value="option-4">Last 3 months</option>

									</select>
								</div>
								<div class="col-auto">
									<a class="btn app-btn-secondary" href="#"> <svg width="1em"
											height="1em" viewBox="0 0 16 16" class="bi bi-download me-1"
											fill="currentColor" xmlns="http://www.w3.org/2000/svg">
		  <path fill-rule="evenodd"
												d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5z" />
		  <path fill-rule="evenodd"
												d="M7.646 11.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V1.5a.5.5 0 0 0-1 0v8.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3z" />
		</svg> Download CSV
									</a>
								</div>
							</div>
							<!--//row-->
						</div>
						<!--//table-utilities-->
					</div>
					<!--//col-auto-->
				</div>
				<!--//row-->


				<nav id="orders-table-tab"
					class="orders-table-tab app-nav-tabs nav shadow-sm flex-column flex-sm-row mb-4">
					<a class="flex-sm-fill text-sm-center nav-link active"
						id="orders-all-tab" data-bs-toggle="tab" href="#orders-all"
						role="tab" aria-controls="orders-all" aria-selected="true">All</a>
					<a class="flex-sm-fill text-sm-center nav-link"
						id="orders-paid-tab" data-bs-toggle="tab" href="#orders-paid"
						role="tab" aria-controls="orders-paid" aria-selected="false">Paid</a>
					<a class="flex-sm-fill text-sm-center nav-link"
						id="orders-pending-tab" data-bs-toggle="tab"
						href="#orders-pending" role="tab" aria-controls="orders-pending"
						aria-selected="false">Pending</a> <a
						class="flex-sm-fill text-sm-center nav-link"
						id="orders-cancelled-tab" data-bs-toggle="tab"
						href="#orders-cancelled" role="tab"
						aria-controls="orders-cancelled" aria-selected="false">Cancelled</a>
				</nav>


				<div class="tab-content" id="orders-table-tab-content">
					<div class="tab-pane fade show active" id="orders-all"
						role="tabpanel" aria-labelledby="orders-all-tab">
						<div class="app-card app-card-orders-table shadow-sm mb-5">
							<div class="app-card-body">
								<div class="table-responsive">
									<table class="table app-table-hover mb-0 text-left">
										<thead>
											<tr>
												<th class="cell">Order</th>
												<th class="cell">Product</th>
												<th class="cell">Customer</th>
												<th class="cell">Date</th>
												<th class="cell">Status</th>
												<th class="cell">Total</th>
												<th class="cell"></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="cell">#15346</td>
												<td class="cell"><span class="truncate">Lorem
														ipsum dolor sit amet eget volutpat erat</span></td>
												<td class="cell">John Sanders</td>
												<td class="cell"><span>17 Oct</span><span class="note">2:16
														PM</span></td>
												<td class="cell"><span class="badge bg-success">Paid</span></td>
												<td class="cell">$259.35</td>
												<td class="cell"><a class="btn-sm app-btn-secondary"
													href="#">View</a></td>
											</tr>
											<tr>
												<td class="cell">#15345</td>
												<td class="cell"><span class="truncate">Consectetur
														adipiscing elit</span></td>
												<td class="cell">Dylan Ambrose</td>
												<td class="cell"><span class="cell-data">16 Oct</span><span
													class="note">03:16 AM</span></td>
												<td class="cell"><span class="badge bg-warning">Pending</span></td>
												<td class="cell">$96.20</td>
												<td class="cell"><a class="btn-sm app-btn-secondary"
													href="#">View</a></td>
											</tr>
											<tr>
												<td class="cell">#15344</td>
												<td class="cell"><span class="truncate">Pellentesque
														diam imperdiet</span></td>
												<td class="cell">Teresa Holland</td>
												<td class="cell"><span class="cell-data">16 Oct</span><span
													class="note">01:16 AM</span></td>
												<td class="cell"><span class="badge bg-success">Paid</span></td>
												<td class="cell">$123.00</td>
												<td class="cell"><a class="btn-sm app-btn-secondary"
													href="#">View</a></td>
											</tr>

											<tr>
												<td class="cell">#15343</td>
												<td class="cell"><span class="truncate">Vestibulum
														a accumsan lectus sed mollis ipsum</span></td>
												<td class="cell">Jayden Massey</td>
												<td class="cell"><span class="cell-data">15 Oct</span><span
													class="note">8:07 PM</span></td>
												<td class="cell"><span class="badge bg-success">Paid</span></td>
												<td class="cell">$199.00</td>
												<td class="cell"><a class="btn-sm app-btn-secondary"
													href="#">View</a></td>
											</tr>

											<tr>
												<td class="cell">#15342</td>
												<td class="cell"><span class="truncate">Justo
														feugiat neque</span></td>
												<td class="cell">Reina Brooks</td>
												<td class="cell"><span class="cell-data">12 Oct</span><span
													class="note">04:23 PM</span></td>
												<td class="cell"><span class="badge bg-danger">Cancelled</span></td>
												<td class="cell">$59.00</td>
												<td class="cell"><a class="btn-sm app-btn-secondary"
													href="#">View</a></td>
											</tr>

											<tr>
												<td class="cell">#15341</td>
												<td class="cell"><span class="truncate">Morbi
														vulputate lacinia neque et sollicitudin</span></td>
												<td class="cell">Raymond Atkins</td>
												<td class="cell"><span class="cell-data">11 Oct</span><span
													class="note">11:18 AM</span></td>
												<td class="cell"><span class="badge bg-success">Paid</span></td>
												<td class="cell">$678.26</td>
												<td class="cell"><a class="btn-sm app-btn-secondary"
													href="#">View</a></td>
											</tr>

										</tbody>
									</table>
								</div>
								<!--//table-responsive-->

							</div>
							<!--//app-card-body-->
						</div>
						<!--//app-card-->
						<nav class="app-pagination">
							<ul class="pagination justify-content-center">
								<li class="page-item disabled"><a class="page-link"
									href="#" tabindex="-1" aria-disabled="true">Previous</a></li>
								<li class="page-item active"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a>
								</li>
							</ul>
						</nav>
						<!--//app-pagination-->

					</div>
					<!--//tab-pane-->

					<div class="tab-pane fade" id="orders-paid" role="tabpanel"
						aria-labelledby="orders-paid-tab">
						<div class="app-card app-card-orders-table mb-5">
							<div class="app-card-body">
								<div class="table-responsive">

									<table class="table mb-0 text-left">
										<thead>
											<tr>
												<th class="cell">Order</th>
												<th class="cell">Product</th>
												<th class="cell">Customer</th>
												<th class="cell">Date</th>
												<th class="cell">Status</th>
												<th class="cell">Total</th>
												<th class="cell"></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="cell">#15346</td>
												<td class="cell"><span class="truncate">Lorem
														ipsum dolor sit amet eget volutpat erat</span></td>
												<td class="cell">John Sanders</td>
												<td class="cell"><span>17 Oct</span><span class="note">2:16
														PM</span></td>
												<td class="cell"><span class="badge bg-success">Paid</span></td>
												<td class="cell">$259.35</td>
												<td class="cell"><a class="btn-sm app-btn-secondary"
													href="#">View</a></td>
											</tr>

											<tr>
												<td class="cell">#15344</td>
												<td class="cell"><span class="truncate">Pellentesque
														diam imperdiet</span></td>
												<td class="cell">Teresa Holland</td>
												<td class="cell"><span class="cell-data">16 Oct</span><span
													class="note">01:16 AM</span></td>
												<td class="cell"><span class="badge bg-success">Paid</span></td>
												<td class="cell">$123.00</td>
												<td class="cell"><a class="btn-sm app-btn-secondary"
													href="#">View</a></td>
											</tr>

											<tr>
												<td class="cell">#15343</td>
												<td class="cell"><span class="truncate">Vestibulum
														a accumsan lectus sed mollis ipsum</span></td>
												<td class="cell">Jayden Massey</td>
												<td class="cell"><span class="cell-data">15 Oct</span><span
													class="note">8:07 PM</span></td>
												<td class="cell"><span class="badge bg-success">Paid</span></td>
												<td class="cell">$199.00</td>
												<td class="cell"><a class="btn-sm app-btn-secondary"
													href="#">View</a></td>
											</tr>


											<tr>
												<td class="cell">#15341</td>
												<td class="cell"><span class="truncate">Morbi
														vulputate lacinia neque et sollicitudin</span></td>
												<td class="cell">Raymond Atkins</td>
												<td class="cell"><span class="cell-data">11 Oct</span><span
													class="note">11:18 AM</span></td>
												<td class="cell"><span class="badge bg-success">Paid</span></td>
												<td class="cell">$678.26</td>
												<td class="cell"><a class="btn-sm app-btn-secondary"
													href="#">View</a></td>
											</tr>

										</tbody>
									</table>
								</div>
								<!--//table-responsive-->
							</div>
							<!--//app-card-body-->
						</div>
						<!--//app-card-->
					</div>
					<!--//tab-pane-->

					<div class="tab-pane fade" id="orders-pending" role="tabpanel"
						aria-labelledby="orders-pending-tab">
						<div class="app-card app-card-orders-table mb-5">
							<div class="app-card-body">
								<div class="table-responsive">
									<table class="table mb-0 text-left">
										<thead>
											<tr>
												<th class="cell">Order</th>
												<th class="cell">Product</th>
												<th class="cell">Customer</th>
												<th class="cell">Date</th>
												<th class="cell">Status</th>
												<th class="cell">Total</th>
												<th class="cell"></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="cell">#15345</td>
												<td class="cell"><span class="truncate">Consectetur
														adipiscing elit</span></td>
												<td class="cell">Dylan Ambrose</td>
												<td class="cell"><span class="cell-data">16 Oct</span><span
													class="note">03:16 AM</span></td>
												<td class="cell"><span class="badge bg-warning">Pending</span></td>
												<td class="cell">$96.20</td>
												<td class="cell"><a class="btn-sm app-btn-secondary"
													href="#">View</a></td>
											</tr>
										</tbody>
									</table>
								</div>
								<!--//table-responsive-->
							</div>
							<!--//app-card-body-->
						</div>
						<!--//app-card-->
					</div>
					<!--//tab-pane-->
					<div class="tab-pane fade" id="orders-cancelled" role="tabpanel"
						aria-labelledby="orders-cancelled-tab">
						<div class="app-card app-card-orders-table mb-5">
							<div class="app-card-body">
								<div class="table-responsive">
									<table class="table mb-0 text-left">
										<thead>
											<tr>
												<th class="cell">Order</th>
												<th class="cell">Product</th>
												<th class="cell">Customer</th>
												<th class="cell">Date</th>
												<th class="cell">Status</th>
												<th class="cell">Total</th>
												<th class="cell"></th>
											</tr>
										</thead>
										<tbody>

											<tr>
												<td class="cell">#15342</td>
												<td class="cell"><span class="truncate">Justo
														feugiat neque</span></td>
												<td class="cell">Reina Brooks</td>
												<td class="cell"><span class="cell-data">12 Oct</span><span
													class="note">04:23 PM</span></td>
												<td class="cell"><span class="badge bg-danger">Cancelled</span></td>
												<td class="cell">$59.00</td>
												<td class="cell"><a class="btn-sm app-btn-secondary"
													href="#">View</a></td>
											</tr>

										</tbody>
									</table>
								</div>
								<!--//table-responsive-->
							</div>
							<!--//app-card-body-->
						</div>
						<!--//app-card-->
					</div>
					<!--//tab-pane-->
				</div>
				<!--//tab-content-->



			</div>
			<!--//container-fluid-->
		</div>
		<!--//app-content-->

		<footer class="app-footer">
			<div class="container text-center py-3">
				<!--/* This template is free as long as you keep the footer attribution link. If you'd like to use the template without the attribution link, you can buy the commercial license via our website: themes.3rdwavemedia.com Thank you for your support. :) */-->
				<small class="copyright">Designed with <span class="sr-only">love</span><i
					class="fas fa-heart" style="color: #fb866a;"></i> by <a
					class="app-link" href="http://themes.3rdwavemedia.com"
					target="_blank">Xiaoying Riley</a> for developers
				</small>

			</div>
		</footer>
		<!--//app-footer-->

	</div>
	<!--//app-wrapper-->







	<div>이번달 이용금액</div>
	<div>지난달 보다 00원 지출이 00 했네요!</div>

	그래프로 6개월간 막대 그래프 소비 금액 보여주기 업종별 이용현황 이용구분현황 이용 내역 --> data tables



	<script>
		$("#data_list")
				.DataTable(
						{
							ajax : {
								url : '${pageContext.request.contextPath}/card/transaction.json/'
										+ '761696087260718',
								dataSrc : ''
							},
							"responsive" : true,
							columns : [ {
								targets : 0,
								data : "transDate"
							},

							{
								targets : 1,
								data : "consumeType"
							},

							{
								targets : 2,
								data : "consumeStore"
							}, {
								targets : 3,
								data : "transAmount"
							} ],
							"ordering" : false

						});
	</script>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>


	<!-- Javascript -->
	<script
		src="${pageContext.request.contextPath }/resources/assets_portal/plugins/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/assets_portal/plugins/bootstrap/js/bootstrap.min.js"></script>


	<!-- Page Specific JS -->
	<script
		src="${pageContext.request.contextPath }/resources/assets_portal/js/app.js"></script>


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
</body>
</html>