<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Portal - Bootstrap 5 Admin Dashboard Template For
	Developers</title>

<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="description"
	content="Portal - Bootstrap 5 Admin Dashboard Template For Developers">
<meta name="author" content="Xiaoying Riley at 3rd Wave Media">
<link rel="shortcut icon" href="favicon.ico">

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
<link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'
	rel='stylesheet'>
<style type="text/css">
* {
	font-family: 'Noto Sans KR', sans-serif !important;
}
</style>
<script src="https://kit.fontawesome.com/bd0128866b.js"
	crossorigin="anonymous"></script>
</head>



<header class="app-header fixed-top">
	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
</header>


<body class="app">

	<!-- Page Header Start -->
	<div class="container-fluid page-header py-5 mb-5">
		<div class="container py-5">
			<h1 class="display-3 text-white mb-3 animated slideInDown">????????????</h1>
			<nav aria-label="breadcrumb animated slideInDown">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
					<li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
					<li class="breadcrumb-item text-white active" aria-current="page">Consult</li>
				</ol>
			</nav>
		</div>
	</div>
	<!-- Page Header End -->

	<div class="container-fluid sidepanel-inner d-flex flex-column"
		style="width: 20%; float: left;">
		<div style="padding-left: 30px;">
			<h3 style="color: #018c8d">????????????</h3>
			<hr style="width: 200px; height: 5px; background-color: #018c8d">
			<div style="color: grey;">???????????? ??????</div>
			<hr style="width: 200px;">
			<h6 style="color: black">????????????</h6>
			<hr style="width: 200px;">
			<div style="color: grey">???????????? ??????</div>
			<hr style="width: 200px;">
			<div style="color: grey">????????? ?????? ?????? ??????</div>
			<hr style="width: 200px;">
		</div>
	</div>



	<div class="app-wrapper">
		<div class="container-xxl pt-5">
			<div class="text-center mx-auto mt-4 wow fadeInUp"
				data-wow-delay="0.1s" style="max-width: 600px;">
				<h6 style="color: #08a294;">
					Hana 1Qurator <span style="color: #ff328b">????????????</span>
				</h6>
				<h2 class="mb-5">MY????????????</h2>
			</div>
		</div>

		<div class="app-content pt-3 p-md-3 p-lg-4"
			style="margin: auto; padding-right: 30px;">
			<div class="container-xl">
				<div class="text-center mx-auto mt-2 mb-5 wow fadeInUp"
					data-wow-delay="0.1s">
					<div class="row m-0" style="text-align: right;">
						<div class="btn-group mt-4 mb-3" role="group"
							aria-label="Basic checkbox toggle button group">
							<input type="checkbox" class="btn-check" id="btncheck1" checked
								autocomplete="off" /> <label class="btn btn-outline-light"
								style="color: white; background-color: #08a294;" for="btncheck1">??????
								??????</label> <input type="checkbox" class="btn-check" id="btncheck2"
								autocomplete="off" /> <label class="btn btn-outline-light"
								style="color: #08a294; border-color: #08a294;" for="btncheck2">??????
								?????? ??????</label>
						</div>
						<!--//col-->
					</div>
				</div>

				<%-- ?????? ?????????	<form action="${pageContext.request.contextPath}/uploadfile"
					method="post" enctype="multipart/form-data">
					<input type="file" name="file" multiple="multiple"> <input
						type="submit" value="??????">
				</form> --%>
				<hr class="m-1" style="color: white;">

				<form id="aloneForm"
					action="${pageContext.request.contextPath}/consult/consultResult"
					method="post" style="color: black;">
					<div class="m-0 p-0" style="text-align: right;">
						<a
							href="${pageContext.request.contextPath }/consult/togetherConsultForm">
							???????????? ????????????<i class='bx bx-chevron-right-square'></i>
						</a>
					</div>

					<!-- ??? ?????? -->
					<div class="row g-4 settings-section mt-2 mb-3">
						<div class="col-12 col-md-4">
							<h4 style="color: #08a294">01.</h4>
							<h4>???????????? ????????? ??????????????????.</h4>
						</div>
						<div class="col-12 col-md-8">
							<div class="card app-card app-card-settings shadow-sm p-4"
								style="background-color: #f2fcf5;">
								<div class="app-card-body" style="font-size: 17px;">
									<div class="mb-3">
										???????????? <span style="color: #ff328b">${loginVO.birth_year }??????</span>,
										?????? ????????? <span style="color: #ff328b">${currentAge+1}???</span>
										?????????. <input type="hidden" name="currentAge"
											value="${currentAge+1}">
									</div>
									<div class="mb-3">
										???????????? ?????? ?????? ????????? <input class="border border-radius-5"
											style="width: 100px; text-align: right;" type="text"
											name="retireAge"> ??? ?????????.
									</div>
									<div class="mb-3">
										???????????? ??????????????? <input class="border border-radius-5"
											style="width: 100px; padding-left: 5px; text-align: right;"
											type="text" name="expectedAge" required> ??? ?????????.
									</div>
								</div>
								<!--//app-card-body-->
							</div>
							<!--//app-card-->
						</div>
					</div>

					<!--//??? ??? -->
					<hr class="my-4 mt-5 mb-5">

					<!-- ??? ?????? -->
					<div class="row g-4 settings-section mt-2 mb-3">
						<div class="col-12 col-md-6">
							<div style="padding-bottom: 20px;">
								<h4>
									<span style="color: #08a294">02.</span> ????????? ?????? ?????? ????????? ??????????????????
								</h4>
							</div>
						</div>

						<div class="col-12 col-md-6">
							<div style="text-align: right;">
								<button type="button" class="btn"
									style="color: white; background-color: #ff328b"
									data-toggle="modal" data-target=".bd-example-modal-lg">???????????????
									??????</button>
								<div class="modal fade bd-example-modal-lg" tabindex="-1"
									role="dialog" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												Hana1Qurator
												<button type="button" class="close" data-dismiss="modal">
													<span>&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<img style="overflow: hidden;" alt=""
													src="${pageContext.request.contextPath}/resources/img/retire.png">
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-primary"
													data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- ?????????  -->
								<button type="button" class="btn btn-primary" id="homeBtn1"
									data-bs-toggle="modal" data-bs-target="#largeModalLogin">????????????
									????????????</button>
							</div>

							<!-- Modal -->
							<div class="modal fade" id="largeModalLogin" tabindex="-1"
								aria-hidden="true">
								<div class="modal-dialog modal-lg" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<div style="color: grey;">Hana1Qurator</div>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<div class="text-center mb-2">
												<img alt="" style="width: 15%; height: 15%;"
													src="${pageContext.request.contextPath }/resources/img/homeTax.png">
											</div>
											<h1 class="text-center text-primary" style="">LOGIN</h1>

											<div class="mb-4 text-center">
												<h5>????????? ???????????? ??????????????? ??????????????????</h5>
											</div>

											<div class="mt-5 mb-2 text-center">
												<div class="mb-3 row m-auto">
													<label for="hometaxId" class="col-md-4 col-form-label">?????????</label>
													<div class="col-md-8">
														<input class="form-control" type="text" value=""
															style="width: 70%" name="hometaxId" />
													</div>
												</div>
												<div class="mb-3 row ">
													<label for="hometaxPassword"
														class="col-md-4 col-form-label">????????????</label>
													<div class="col-md-8">
														<input class="form-control" type="password"
															style="width: 70%" value="" name="hometaxPassword" />
													</div>
												</div>

												<button type="button" class="btn btn-primary m-2"
													id="homeBtn" data-bs-toggle="modal"
													data-bs-target="#largeModal">????????? ??????</button>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-primary"
												id="closeLargeModalLogin" data-bs-toggle="modal">Close</button>
										</div>
									</div>
								</div>
							</div>
							<!-- Modal -->

							<!-- Modal -->
							<div class="modal fade" id="largeModal" tabindex="-1"
								aria-hidden="true">
								<div class="modal-dialog modal-lg" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<div style="color: grey;">Hana1Qurator</div>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<div class="text-center mb-2">
												<img alt="" style="width: 15%; height: 15%;"
													src="${pageContext.request.contextPath }/resources/img/homeTax.png">
											</div>
											<div class="mb-4">
												<h5 class="text-center">${loginVO.name }??????
													????????? ?????? ??????, ?????? ??? ???????????? <span id="livingExpenceSpan"
														style="color: green;"></span>?????? ????????????
												</h5>
												<h5 class="text-center">
													?????? ??? ?????? ??? ???????????? <span id="expectedLivingExpenceSpan"
														style="color: blue;"></span>?????????.
												</h5>
											</div>
											<div class="table-responsive">
												<table class="table table-bordered table-hover w-75 m-auto">
													<thead class="table table-primary">
														<tr>
															<td class="col">??????</td>
															<td class="col">?????? ?????? ??????</td>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>????????????</td>
															<td id="creditCardTr"></td>
														</tr>
														<tr>
															<td>????????????</td>
															<td id="debitCardTr"></td>
														</tr>
														<tr>
															<td>???????????????</td>
															<td id="cashReceiptTr"></td>
														</tr>
													</tbody>
													<tfoot class="table table-light">
														<tr>
															<td>??????</td>
															<td id="livingExpenceTr"></td>
														</tr>
													</tfoot>

												</table>
											</div>
											<div class="pt-4 ps-2">
												<p class="text-left m-0">-?????? ??? ?????? ??? ???????????? ??? ???????????? 70%?????????.</p>
												<p class="text-left m-0">-??? ???????????? ????????? ????????????,????????????,??????????????? ??????
													??????????????? 12??? ?????? ????????? ???????????????.</p>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-outline-secondary"
												data-bs-dismiss="modal">?????? ????????????</button>
											<button type="button" class="btn btn-primary" id="homeTaxBtn"
												style="width: 20%;" data-bs-dismiss="modal">?????? ???
												????????????</button>
										</div>
									</div>
								</div>
							</div>
							<!-- Modal -->
						</div>


						<!-- ????????????-????????? ????????? -->
						<div class="col-12 col-md-4">
							<h5 style="color: #004c4c">
								<i class='bx bx-sm bx-landscape'></i>?????? ??? ?????????
							</h5>
							<div class="section-intro">
								<p style="color: grey;">- ???????????? ?????? ??? ??? ???????????? ??????????????????.</p>
							</div>
							<div class="section-intro">
								<p style="color: grey;">- ??? ???????????? 70%??? ?????? ??? ??? ????????????????????????.</p>
							</div>
							<div class="section-intro">
								<p style="color: grey;">
									- ???????????? ???????????? ????????? ???????????????! <br> &nbsp; ???????????????????????? ?????? ?????? ???????????? ?????????
									<br>&nbsp; ????????????.
								</p>
							</div>
						</div>
						<div class="col-12 col-md-8">
							<div class="card app-card app-card-settings shadow-sm p-4 mt-3"
								style="background-color: #f2fcf5;">
								<div class="app-card-body" style="font-size: 17px;">

									<div class="mt-3 mb-3">
										???????????? ?????? ??? ???????????? <input class="border border-radius-5"
											style="width: 100px; text-align: right;" type="text"
											name="livingExpence" id="livingExpence" value="" required>??????
										?????????.
									</div>
									<div class="mb-3">
										???????????? ?????? ??? ?????? ???????????? <input class="border border-radius-5"
											style="width: 100px; text-align: right;" type="text"
											id="expectedLivingExpence" value=""
											name="expectedLivingExpence" required>?????? ?????????.
									</div>
								</div>
								<!--//app-card-body-->
							</div>
							<!--//app-card-->
						</div>

						<!-- (??????)????????????-?????? ?????? ?????? -->
						<div style="padding-top: 50px;">
							<div class="col-auto" style="float: left;">
								<h5 style="color: #004c4c">
									<i class='bx bx-sm bx-party'></i>?????? ?????? ??????
								</h5>
							</div>
							<div class="col-auto" style="padding-left: 1000px;">
								<div class="form-check form-switch" style="text-align: left;">
									<input class="form-check-input" type="checkbox"
										id="marriageBtn" onchange="marriage()">
								</div>
							</div>
						</div>

						<div class="row" id="marriageForm"
							style="display: none; padding: 20px;">
							<div class="col-12 col-md-4"></div>
							<div class="col-12 col-md-8">
								<div class="card app-card app-card-settings shadow-sm p-4"
									style="background-color: #f2fcf5;">
									<div class="app-card-body" style="font-size: 17px;">
										<div class="mt-1 mb-3">
											?????? ?????? ????????? <input class="border border-radius-5"
												style="width: 100px; text-align: right;" type="text"
												value="" name="marriageYear" id="marriageYear"> ??? <input
												class="border border-radius-5"
												style="width: 100px; text-align: right;" type="text"
												value="" name="marriageMonth" id="marriageMonth">???
											?????????.
										</div>
										<div class="mb-3">
											?????? ????????? <input class="border border-radius-5 "
												style="width: 100px; text-align: right;" type="text"
												value="" name="marriageExpence"> ?????? ?????????.
										</div>
									</div>
									<!--//app-card-body-->
								</div>
								<!--//app-card-->
							</div>
						</div>


						<!-- (??????)????????????-?????? ?????? ?????? -->
						<div class="mt-5">
							<div class="col-auto" style="float: left;">
								<h5 style="color: #004c4c">
									<i class='bx bx-sm bx-building-house'></i>?????? ?????? ??????
								</h5>
							</div>
							<div class="col-auto" style="padding-left: 1000px;">
								<div class="form-check form-switch" style="text-align: right;">
									<input class="form-check-input" type="checkbox" id="houseBtn"
										onchange="house()">
								</div>
							</div>
						</div>


						<div class="row" id="houseForm"
							style="display: none; padding-bottom: 30px;">
							<div class="col-12 col-md-4"></div>
							<div class="col-12 col-md-8">
								<div class="card app-card app-card-settings shadow-sm p-4"
									style="background-color: #f2fcf5;">
									<div class="app-card-body" style="font-size: 17px;">
										<div class="mt-1 mb-3">
											?????? ?????? ?????? ????????? <input class="border"
												style="width: 100px; text-align: right;" type="text"
												value="" name="houseYear" id="houseYear">??? <input
												class="border" style="width: 100px; text-align: right;"
												type="text" value="" name="houseMonth" id="houseMonth">???
											?????????.
										</div>
										<div class="mb-3">
											?????? ????????? <input class="border"
												style="width: 100px; text-align: right;" type="text"
												value="" name="houseExpence">?????? ?????????.
										</div>
										<div class="mb-3">
											<label for="setting-input-2">?????? ???????????? ?????? ?????????</label> <select
												class="border border-radius-5" name="haveHouse">
												<option value="noHoues">???</option>
												<option value="yesHouse">???</option>
											</select> <label for="setting-input-2">?????????.</label>
										</div>
									</div>
									<!--//app-card-body-->

								</div>
								<!--//app-card-->
							</div>
						</div>


						<!-- (??????)????????????-?????? ?????? -->
						<div class="mt-5">
							<div class="col-auto" style="float: left;">
								<h5 style="color: #004c4c">
									<i class='bx bx-sm bxs-edit'></i>?????? ??????(????????????)
								</h5>
								<div class="section-intro">
									<p style="color: grey;">- ???????????? ?????? ?????? ????????? ??????????????????.</p>
								</div>
							</div>
							<div class="col-auto" style="padding-left: 1000px;">
								<div class="form-check form-switch" style="text-align: right;">
									<input class="form-check-input" type="checkbox" id="etcBtn"
										onchange="etc()">
								</div>
							</div>
						</div>


						<div class="row" id="etcForm"
							style="display: none; padding-bottom: 30px;">
							<div class="col-12 col-md-4"></div>
							<div class="col-12 col-md-8">
								<div class="card app-card app-card-settings shadow-sm p-4"
									style="background-color: #f2fcf5;">
									<div class="app-card-body" style="font-size: 17px;">
										<div class="mt-1 mb-3">
											?????? ????????? ????????? <input class="border"
												style="width: 100px; text-align: right;" type="text"
												value="" name="etcName"> ?????? ?????? ?????????.
										</div>
										<div class="mb-3">
											?????? ?????? ????????? <input class="border"
												style="width: 100px; text-align: right;" type="text"
												value="" name="etcYear" id="etcYear">??? <input
												class="border" style="width: 100px; text-align: right;"
												type="text" value="" name="etcMonth" id="etcMonth">???
											?????????.
										</div>
										<div class="mb-3">
											?????? ????????? <input class="border"
												style="width: 100px; text-align: right;" type="text"
												value="" name="etcExpence"> ?????? ?????????.
										</div>

									</div>
									<!--//app-card-body-->

								</div>
								<!--//app-card-->
							</div>
						</div>
						<!-- ???????????? ??? -->
					</div>
					<!-- //??? ??? -->

					<hr class="my-4 mt-5 mb-5">
					<!-- ??? ?????? -->
					<div class="row g-4 settings-section">
						<div class="col-12 col-md-12">
							<div style="float: left;">
								<h4>
									<span style="color: #08a294">03. </span> ???????????? ?????? ????????? ??????????????????
								</h4>
							</div>
						</div>


						<!--???????????? ??????-????????????-->
						<div class="col-lg-4 col-md-6">
							<div>
								<!-- Modal 1-->
								<div class="modal fade" id="modalAssert"
									aria-labelledby="modalToggleLabel" tabindex="-1"
									style="display: none" aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												Hana1Qurator
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
												<img style="width: 100%; margin: auto;" alt=""
													src="${pageContext.request.contextPath }/resources/img/openBanking.png">
												<h5 class="text-center" style="color: green;">?????? ?????? ??????
													?????? ????????????</h5>
												<h5 class="text-center">${loginVO.name}????????????????????????????????????
													??????????????????!</h5>
											</div>
											<div class="modal-footer">
												<button class="btn btn-primary" type="button"
													data-bs-target="#modalAssert2" data-bs-toggle="modal"
													id="modalAssertBtn1" data-bs-dismiss="modal">START</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal 2-->
								<div class="modal fade" id="modalAssert2" aria-hidden="true"
									aria-labelledby="modalToggleLabel2" tabindex="-1">
									<div
										class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												Hana1Qurator
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
												<h5 class="mb-4" style="text-align: right;">${loginVO.name }??????
													?????? ?????? ?????? ??? ?????? ?????? ????????? <span id="total" style="color: blue;"></span>????????????.
												</h5>

												<h6 class="mt-3 mb-2">*???????????? ?????? ?????? ???????????????.</h6>
												<div class="table-responsive">
													<table class="table table-bordered table-hover">
														<thead>
															<tr>
																<td>??????????????????</td>
																<td>??????</td>
															</tr>
														</thead>
														<tbody class="table table-light">
															<tr>
																<td>?????????????????????</td>
																<td id="hanaAccount"></td>
															</tr>
															<tr>
																<td>????????????</td>
																<td id="hanaStock"></td>
															</tr>
															<tr>
																<td>????????????</td>
																<td id="hanaLoan"></td>
															</tr>
														</tbody>
														<tfoot class="table table-primary">
															<tr>
																<td>??????</td>
																<td id="hanaTotal"></td>
															</tr>
														</tfoot>
													</table>
													<!-- ??????????????? -->
													<h6 class="mt-3 mb-2">*????????? ?????? ?????? ???????????????.</h6>
													<table class="table table-bordered table-hover">
														<thead>
															<tr>
																<td>???????????????</td>
																<td>??????</td>
															</tr>
														</thead>
														<tbody class="table table-light">

															<tr>
																<td>?????????????????????</td>
																<td id="otherAccount"></td>
															</tr>
															<tr>
																<td>????????????</td>
																<td id="otherStock"></td>
															</tr>
															<tr>
																<td>????????????</td>
																<td id="otherLoan"></td>
															</tr>
														</tbody>
														<tfoot class="table table-primary">
															<tr>
																<td>??????</td>
																<td id="otherTotal"></td>
															</tr>
														</tfoot>
													</table>

												</div>


											</div>
											<div class="modal-footer">
												<button type="button" id="modalAssertBtn2"
													class="btn btn-primary" data-bs-dismiss="modal">
													????????????</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--//???????????? ?????? ????????????-->

						<!-- ????????????-???????????? -->
						<div class="col-12 col-md-12">
							<div style="padding-bottom: 20px;">
								<div style="float: left;">
									<h5 style="color: #004c4c">
										<i class='bx bx-sm bxs-bank'></i>?????? ?????? ??????
									</h5>
								</div>
								<div style="text-align: right; padding-right: 20px;">
									<button type="button" class="btn btn-primary"
										id="closeMyAsserts" data-bs-toggle="modal"
										data-bs-target="#modalAssert">??? ?????? ?????? ????????????</button>
								</div>
							</div>

						</div>
						<div class="col-12 col-md-12">
							<div class="table-responsive">
								<table class="table text-center table-border">
									<thead style="color: #004c4c; background-color: #f2fcf5;">
										<tr>
											<th>????????????</th>
											<th>??????</th>
											<th>??????</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td style="width: 30%"><input type="text"
												class="border border-radius-5 rounded "
												style="width: 150px; text-align: right; color: green;"
												id="hanaAssertsInput" name="hanaAssertsInput" value="">???
												<input type="hidden" name="hanaAsserts" value=""></td>

											<td style="width: 30%"><input
												class="border border-radius-5 rounded" type="text"
												style="width: 150px; text-align: right; color: green;"
												name="otherAssertsInput" value="" id="otherAssertsInput"
												value="">??? <input type="hidden" name="otherAsserts"
												value=""></td>

											<td style="width: 30%"><input type="text"
												class="border border-radius-5 rounded"
												onkeyup="inputNumberFormat(this)"
												style="width: 150px; text-align: right; color: green;"
												value="0" name="etcAssertsInput">???</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- ???????????? ???  -->

						<!-- ????????????-???????????? ??? ?????? -->
						<div style="padding-bottom: 30px;"></div>
						<div class="col-12 col-md-12">
							<div style="padding-bottom: 20px;">
								<div style="float: left;">
									<h5 style="color: #004c4c">
										<i class='bx bx-sm  bx-coin-stack'></i>?????? ?????? ??? ??????
									</h5>
								</div>
								<div style="text-align: right; padding-right: 20px;">
									<button type="button" class="btn"
										style="color: white; background-color: #ff328b"
										data-bs-toggle="modal" data-bs-target="#incomeOutcomeModal"
										id="homeTaxIncomeBtn">???????????? ????????????</button>
								</div>
							</div>
						</div>

						<!-- Modal -->
						<div class="modal fade" id="incomeOutcomeModal" tabindex="-1"
							aria-hidden="true">
							<div class="modal-dialog modal-lg" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<div style="color: grey;">Hana1Qurator</div>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<div class="text-center mb-2">
											<img alt="" style="width: 15%; height: 15%;"
												src="${pageContext.request.contextPath }/resources/img/homeTax.png">
										</div>
										<div class="mb-4">
											<h5 class="text-center">${loginVO.name }??????
												????????? ?????? ??????, ??? ????????? ??? <span id="incomeSpan"
													style="color: green;"></span>?????? ??????,
											</h5>
											<h5 class="text-center">
												??? ?????? ????????? ??? <span id="outcomeSpan" style="color: blue;"></span>??????
												?????????.
											</h5>
										</div>
										<div class="table-responsive mb-3">
											<table class="table table-bordered table-hover w-75 m-auto">
												<thead class="table table-primary">
													<tr>
														<td class="col">??????</td>
														<td class="col">??????</td>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>??? ??????</td>
														<td id="incomeTr"></td>
													</tr>
													<tr>
														<td>??? ??????</td>
														<td id="outcomeTr"></td>
													</tr>
												</tbody>
												<tfoot class="table table-light">
													<tr>
														<td>????????????</td>
														<td id="ratioTr"></td>
													</tr>
												</tfoot>
											</table>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-outline-secondary"
											data-bs-dismiss="modal">?????? ????????????</button>
										<button type="button" class="btn btn-primary"
											id="homeTaxIncomeOutcomInsertBtn" style="width: 20%;"
											data-bs-dismiss="modal">?????? ??? ????????????</button>
									</div>
								</div>
							</div>
						</div>
						<!-- Modal -->

						<div class="col-12 col-md-12">
							<div class="table-responsive">
								<table class="table text-center table-border">
									<thead style="background-color: #f2fcf5; color: #004c4c;">
										<tr>
											<th scope="col">????????????</th>
											<th scope="col">????????????</th>
											<th scope="col">????????????</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td style="width: 40%"><input type="text" value=""
												style="text-align: right; color: green;"
												class="border border-radius-5 rounded" name="incomeInput"
												id="incomeInput">?????? <input type="hidden"
												name="annualIncomeInput" value=""></td>
											<td style="width: 40%"><input type="text" value=""
												style="text-align: right; color: green;"
												class="border border-radius-5 rounded" name="outcomeInput"
												id="outcomeInput">??????</td>
											<td style="width: 20%"><span id="incomeOutcomeRatio"></span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>


						<!-- ???????????? ??? ?????? ???  -->

						<!-- ????????????-???????????? -->
						<div style="padding-bottom: 30px;"></div>
						<div class="col-12 col-md-12">
							<div style="padding-bottom: 20px;">
								<div style="float: left;">
									<h5 style="color: #004c4c">
										<i class='bx bx-sm  bxs-leaf'></i>????????????
									</h5>
								</div>
							</div>

						</div>

						<div class="col-12 col-md-12">
							<div class="table-responsive">
								<table class="table table-bordered p-5"
									style="color: black; border-top-color: #2F576E">
									<tr>
										<td style="width: 20%; background-color: #f2fcf5;">
											<div class="m-3 pt-4">
												<h6>??????</h6>
											</div>
										</td>
										<td class="mt-1 mb-3  p-3" style="width: 70%"><label
											for="setting-input-2" class="form-label">??????????????? </label> <select
											class="border border-radius-5" name="pensionType">
												<option selected>???????????? ??????</option>
												<option value="????????????(??????)">????????????(??????)</option>
												<option value="????????????(??????)">????????????(??????)</option>
												<option value="???????????????">???????????????</option>
												<option value="????????????">????????????</option>
												<option value="????????????">????????????</option>
										</select> <label for="setting-input-2" class="form-label"> ??? <span>65???</span>??????,
												??? ????????????
										</label> <input type="text" class="border border-radius-5"
											style="width: 100px; background-color: #f2fcf5; text-align: right;"
											id="setting-input-2" name="pensionAmount">?????? ?????????.
											<div class="pt-3 pb-2">
												<button class="btn btn-primary">????????????????????? ?????? ??????</button>
											</div></td>
									</tr>
								</table>
							</div>
						</div>
					</div>

					<!-- ?????? -->
					<div style="text-align: center; padding-top: 30px; margin: auto;">
						<input type="submit" class="btn btn btn-primary" id="aloneBtn"
							style="width: 500px; margin: auto;" />
					</div>

					<input type="hidden" name="houseCheckedInput" value=""> <input
						type="hidden" name="marriageCheckedInput" value=""> <input
						type="hidden" name="etcCheckedInput" value=""> <input
						type="hidden" name="marriageMonthDiff" value=""> <input
						type="hidden" name="etcMonthDiff" value=""> <input
						type="hidden" name="houseMonthDiff" value="">

					<hr class="my-4 mt-5 mb-5">
				</form>
			</div>
			<!--//container-fluid-->
		</div>
		<!--//app-content-->
	</div>
	<!--//app-wrapper  -->
	<footer class="content-footer footer bg-footer-theme">
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp" />
	</footer>
	<%-- 	<script
		src="${ pageContext.request.contextPath }/resources/focus/vendor/global/global.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/focus/js/quixnav-init.js"></script> --%>

	<jsp:include page="/WEB-INF/jsp/include/script.jsp" />
	<%-- <script
		src="${ pageContext.request.contextPath }/resources/js/jspJs/consultForm.js"></script> --%>

	<script>

	 function inputNumberFormat(obj) {
	     obj.value = comma(uncomma(obj.value));
	 }

	 function comma(str) {
	     str = String(str);
	     return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
	 }

	 function uncomma(str) {
	     str = String(str);
	     return str.replace(/[^\d]+/g, '');
	 }
	
	function displayForm(select_btn) {
		if (select_btn === "B") {
			$('#aloneForm').hide();
			$('#marryForm').show();
		} else {
			$('#marryForm').hide();
			$('#aloneForm').show();
		}
	}

	 
	 $(document).ready(function() {
		 $("#assertPercent").on("propertychange change paste input", function() {
			    var assertPercent = $("#assertPercent").val();
			    console.log(assertPercent)
			   	var assertMoney = 10000*assertPercent/100
			    console.log(assertMoney)
			    $("#assertMoneyInput").val(assertMoney)
			   	$('input[name=assertMoneyInput]').attr('value',assertMoney);
			    
			    
			});
		 $("#outcomeInput").on("propertychange change paste input", function() {
			    var income = $("#incomeInout").val();
			    var outcome = $("#outcomeInout").val();
			    
			    income *= 1;
			    outcome *= 1;
			    
			    var ratio = Math.ceil(outcome/income*100);
			    
			    $('#incomeOutcomeRatio').text(ratio+'%');
			    
			});
		
		 $("#marriageMonth").on("propertychange change paste input", function() {
				//?????? ??????
				var now = new Date();
				var strtYear = now.getFullYear();
				var strtMonth = now.getMonth();
				
				var endYear = $("#marriageYear").val();
				var endMonth =  $("#marriageMonth").val();
				
				var month = (endYear - strtYear)* 12 + (endMonth - strtMonth)-1; 

				console.log(month);
				
				$('input[name=marriageMonthDiff]').attr('value',month);
				
			    
			});
		 
		 $("#houseMonth").on("propertychange change paste input", function() {
				//?????? ??????
				var now = new Date();
				var strtYear = now.getFullYear();
				var strtMonth = now.getMonth();
				
				var endYear = $("#houseYear").val();
				var endMonth =  $("#houseMonth").val();
				
				var month = (endYear - strtYear)* 12 + (endMonth - strtMonth)-1; 
				
				$('input[name=houseMonthDiff]').attr('value',month);
				
			    
			});
			
		 $("#etcMonth").on("propertychange change paste input", function() {
				//?????? ??????
				var now = new Date();
				var strtYear = now.getFullYear();
				var strtMonth = now.getMonth();
				
				var endYear = $("#etcYear").val();
				var endMonth =  $("#etcMonth").val();
				
				var month = (endYear - strtYear)* 12 + (endMonth - strtMonth)-1; 
				
				$('input[name=etcMonthDiff]').attr('value',month);

			});
			
		//????????? ?????? ??????
		$("#partnerBirthYear").on('change keydown paste input', function(){
			const today = new Date();
     		const nowYear = today.getFullYear();
     		const birthYear = $('#partnerBirthYear').val();
			const partnerAge = nowYear-birthYear+1;
			
			$('#partnerCurrentAge').text(partnerAge+'???');
		});
	 });
		

		
	
	function marriage(){
		var checked = $('#marriageBtn').is(':checked');
		var yes='yes';
		var no='no';
		
		if($('#marriageBtn').is(":checked")==true){
			$('#marriageForm').show();
			$('input[name=marriageCheckedInput]').attr('value',yes);
		} else {
			$('#marriageForm').hide();
			$('input[name=marriageCheckedInput]').attr('value',no);
		}
		
	};
	function house(){
		var checked = $('#houseBtn').is(':checked');
		var yes='yes';
		var no='no';
		
		if($('#houseBtn').is(":checked")==true){
			$('#houseForm').show();
			$('input[name=houseCheckedInput]').attr('value',yes);
		} else {
			$('#houseForm').hide();
			$('input[name=houseCheckedInput]').attr('value',no);
			
		}
		
	};
	
	function etc(){
		var yes='yes';
		var no='no';
		
		if($('#etcBtn').is(":checked")==true){
			$('#etcForm').show();
			$('input[name=etcCheckedInput]').attr('value',yes);
		} else {
			$('#etcForm').hide();
			$('input[name=etcCheckedInput]').attr('value',no);
			
		}
		
	};
	
	function partner(){
		var checked = $('#customSwitch1').is(':checked');
		console.log(checked);
		if($('#customSwitch1').is(":checked")==true){
			$('#partner').show();
		} else {
			$('#partner').hide();
			
		}
		
		return false;
		
	};
	
	function child(){
		var checked = $('#customSwitch2').is(':checked');
		console.log(checked);
		if($('#customSwitch1').is(":checked")==true){
			$('#child').show();
		} else {
			$('#child').hide();
			
		}
		
		return false;
		
	};
	

	$('#closeLargeModalLogin').click(function(){
		$('#largeModalLogin').hide();
		$('.modal-backdrop').remove();
		
	});
	
	$('#closeMyAsserts').click(function(){
		$('#modalAssert2').hide();
		$('.modal-backdrop').remove();
		
	});
	
	$('#homeBtn').click(function(){
			console.log('getAllReply()'); 
			
			var hometaxId = $('input[name=hometaxId]').val();
			var hometaxPassword = $('input[name=hometaxPassword]').val();
		
			$.ajax({
			url : '${pageContext.request.contextPath}/hometax/gethometaxinfo.json/'+hometaxId+'/'+hometaxPassword
			,type : 'get'
			,success : function(data){
				data.creditCard *= 1;
				data.debitCard *= 1;
				data.cashReceipt *= 1;
				//alert(typeof data.id)
				var creditCard = Math.ceil(data.creditCard/10000)
				var debitCard = Math.ceil(data.debitCard/10000)
				var cashReceipt = Math.ceil(data.cashReceipt/10000)
				
				var livingExpenceSum = Math.ceil((data.creditCard + data.debitCard + data.cashReceipt)/10000)
				var livingExpence = Math.ceil((data.creditCard + data.debitCard + data.cashReceipt)/12/10000)
				var expectedLivingExpence = Math.ceil(livingExpence*(0.7));
				console.log(livingExpenceSum)
				
				$('#creditCardTr').text(creditCard+'??????');
				$('#debitCardTr').text(debitCard+'??????');
				$('#cashReceiptTr').text(cashReceipt+'??????');
				$('#livingExpenceTr').text(livingExpenceSum+'??????');
				
				$('#livingExpenceSpan').text(livingExpence+'??????');
				$('#expectedLivingExpenceSpan').text(expectedLivingExpence+'??????');

				$('#homeTaxBtn').click(function() {
					$('.modal-backdrop').remove();
					$('#largeModal').hide();
					$('input[name=livingExpence]').attr('value',livingExpence);
					$('input[name=expectedLivingExpence]').attr('value',expectedLivingExpence);
				})

			}, error : function(){
				alert('??????')
				
			}
		})
	});

 	$('#homeTaxIncomeBtn').click(function(){
		$.ajax({
			url : '${pageContext.request.contextPath}/hometax/getInfo.json/${loginVO.telephone}'
			,type : 'get'
			,success : function(data){
				data.creditCard *= 1;
				data.debitCard *= 1;
				data.cashReceipt *= 1;
				data.income *= 1;
				
				var creditCard = Math.ceil(data.creditCard/10000)
				var debitCard = Math.ceil(data.debitCard/10000)
				var cashReceipt = Math.ceil(data.cashReceipt/10000)
				
				var livingExpenceSum = Math.ceil((data.creditCard + data.debitCard + data.cashReceipt)/10000)
				var outcome = Math.ceil((data.creditCard + data.debitCard + data.cashReceipt)/12/10000)
				
				var income = Math.ceil((data.income/10000)/12)
				var ratio = Math.ceil(outcome/income*100)
				
				var annualIncome = data.income/10000
				console.log(annualIncome)
				$('#incomeSpan').text(income);
				$('#outcomeSpan').text(outcome);
				$('#ratioSpan').text(ratio+'%');
				
				$('#incomeTr').text(income+'??????');
				$('#outcomeTr').text(outcome+'??????');
				$('#ratioTr').text(ratio+'%');
				
				$('#homeTaxIncomeOutcomInsertBtn').click(function() {
					$('input[name=incomeInput]').attr('value',income);
					$('input[name=annualIncomeInput]').attr('value',annualIncome);
					$('input[name=outcomeInput]').attr('value',outcome);
					$('#incomeOutcomeRatio').text(ratio+'%');
				})
			}, error : function(){
				alert('??????')
			}
		})
	});
 	
 	
 	$('#modalAssertBtn1').click(function(){
		
		$.ajax({
			url : '${pageContext.request.contextPath}/getMyAllAssetsBalance.json/${loginVO.id}'
			,type : 'get'
			,success : function(data){
				console.log(typeof data) 
				
				console.log(data)
				console.log(data.hanaStock)
				
				const hanaInputVal = data.hanaTotal.replace(/,/g, "")
				const otherInputVal = data.otherTotal.replace(/,/g, "")
				
				$('#hanaAccount').text(data.hanaAccount+'???');
				$('#hanaStock').text(data.hanaStock+'???');
				$('#hanaLoan').text(data.hanaLoan+'???');
				$('#hanaTotal').text(data.hanaTotal+'???');
				
				$('#otherAccount').text(data.otherAccount+'???');
				$('#otherStock').text(data.otherStock+'???');
				$('#otherLoan').text(data.otherLoan+'???');
				$('#otherTotal').text(data.otherTotal+'???');
				
				$('#total').text(data.total);
				
				$('#modalAssertBtn2').click(function(){
					$('input[name=hanaAssertsInput]').attr('value',data.hanaTotal);
					$('input[name=otherAssertsInput]').attr('value',data.otherTotal);
					$('input[name=hanaAsserts]').attr('value',hanaInputVal);
					$('input[name=otherAsserts]').attr('value',otherInputVal);
					
				})
			}, error : function(){
				alert('??????')
			}
		})
	});
	 
	$(document).ready(function() {
	    $(document).on('click','#myAssertsBtn',(function(){
			$.ajax({
				url : '${pageContext.request.contextPath}/hana1qurator/myAssets.json/${loginVO.id}'
				,type : 'get'
				,async    : false
				,success : function(data){
					??document.querySelector('.bd-example-modal-lg').style.display??='block';
					$('input[name=otherAsserts]').val(data);
				}, error : function(){
					alert('??????')
				}
			})
	    })
	    ) 
	});
</script>
</body>
</html>