<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<!-- FontAwesome JS-->
<script defer
	src="${pageContext.request.contextPath }/resources/assets_portal/plugins/fontawesome/js/all.min.js"></script>

<!-- App CSS -->
<link id="theme-style" rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets_portal/css/portal.css">

</head>

<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>
	
		<!-- Page Header Start -->
	<div class="container-fluid page-header py-5 mb-5">
		<div class="container py-5">
			<h1 class="display-3 text-white mb-3 animated slideInDown">PRODUCT</h1>
			<nav aria-label="breadcrumb animated slideInDown">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
					<li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
					<li class="breadcrumb-item text-white active" aria-current="page">Product</li>
				</ol>
			</nav>
		</div>
	</div>
	<!-- Page Header End -->

	
		<!-- Testimonial Start -->
			<div style="width: 95%; margin: auto;">
		<div class="container-xxl py-5">
			<div class="container">
				<div class="text-center mx-auto mb-5 wow fadeInUp"
					data-wow-delay="0.1s" style="max-width: 500px;">
					<h6 class="text-primary">BEST</h6>
					<h4>하나원큐레이터 추천 금융 상품</h4>
				</div>
				<div class="owl-carousel testimonial-carousel wow fadeInUp"
					data-wow-delay="0.1s">
					<div class="testimonial-item text-center">
						<div class="testimonial-img position-relative">
							<!-- <img class="img-fluid rounded-circle mx-auto mb-5"
								src="img/testimonial-1.jpg"> -->
								<img style="height: 150px;" class="img-fluid mx-auto mb-5" src="${pageContext.request.contextPath }/resources/img/card/card1.jpg">
							<!-- <div class="btn-square bg-primary rounded-circle">
								<i class="fa fa-quote-left text-white"></i>
							</div> -->
						</div>
						<div class="testimonial-text text-center rounded p-4">
							<span class="fst-italic">주유비,통신비 할인까지 한번에!</span>
							<h5 class="mb-1">하나드림카드</h5>
							<br>
							<p style="font-size: 7px;">*사진을 누르시면 상품 상세페이지로 이동합니다.</p>
						</div>
					</div>
					<div class="testimonial-item text-center">
						<div class="testimonial-img position-relative">
							<img class="img-fluid rounded-circle mx-auto mb-5"
								src="img/testimonial-2.jpg">
							<div class="btn-square bg-primary rounded-circle">
								<i class="fa fa-quote-left text-white"></i>
							</div>
						</div>
						<div class="testimonial-text text-center rounded p-4">
							<p>Clita clita tempor justo dolor ipsum amet kasd amet duo
								justo duo duo labore sed sed. Magna ut diam sit et amet stet eos
								sed clita erat magna elitr erat sit sit erat at rebum justo sea
								clita.</p>
							<h5 class="mb-1">Client Name</h5>
							<span class="fst-italic">Profession</span>
						</div>
					</div>
					<div class="testimonial-item text-center">
						<div class="testimonial-img position-relative">
							<img class="img-fluid rounded-circle mx-auto mb-5"
								src="img/testimonial-3.jpg">
							<div class="btn-square bg-primary rounded-circle">
								<i class="fa fa-quote-left text-white"></i>
							</div>
						</div>
						<div class="testimonial-text text-center rounded p-4">
							<p>Clita clita tempor justo dolor ipsum amet kasd amet duo
								justo duo duo labore sed sed. Magna ut diam sit et amet stet eos
								sed clita erat magna elitr erat sit sit erat at rebum justo sea
								clita.</p>
							<h5 class="mb-1">Client Name</h5>
							<span class="fst-italic">Profession</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	<!-- Testimonial End -->

	<div class="container-fluid sidepanel-inner d-flex flex-column"
		style="width: 20%; float: left;">
		<div style="color: green; padding-left: 30px;">
		<!-- 	<div style="padding-top: 25px;"></div> -->
			<h3>금융상품</h3>
			<hr
				style="width: 200px; height: 5px; color: green; background-color: green;">
			<div>추천항목</div>
			<hr style="width: 200px;">
			<div>추천예금</div>
			<hr style="width: 200px;">
		</div>
	</div>







	<div class="app-wrapper">


		<!-- 탭 -->
		<div class="app-content pt-3 p-md-3 p-lg-4">
			<div class="container-xl">


				<nav id="orders-table-tab"
					class="orders-table-tab app-nav-tabs nav shadow-sm flex-column flex-sm-row mb-4">
					<a class="flex-sm-fill text-sm-center nav-link active"
						id="orders-all-tab" data-bs-toggle="tab" href="#orders-all"
						role="tab" aria-controls="orders-all" aria-selected="true">예금</a>
					<a class="flex-sm-fill text-sm-center nav-link"
						id="orders-paid-tab" data-bs-toggle="tab" href="#orders-paid"
						role="tab" aria-controls="orders-paid" aria-selected="false">적금</a>
					<a class="flex-sm-fill text-sm-center nav-link"
						id="orders-pending-tab" data-bs-toggle="tab"
						href="#orders-pending" role="tab" aria-controls="orders-pending"
						aria-selected="false">카드</a> <a
						class="flex-sm-fill text-sm-center nav-link"
						id="orders-cancelled-tab" data-bs-toggle="tab"
						href="#orders-cancelled" role="tab"
						aria-controls="orders-cancelled" aria-selected="false">연금</a>
				</nav>


				<div class="tab-content" id="orders-table-tab-content">
					<div class="tab-pane fade show active" id="orders-all"
						role="tabpanel" aria-labelledby="orders-all-tab">
						<div class="app-card app-card-orders-table shadow-sm mb-5">
							<div class="app-card-body">
								<!-- 				<div class="row">
									<div class="col-12 col-lg-1">정기예금</div>
									<div class="col-12 col-lg-7">
										<div>하나의 정기예금</div>
										<div>자유롭게 자금관리가 가능</div>
									</div>
									<div class="col-12 col-lg-2" style="text-align: center;">
									</div>
									<div class="col-12 col-lg-2" style="text-align: center;">

										<div>최대 연</div>
										<div>세전</div>
										<div>(세전,1년)</div>

									</div>
									<hr>

								</div> -->
								<div class="table-responsive">
									<c:forEach items="${ termVO }" var="termDeposit"
											varStatus="loop">
									<table class="table app-table-hover mb-0 text-left">
										<tbody>
											<tr>
												<td class="cell" style="width: 14%; text-align: center;"><img alt="" src="${pageContext.request.contextPath }/resources/img/termDepositUI.png"></td>
												<td class="cell">
													<div><h6>${termDeposit.productName }</h6></div>
													<div>${termDeposit.repDesc }</div>
												</td>
										 		<td class="cell" style="text-align: right; padding-right: 50px;">
													<div><h6>최대 연</h6></div>
													<div>${termDeposit.interestRate}%</div>
													<div>(세전,1년)</div>
												</td>
												
											</tr>
										

										</tbody>
									</table>
									</c:forEach>
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
		</div>


	</div>


	<footer style="padding-top: 100px;">
	<%@ include file="/WEB-INF/jsp/include/footer.jsp"%>
	</footer>
	


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
		src="${pageContext.request.contextPath }/resources/assets_portal/plugins/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/assets_portal/plugins/bootstrap/js/bootstrap.min.js"></script>


	<!-- Page Specific JS -->
	<script
		src="${pageContext.request.contextPath }/resources/assets_portal/js/app.js"></script>

</body>
</html>