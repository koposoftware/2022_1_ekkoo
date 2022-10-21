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

<body class="app">
	<header class="app-header fixed-top">
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>

	<!-- Page Header Start -->
	<div class="container-fluid page-header py-5 mb-5">
		<div class="container py-5">
			<h1 class="display-3 text-white mb-3 animated slideInDown">재무설계</h1>
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
		style="width: 20%; float: left; position: sticky;">
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
		<div class="app-content pt-3 p-md-3 p-lg-4"
			style="margin: auto; padding-right: 30px;">
			<div class="container-xl">

				<div class="text-center mx-auto mt-4 mb-5 wow fadeInUp"
					data-wow-delay="0.1s" style="max-width: 600px;">
					<h6 style="color: #08a294;">
						Hana 1Qurator <span style="color: #ff328b">재무설계</span>
					</h6>
					<h2 class="mb-5">MY재무설계</h2>
				</div>
				<div class="text-center mx-auto mt-2 mb-5 wow fadeInUp"
					data-wow-delay="0.1s">
					<div class="row m-0" style="text-align: right;">
						<div class="btn-group mt-4 mb-3" role="group"
							aria-label="Basic checkbox toggle button group">
							<input type="checkbox" class="btn-check" id="btncheck1" checked
								autocomplete="off" /> <label class="btn btn-outline-light"
								style="color: white; background-color: #08a294;" for="btncheck1">재무
								설계</label> <input type="checkbox" class="btn-check" id="btncheck2"
								autocomplete="off" /> <label class="btn btn-outline-light"
								style="color: #08a294; border-color: #08a294;" for="btncheck2">재무
								설계 결과</label>
						</div>
						<!--//col-->
					</div>
				</div>

				<hr class="m-1" style="color: white;">
				<!-- 단 시작  -->
				<!-- <div class="row g-4 settings-section mt-2 mb-3">
					<div class="col-12 col-md-4">
						<h4><span class="text-primary">00.</span> 설계 유형을 선택하세요.</h4>
					</div>
					<div class="col-12 col-md-8 ">
						<div class="row wow fadeInUp" data-wow-delay="0.3s">
							<div class="col-12 text-center">
								<ul class="list-inline mb-2" id="portfolio-flters">

									<li class="btn btn-primary col-12 col-lg-3 m-3" data-filter=".first"
										id="aloneConsultBtn"
										style="color: white; background: #08a294;"
										onclick="displayForm('A'); return false;">단독설계</li>

									<li class="btn btn-primary col-12 col-lg-3 m-3" data-filter=".second"
										onclick="displayForm('B'); return false;"
										id="coupleConsultBtn"
										style="color: white; background-color: #08a294">부부설계</li>
								</ul>
								
								<div id="consultType"></div>
							</div>
						</div>
					</div>
				</div> -->
				<!--//단 끝  -->

				<form id="togetherForm"
					action="${pageContext.request.contextPath}/consult/consultResultTogether"
					method="post" style="color: black;">

					<!-- 
					<hr class="my-4 mt-5 mb-5"> -->
					<div class="m-0 p-0" style="text-align: right;">
						<a href="${pageContext.request.contextPath }/consult/consultForm">
							단독설계 하러가기<i class='bx bx-chevron-right-square'></i>
						</a>
					</div>

					<!-- 단 시작 -->
					<div class="row g-4 settings-section mt-2 mb-3">
						<div class="col-12 col-md-12">
							<h4>
								<span style="color: #08a294">01. </span>고객님의 정보를 입력해주세요.
							</h4>

						</div>
						<div class="col-12 col-md-6">
							<div class="card app-card app-card-settings shadow-sm p-4"
								style="background-color: #f2fcf5;">
								<div class="app-card-body" style="font-size: 17px;">
									<div class="mb-3">
										고객님은 <span style="color: #ff328b">${loginVO.birth_year }년생</span>,
										현재 나이는 <span style="color: #ff328b">${currentAge+1}세</span>
										입니다. <input type="hidden" name="currentAge"
											value="${currentAge+1}">
									</div>
									<div class="mb-3">
										고객님의 예상 은퇴 나이는 <input class="border border-radius-5"
											style="width: 100px; text-align: right;" type="text"
											name="retireAge"> 세 입니다.
									</div>
									<div class="mb-3">
										고객님의 기대수명은 <input class="border border-radius-5"
											style="width: 100px; padding-left: 5px; text-align: right;"
											type="text" name="expectedAge" required> 세 입니다.
									</div>
								</div>
								<!--//app-card-body-->
							</div>
							<!--//app-card-->
						</div>
						<!-- 배우자 정보 입력 -->
						<div class="col-12 col-md-6">
							<div class="card app-card app-card-settings shadow-sm p-4"
								style="background-color: #f2f3f2;">
								<div class="app-card-body" style="font-size: 17px;">
									<div class="mb-3">
										배우자는 <input class="border border-radius-5" type="text"
											style="width: 100px; text-align: right;"
											id="partnerBirthYear" name="partnerBirthYear">년생, 현재
										나이는 <span style="color: #ff328b" id="partnerCurrentAge"></span>
										입니다. <input type="hidden" name="partnerCurrentAge"
											value="${currentAge+1}">
									</div>
									<div class="mb-3">
										배우자의 예상 은퇴 나이는 <input class="border border-radius-5"
											style="width: 100px; text-align: right;" type="text"
											name="partnerRetireAge"> 세 입니다.
									</div>
									<div class="mb-3">
										배우자의 기대수명은 <input class="border border-radius-5"
											style="width: 100px; padding-left: 5px; text-align: right;"
											type="text" name="partnerExpectedAge" required> 세
										입니다.
									</div>
								</div>
								<!--//app-card-body-->
							</div>
							<!--//app-card-->
						</div>
					</div>

					<!--//단 끝 -->
					<hr class="my-4 mt-5 mb-5">

					<!-- 단 시작 -->
					<div class="row g-4 settings-section mt-2 mb-3">
						<div class="col-12 col-md-6">
							<div style="padding-bottom: 20px;">
								<h4>
									<span style="color: #08a294">02.</span> 목표별 필요 자금 정보를 입력해주세요
								</h4>
							</div>
						</div>

						<div class="col-12 col-md-6">
							<div style="text-align: right;">
								<button type="button" class="btn"
									style="color: white; background-color: #ff328b"
									data-toggle="modal" data-target=".bd-example-modal-lg">은퇴생활비
									통계</button>
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
								<!-- 홈택스  -->
								<button type="button" class="btn btn-primary" id="homeBtn1"
									data-bs-toggle="modal" data-bs-target="#largeModalLogin">홈택스랑
									연동하기</button>
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
												<h5>홈택스 아이디와 패스워드를 입력해주세요</h5>
											</div>

											<div class="mt-5 mb-2 text-center">
												<div class="mb-3 row m-auto">
													<label for="hometaxId" class="col-md-4 col-form-label">아이디</label>
													<div class="col-md-8">
														<input class="form-control" type="text" value=""
															style="width: 70%" name="hometaxId" />
													</div>
												</div>
												<div class="mb-3 row ">
													<label for="hometaxPassword"
														class="col-md-4 col-form-label">패스워드</label>
													<div class="col-md-8">
														<input class="form-control" type="password"
															style="width: 70%" value="" name="hometaxPassword" />
													</div>
												</div>

												<button type="button" class="btn btn-primary m-2"
													id="homeBtn" data-bs-toggle="modal"
													data-bs-target="#largeModal">로그인 하기</button>
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
												<h5 class="text-center">${loginVO.name }님의
													홈택스 연동 결과, 평균 월 소비금액은 <span id="livingExpenceSpan"
														style="color: green;"></span>으로 예상되며
												</h5>
												<h5 class="text-center">
													은퇴 후 추천 월 생활비는 <span id="expectedLivingExpenceSpan"
														style="color: blue;"></span>입니다.
												</h5>
											</div>
											<div class="table-responsive">
												<table class="table table-bordered table-hover w-75 m-auto">
													<thead class="table table-primary">
														<tr>
															<td class="col">구분</td>
															<td class="col">연간 소비 금액</td>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>신용카드</td>
															<td id="creditCardTr"></td>
														</tr>
														<tr>
															<td>직불카드</td>
															<td id="debitCardTr"></td>
														</tr>
														<tr>
															<td>현금영수증</td>
															<td id="cashReceiptTr"></td>
														</tr>
													</tbody>
													<tfoot class="table table-light">
														<tr>
															<td>총액</td>
															<td id="livingExpenceTr"></td>
														</tr>
													</tfoot>

												</table>
											</div>
											<div class="pt-4 ps-2">
												<p class="text-left m-0">-은퇴 후 추천 월 생활비는 현 생활비는 70%입니다.</p>
												<p class="text-left m-0">-현 소비금액은 홈택스 신용카드,직불카드,현금영수증 연간
													소비액에서 12를 나눈 값으로 입력됩니다.</p>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-outline-secondary"
												data-bs-dismiss="modal">직접 입력하기</button>
											<button type="button" class="btn btn-primary" id="homeTaxBtn"
												style="width: 20%;" data-bs-dismiss="modal">추천 값
												입력하기</button>
										</div>
									</div>
								</div>
							</div>
							<!-- Modal -->
						</div>


						<!-- 필요자금-은퇴후 생활비 -->
						<div class="col-12 col-md-4">
							<h5 style="color: #004c4c">
								<i class='bx bx-sm bx-landscape'></i>은퇴 후 생활비
							</h5>
							<div class="section-intro">
								<p style="color: #0e0d0d;font-size: 16px;">- 예상되는 은퇴 후 월 생활비를 입력해주세요.</p>
							</div>
							<div class="section-intro">
								<p style="color: #0e0d0d;font-size: 16px;">- 현 생활비의 70%가 은퇴 후 월 적정생활비입니다.</p>
							</div>
							<div class="section-intro">
								<p style="color: #0e0d0d; font-size: 16px;">
									- 홈택스와 연동하기 버튼을 눌러보세요! <br> &nbsp; 하나원큐레이터가 적정 은퇴 생활비를 추천해
									<br>&nbsp; 드립니다.
								</p>
							</div>
						</div>
						<div class="col-12 col-md-8">
							<div class="card app-card app-card-settings shadow-sm p-4 mt-3"
								style="background-color: #f2fcf5;">
								<div class="app-card-body" style="font-size: 17px;">

									<div class="mt-3 mb-3">
										고객님의 현재 월 소비금액은 <input class="border border-radius-5"
											style="width: 100px; text-align: right;" type="text"
											name="livingExpence" id="livingExpence" value="" required>만원
										입니다.
									</div>
									<div class="mb-3">
										고객님의 은퇴 후 예상 생활비는 <input class="border border-radius-5"
											style="width: 100px; text-align: right;" type="text"
											id="expectedLivingExpence" value=""
											name="expectedLivingExpence" required>만원 입니다.
									</div>
								</div>
								<!--//app-card-body-->
							</div>
							<!--//app-card-->
						</div>
						<div class="col-12 col-md-4"></div>
						<div class="col-12 col-md-8">
							<div class="card app-card app-card-settings shadow-sm p-4 mt-3"
								style="background-color: #f2f3f2;">
								<div class="app-card-body" style="font-size: 17px;">

									<div class="mt-3 mb-3">
										배우자의 현재 월 소비금액은 <input class="border border-radius-5"
											style="width: 100px; text-align: right;" type="text"
											name="livingExpenceParter" id="livingExpenceParter" value=""
											required>만원 입니다.
									</div>
									<div class="mb-3">
										배우자의 은퇴 후 예상 생활비는 <input class="border border-radius-5"
											style="width: 100px; text-align: right;" type="text"
											id="expectedLivingExpencePartner" value=""
											name="expectedLivingExpencePartner" required>만원 입니다.
									</div>
								</div>
								<!--//app-card-body-->
							</div>
							<!--//app-card-->
						</div>

						<!-- (선택)필요자금-결혼 자금 마련 -->
						<div style="padding-top: 50px;">
							<div class="col-auto" style="float: left;">
								<h5 style="color: #004c4c">
									<i class='bx bx-sm bx-party'></i>교육비 자금 마련
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
											결혼 예정 연도는 <input class="border border-radius-5"
												style="width: 100px; text-align: right;" type="text"
												value="" name="marriageYear" id="marriageYear"> 년 <input
												class="border border-radius-5"
												style="width: 100px; text-align: right;" type="text"
												value="" name="marriageMonth" id="marriageMonth">월
											입니다.
										</div>
										<div class="mb-3">
											필요 자금은 <input class="border border-radius-5 "
												style="width: 100px; text-align: right;" type="text"
												value="" name="marriageExpence"> 만원 입니다.
										</div>
									</div>
									<!--//app-card-body-->
								</div>
								<!--//app-card-->
							</div>
						</div>


						<!-- (선택)필요자금-주택 자금 마련 -->
						<div class="mt-5">
							<div class="col-auto" style="float: left;">
								<h5 style="color: #004c4c">
									<i class='bx bx-sm bx-building-house'></i>주택 자금 마련
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
											주택 자금 필요 시기는 <input class="border"
												style="width: 100px; text-align: right;" type="text"
												value="" name="houseYear" id="houseYear">년 <input
												class="border" style="width: 100px; text-align: right;"
												type="text" value="" name="houseMonth" id="houseMonth">월
											입니다.
										</div>
										<div class="mb-3">
											필요 자금은 <input class="border"
												style="width: 100px; text-align: right;" type="text"
												value="" name="houseExpence">만원 입니다.
										</div>

									</div>
									<!--//app-card-body-->

								</div>
								<!--//app-card-->
							</div>
						</div>


						<!-- (선택)필요자금-목돈 마련 -->
						<div class="mt-5">
							<div class="col-auto" style="float: left;">
								<h5 style="color: #004c4c">
									<i class='bx bx-sm bxs-edit'></i>목돈 마련(수기입력)
								</h5>
								<div class="section-intro">
									<p style="color: #0e0d0d;font-size: 16px;">- 목표하는 목돈 마련 계획을 입력해주세요.</p>
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
											목돈 마련의 목적은 <input class="border"
												style="width: 100px; text-align: right;" type="text"
												value="" name="etcName"> 자금 마련 입니다.
										</div>
										<div class="mb-3">
											자금 필요 시기는 <input class="border"
												style="width: 100px; text-align: right;" type="text"
												value="" name="etcYear" id="etcYear">년 <input
												class="border" style="width: 100px; text-align: right;"
												type="text" value="" name="etcMonth" id="etcMonth">월
											입니다.
										</div>
										<div class="mb-3">
											필요 자금은 <input class="border"
												style="width: 100px; text-align: right;" type="text"
												value="" name="etcExpence"> 만원 입니다.
										</div>

									</div>
									<!--//app-card-body-->

								</div>
								<!--//app-card-->
							</div>
						</div>
						<!-- 목돈마련 끝 -->
					</div>
					<!-- //단 끝 -->

					<hr class="my-4 mt-5 mb-5">
					<!-- 단 시작 -->
					<div class="row g-4 settings-section">

						<div class="col-12 col-md-12">
							<div>
								<div style="float: left;">
									<h4>
										<span style="color: #08a294">03. </span> 고객님의 자산 정보를 입력해주세요
									</h4>
								</div>
							</div>
						</div>


						<!--오픈뱅킹 연동-보유자산-->
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
												<h5 class="text-center" style="color: green;">나의 모든 금융
													자산 조회하기</h5>
												<h5 class="text-center">${loginVO.name}님의모든금융자산을원큐에
													조회해보세요!</h5>
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
												<h5 class="mb-4" style="text-align: right;">${loginVO.name }님의
													자산 조회 결과 총 보유 금융 자산은 <span id="total" style="color: blue;"></span>원입니다.
												</h5>

												<h6 class="mt-3 mb-2">*하나금융 자산 조회 결과입니다.</h6>
												<div class="table-responsive">
													<table class="table table-bordered table-hover">
														<thead>
															<tr>
																<td>하나금융자산</td>
																<td>금액</td>
															</tr>
														</thead>
														<tbody class="table table-light">

															<tr>
																<td>계좌현금성자산</td>
																<td id="hanaAccount"></td>
															</tr>
															<tr>
																<td>투자자산</td>
																<td id="hanaStock"></td>
															</tr>
															<tr>
																<td>대출금액</td>
																<td id="hanaLoan"></td>
															</tr>
														</tbody>
														<tfoot class="table table-primary">
															<tr>
																<td>총액</td>
																<td id="hanaTotal"></td>
															</tr>
														</tfoot>
													</table>
													<!-- 타금융자산 -->
													<h6 class="mt-3 mb-2">*타금융 자산 조회 결과입니다.</h6>
													<table class="table table-bordered table-hover">
														<thead>
															<tr>
																<td>타금융자산</td>
																<td>금액</td>
															</tr>
														</thead>
														<tbody class="table table-light">

															<tr>
																<td>계좌현금성자산</td>
																<td id="otherAccount"></td>
															</tr>
															<tr>
																<td>투자자산</td>
																<td id="otherStock"></td>
															</tr>
															<tr>
																<td>대출금액</td>
																<td id="otherLoan"></td>
															</tr>
														</tbody>
														<tfoot class="table table-primary">
															<tr>
																<td>총액</td>
																<td id="otherTotal"></td>
															</tr>
														</tfoot>
													</table>

												</div>

											</div>
											<div class="modal-footer">
												<button type="button" id="modalAssertBtn2"
													class="btn btn-primary" data-bs-dismiss="modal">
													입력하기</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--//오픈뱅킹 연동 보유자산-->

						<!-- 자산정보-금융자산 -->
						<div class="col-12 col-md-12">
							<div style="padding-bottom: 20px;">
								<div style="float: left;">
									<h5 style="color: #004c4c">
										<i class='bx bx-sm bxs-bank'></i>금융 자산 정보
									</h5>
								</div>
								<div style="text-align: right; padding-right: 20px;">
									<button type="button" class="btn btn-primary"
										id="closeMyAsserts" data-bs-toggle="modal"
										data-bs-target="#modalAssert">내 금융 자산 불러오기</button>
								</div>
							</div>

						</div>

						<div class="col-12 col-md-12">
							<div class="table-responsive">
								<table class="table table-bordered p-0 m-0 text-center"
									style="color: black; border-top-color: #2F576E">
									<tr style="background-color: #f2fcf5;">
										<th rowspan="4" style="width: 25%;"><span class="mt-3">본인</span></th>
										<th style="width: 25%">하나금융</th>
										<th style="width: 25%">타행</th>
										<th style="width: 25%">기타</th>
									</tr>
									<tr>
										<td><input type="text"
											class="border border-radius-5 rounded "
											style="width: 150px; text-align: right; color: green;"
											id="hanaAssertsInput" name="hanaAssertsInput" value="">원
											<input type="hidden" name="hanaAsserts" value=""></td>

										<td><input class="border border-radius-5 rounded"
											type="text"
											style="width: 150px; text-align: right; color: green;"
											name="otherAssertsInput" value="" id="otherAssertsInput"
											value="">원 <input type="hidden" name="otherAsserts"
											value=""></td>

										<td><input type="text"
											class="border border-radius-5 rounded"
											onkeyup="inputNumberFormat(this)"
											style="width: 150px; text-align: right; color: green;"
											value="0" name="etcAssertsInput">원</td>
									</tr>
								</table>
							</div>
						</div>

						<div class="col-12 col-md-12">
							<div class="table-responsive">
								<table class="table table-bordered p-0 m-0 text-center"
									style="color: black; border-top-color: #2F576E">
									<tr style="background-color: #dadada;">
										<th rowspan="2" style="width: 25%;"><span class="mt-3">배우자</span></th>
										<th style="width: 75%">보유 자산 총액</th>
									</tr>
									<tr>
										<td><input type="text"
											class="border border-radius-5 rounded "
											style="width: 150px; text-align: right; color: green;"
											id="partnerAssertsInput" name="partnerAssertsInput" value="">원
											<input type="hidden" name="partnerAsserts" value=""></td>
									</tr>
								</table>
							</div>
						</div>
						<!-- 금융자산 끝  -->

						<!-- 자산정보-종합소득 및 지출 -->
						<div style="padding-bottom: 30px;"></div>
						<div class="col-12 col-md-12">
							<div style="padding-bottom: 20px;">
								<div style="float: left;">
									<h5 style="color: #004c4c">
										<i class='bx bx-sm  bx-coin-stack'></i>종합 소득 및 지출
									</h5>
								</div>
								<div style="text-align: right; padding-right: 20px;">
									<button type="button" class="btn"
										style="color: white; background-color: #ff328b"
										data-bs-toggle="modal" data-bs-target="#incomeOutcomeModal"
										id="homeTaxIncomeBtn">홈택스랑 연동하기</button>
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
											<h5 class="text-center">${loginVO.name }님의
												홈택스 연동 결과, 월 소득은 약 <span id="incomeSpan"
													style="color: green;"></span>만원 이며,
											</h5>
											<h5 class="text-center">
												월 소비 금액은 약 <span id="outcomeSpan" style="color: blue;"></span>만원
												입니다.
											</h5>
										</div>
										<div class="table-responsive mb-3">
											<table class="table table-bordered table-hover w-75 m-auto">
												<thead class="table table-primary">
													<tr>
														<td class="col">구분</td>
														<td class="col">금액</td>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>월 소득</td>
														<td id="incomeTr"></td>
													</tr>
													<tr>
														<td>월 소비</td>
														<td id="outcomeTr"></td>
													</tr>
												</tbody>
												<tfoot class="table table-light">
													<tr>
														<td>소비비율</td>
														<td id="ratioTr"></td>
													</tr>
												</tfoot>

											</table>
										</div>

									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-outline-secondary"
											data-bs-dismiss="modal">직접 입력하기</button>
										<button type="button" class="btn btn-primary"
											id="homeTaxIncomeOutcomInsertBtn" style="width: 20%;"
											data-bs-dismiss="modal">결과 값 입력하기</button>
									</div>
								</div>
							</div>
						</div>
						<!-- Modal -->

						<div class="col-12 col-md-12">
							<div class="table-responsive">
								<table class="table table-bordered p-0 m-0 text-center"
									style="color: black; border-top-color: #2F576E">
									<tr style="background-color: #f2fcf5; color: #004c4c;">
										<th rowspan="4" style="width: 25%;"><span class="mt-3">본인</span></th>
										<th style="width: 25%;">소득금액</th>
										<th style="width: 25%;">지출금액</th>
										<th style="width: 25%;">지출비율</th>
									</tr>
									<tr>
										<td><input type="text" value=""
											style="text-align: right; color: green; width: 50%;"
											class="border border-radius-5 rounded" name="incomeInput"
											id="incomeInput">만원</td>
										<td><input type="text" value=""
											style="text-align: right; color: green; width: 50%;"
											class="border border-radius-5 rounded" name="outcomeInput"
											id="outcomeInput">만원</td>
										<td><span id="incomeOutcomeRatio"></span></td>
									</tr>
								</table>
							</div>
						</div>

						<div class="col-12 col-md-12">
							<div class="table-responsive">
								<table class="table table-bordered p-0 m-0 text-center"
									style="color: black; border-top-color: #2F576E">
									<tr style="background-color: #dadada;">
										<th rowspan="4" style="width: 25%;"><span class="mt-3">배우자</span></th>
										<th style="width: 25%;">소득금액</th>
										<th style="width: 25%;">지출금액</th>
										<th style="width: 25%;">지출비율</th>
									</tr>
									<tr>
										<td><input type="text" value=""
											style="text-align: right; color: green; width: 50%;"
											class="border border-radius-5 rounded"
											name="partnerIncomeInput" id="partnerIncomeInput">만원</td>
										<td><input type="text" value=""
											style="text-align: right; color: green; width: 50%;"
											class="border border-radius-5 rounded"
											name="partnerOutcomeInput" id="partnerOutcomeInput" onkeyup="inOutComeratio(this)">만원</td>
										<td><span id="partnerIncomeOutcomeRatio"></span></td>
									</tr>
								</table>
							</div>
						</div>


						<input type="hidden" name="annualIncomeInput">
						<!-- 종합소득 및 지출 끝  -->

						<!-- 자산정보-연금정보 -->
						<div style="padding-bottom: 30px;"></div>
						<div class="col-12 col-md-12">
							<div style="padding-bottom: 20px;">
								<div style="float: left;">
									<h5 style="color: #004c4c">
										<i class='bx bx-sm  bxs-leaf'></i>연금정보
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
												<h6>본인</h6>
											</div>
										</td>
										<td class="mt-1 mb-3  p-3" style="width: 70%"><label
											for="setting-input-2" class="form-label">예상하시는 </label> <select
											class="border border-radius-5" name="pensionType">
												<option selected>국민연금 종류</option>
												<option value="국민연금(직장)">국민연금(직장)</option>
												<option value="국민연금(지역)">국민연금(지역)</option>
												<option value="공무원연금">공무원연금</option>
												<option value="사학연금">사학연금</option>
												<option value="군인연금">군인연금</option>
										</select> <label for="setting-input-2" class="form-label"> 은 <span>65세</span>부터,
												월 수령액은
										</label> <input type="text" class="border border-radius-5"
											style="width: 100px; background-color: #f2fcf5; text-align: right;"
											id="setting-input-2" name="pensionAmount">만원 입니다.
											<div class="pt-3 pb-2">
												<button class="btn btn-primary">국민연금수령액 예시 정보</button>
											</div></td>
									</tr>
								</table>
							</div>
						</div>

						<div class="col-12 col-md-12">
							<div class="table-responsive">
								<table class="table table-bordered p-5"
									style="color: black; border-top-color: #2F576E">
									<tr>
										<td style="width: 20%; background-color: #dadada;">
											<div class="m-3 pt-4">
												<h6>배우자</h6>
											</div>
										</td>
										<td class="mt-1 mb-3  p-3" style="width: 70%"><label
											for="setting-input-2" class="form-label">예상하시는 </label> <select
											class="border border-radius-5" name="partnerPensionType">
												<option selected>국민연금 종류</option>
												<option value="국민연금(직장)">국민연금(직장)</option>
												<option value="국민연금(지역)">국민연금(지역)</option>
												<option value="공무원연금">공무원연금</option>
												<option value="사학연금">사학연금</option>
												<option value="군인연금">군인연금</option>
										</select> <label for="setting-input-2" class="form-label"> 은 <span>65세</span>부터,
												월 수령액은
										</label> <input type="text" class="border border-radius-5"
											style="width: 100px; background-color: #ededed; text-align: right;"
											id="setting-input-2" name="partnerPensionAmount">만원
											입니다.
											<div class="pt-3 pb-2">
												<button class="btn btn-primary">국민연금수령액 예시 정보</button>
											</div></td>
									</tr>
								</table>
							</div>
						</div>
					</div>

					<input type="hidden" name="houseCheckedInput" value=""> <input
						type="hidden" name="marriageCheckedInput" value=""> <input
						type="hidden" name="etcCheckedInput" value=""> <input
						type="hidden" name="marriageMonthDiff" value=""> <input
						type="hidden" name="etcMonthDiff" value=""> <input
						type="hidden" name="houseMonthDiff" value="">


					<!-- 제출 -->
					<div style="text-align: center; padding-top: 30px; margin: auto;">
						<input type="submit" class="btn btn btn-primary" id="aloneBtn"
							style="width: 500px; margin: auto;" />
					</div>
					<hr class="my-4 mt-5 mb-5">
				</form>
			</div>

			<!--//container-fluid-->
		</div>
		<!--//app-content-->
	</div>
	<!--//app-wrapper  -->

	<jsp:include page="/WEB-INF/jsp/include/script.jsp" />
	<%-- <script
		src="${ pageContext.request.contextPath }/resources/js/jspJs/consultForm.js"></script> --%>

	<script>

	 function inOutComeratio(obj) {
		 var income = $('#partnerIncomeInput').val()*1;
		 var outcome = $('#partnerOutcomeInput').val()*1;
	     var ratio = outcome/income * 100;
	     $('#partnerIncomeOutcomeRatio').text(ratio+'%');
	 }
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
				//현재 날찌
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
				//현재 날찌
				var now = new Date();
				var strtYear = now.getFullYear();
				var strtMonth = now.getMonth();
				
				var endYear = $("#houseYear").val();
				var endMonth =  $("#houseMonth").val();
				
				var month = (endYear - strtYear)* 12 + (endMonth - strtMonth)-1; 
				
				$('input[name=houseMonthDiff]').attr('value',month);
				
			    
			});
			
		 $("#etcMonth").on("propertychange change paste input", function() {
				//현재 날찌
				var now = new Date();
				var strtYear = now.getFullYear();
				var strtMonth = now.getMonth();
				
				var endYear = $("#etcYear").val();
				var endMonth =  $("#etcMonth").val();
				
				var month = (endYear - strtYear)* 12 + (endMonth - strtMonth)-1; 
				
				$('input[name=etcMonthDiff]').attr('value',month);

			});
			
		//배우자 나이 계산
		$("#partnerBirthYear").on('change keydown paste input', function(){
			const today = new Date();
     		const nowYear = today.getFullYear();
     		const birthYear = $('#partnerBirthYear').val();
			const partnerAge = nowYear-birthYear+1;
			
			$('#partnerCurrentAge').text(partnerAge+'세');
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
				
				$('#creditCardTr').text(creditCard+'만원');
				$('#debitCardTr').text(debitCard+'만원');
				$('#cashReceiptTr').text(cashReceipt+'만원');
				$('#livingExpenceTr').text(livingExpenceSum+'만원');
				
				$('#livingExpenceSpan').text(livingExpence+'만원');
				$('#expectedLivingExpenceSpan').text(expectedLivingExpence+'만원');

				$('#homeTaxBtn').click(function() {
					$('.modal-backdrop').remove();
					$('#largeModal').hide();
					$('input[name=livingExpence]').attr('value',livingExpence);
					$('input[name=expectedLivingExpence]').attr('value',expectedLivingExpence);
				})

			}, error : function(){
				alert('실패')
				
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
				
				$('#incomeTr').text(income+'만원');
				$('#outcomeTr').text(outcome+'만원');
				$('#ratioTr').text(ratio+'%');
				
				$('#homeTaxIncomeOutcomInsertBtn').click(function() {
					$('input[name=incomeInput]').attr('value',income);
					$('input[name=annualIncomeInput]').attr('value',annualIncome);
					$('input[name=outcomeInput]').attr('value',outcome);
					$('#incomeOutcomeRatio').text(ratio+'%');
				})
			}, error : function(){
				alert('실패')
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
				
				$('#hanaAccount').text(data.hanaAccount+'원');
				$('#hanaStock').text(data.hanaStock+'원');
				$('#hanaLoan').text(data.hanaLoan+'원');
				$('#hanaTotal').text(data.hanaTotal+'원');
				
				$('#otherAccount').text(data.otherAccount+'원');
				$('#otherStock').text(data.otherStock+'원');
				$('#otherLoan').text(data.otherLoan+'원');
				$('#otherTotal').text(data.otherTotal+'원');
				
				$('#total').text(data.total);
				
				$('#modalAssertBtn2').click(function(){
					$('.modal-backdrop').remove();
					$('input[name=hanaAssertsInput]').attr('value',data.hanaTotal);
					$('input[name=otherAssertsInput]').attr('value',data.otherTotal);
					$('input[name=hanaAsserts]').attr('value',hanaInputVal);
					$('input[name=otherAsserts]').attr('value',otherInputVal);
					
				})
			}, error : function(){
				alert('실패')
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
					 document.querySelector('.bd-example-modal-lg').style.display ='block';
					$('input[name=otherAsserts]').val(data);
				}, error : function(){
					alert('실패')
				}
			})
	    })
	    ) 
	});
</script>
</body>
</html>

