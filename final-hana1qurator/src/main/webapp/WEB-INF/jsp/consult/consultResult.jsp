<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link id="theme-style" rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/assets_portal/css/portal.css">
<link
	href="${ pageContext.request.contextPath }/resources/img/favicon.ico"
	rel="icon">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">
<link
	href="${ pageContext.request.contextPath }/resources/lib/animate/animate.min.css"
	rel="stylesheet">
<link
	href="${ pageContext.request.contextPath }/resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="${ pageContext.request.contextPath }/resources/lib/lightbox/css/lightbox.min.css"
	rel="stylesheet">
<link
	href="${ pageContext.request.contextPath }/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${ pageContext.request.contextPath }/resources/css/style.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'
	rel='stylesheet'>
<script src="https://unpkg.com/boxicons@2.1.2/dist/boxicons.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>


<script type="text/javascript">
	var income = '<c:out value="${retireVO.income}"/>'
	var outcome = '<c:out value="${retireVO.outcome}"/>'
</script>
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
		style="width: 20%; float: left;">
		<div style="padding-left: 30px;">
			<h3 style="color: #018c8d">재무설계</h3>
			<hr style="width: 200px; height: 5px; background-color: #018c8d">
			<div style="color: grey;">재무설계 안내</div>
			<hr style="width: 200px;">
			<div>
				<a href="${pageContext.request.contextPath }/retire/retireForm.do"
					style="color: grey;">재무설계</a>
			</div>
			<hr style="width: 200px;">
			<h6 style="color: black">재무설계 결과</h6>
			<hr style="width: 200px;">
			<div style="color: grey">맞춤형 금융 상품 추천</div>
			<hr style="width: 200px;">
		</div>
	</div>

	<div class="app-wrapper">
		<div class="text-center mx-auto mt-4 wow fadeInUp"
			data-wow-delay="0.1s" style="max-width: 600px;">
			<h6 style="color: #08a294;">
				Hana 1Qurator <span style="color: #ff328b">My재무</span>
			</h6>
			<h2>MY재무설계</h2>
		</div>
		<form
			action="${pageContext.request.contextPath }/consult/consultProduct2"
			method="post" id="productForm">
			<div class="app-content pt-3 p-md-3 p-lg-4">
				<div class="container-xl">
					<!-- intro  -->
					<div class="row g-4">
						<div class="col-12 col-lg-12">
							<div class="row m-0" style="text-align: right;">
								<div class="btn-group mt-5 mb-3" role="group"
									style="color: '#d3ebeb'"
									aria-label="Basic checkbox toggle button group">
									<input type="checkbox" class="btn-check" id="btncheck1"
										autocomplete="off" /> <label class="btn btn-outline-light"
										style="color: #08a294; border-color: #08a294;" for="btncheck1">재무
										설계</label> <input type="checkbox" class="btn-check" id="btncheck2"
										checked autocomplete="off" /> <label
										class="btn btn-outline-light"
										style="color: white; background-color: #08a294;"
										for="btncheck2">재무 설계 결과</label>
								</div>
								<div class="col-12 mt-5">
									<h3 style="text-align: center;">
										<span style="color: #018c8d;">${loginVO.name }님</span>의 재무설계
										필요자금 및 준비자금 분석 결과입니다.
									</h3>
								</div>
								<!--//col-->
							</div>
							<!--//row-->
						</div>
						<!--//col-->
						<!-- 재무계획 연혁표 끝  -->

						<!-- 설계 키워드  -->
						<!-- 총 필요자금  -->
						<div class="col-12 col-lg-12 mt-5 pt-5">
							<div class="app-card app-card-chart h-100 shadow-sm" style="background-color: #dcebec;">
								<div class="app-card-body p-3 p-lg-4">
									<div style="text-align: center; padding-bottom: 10px;">
										<h4 class="pt-4">${loginVO.name }님이
											목표한 재무 설계에 필요한 총 자금은 <span style="color: #018c8d;"> <fmt:formatNumber
													value="${retireVO.resultRequiredAmount + 
										marriageVO.marriageExpence + houseVO.houseExpence  + etcVO.etcExpence}" />
												원
											</span>이며,
										</h4>
										<h4 class="pb-1">
											부족 자산은 <span style="color: #ff328b;"><fmt:formatNumber
													value="${retireVO.resultRequiredAmount + 
										etcVO.etcExpence + marriageVO.marriageExpence + houseVO.houseExpence - retireVO.allAsserts + retireVO.loanMoney}" />원</span>
											입니다.
										</h4>
										<h6 class="text-secondary">＊ 분석결과는 고객님께서 입력하신 정보를 바탕으로 하였으며, 실제와 차이가 있을 수 있습니다.</h6>
									</div>
								</div>
								<!--//app-card-body-->
							</div>
							<!--//app-card-->
						</div>
						<!--//col 총필요자금 끝-->

						<div class="col-12 col-lg-12 mt-4 pt-5">
							<div class="table-responsive">
								<table class="table table-bordered table-hover"
									style="text-align: center; font-size: 18px;">
									<thead class="table"
										style="background-color: #b2d8d8; color: black">
										<tr>
											<th>구분</th>
											<th>필요자금</th>
										</tr>
									</thead>
									<tbody style="color: black;">
										<tr>
											<td>노후자금</td>
											<td><fmt:formatNumber
													value="${retireVO.resultRequiredAmount  }" />원</td>
										</tr>
										<c:if test="${marriageVO.marriageExpence ne 0 }">
											<tr>
												<td>결혼자금</td>
												<td><fmt:formatNumber
														value="${ marriageVO.marriageExpence }" />원</td>
											</tr>
										</c:if>
										<c:if test="${houseVO.houseExpence ne 0 }">
											<tr>
												<td>주택자금</td>
												<td><fmt:formatNumber value="${houseVO.houseExpence }" />원</td>
											</tr>
										</c:if>
										<c:if test="${etcVO.etcExpence ne 0 }">
											<tr>
												<td>${etcVO.etcName }자금</td>
												<td><fmt:formatNumber value="${etcVO.etcExpence }" />원</td>
											</tr>
										</c:if>
									</tbody>
								</table>
							</div>
						</div>

						<!-- 재무계획  -->
						<div class="col-12 col-lg-12 mt-5 pt-5">
							<div class="app-card app-card-chart h-100 shadow-sm">
								<div class="app-card-header p-3 bg-light">
									<div class="row justify-content-between align-items-center">
										<div style="text-align: left;">
											<h4>
												<i class='bx bxs-checkbox'></i> 보유 자산 및 여유 자금 분석
											</h4>
										</div>
										<!--//col-->
									</div>
									<!--//row-->
								</div>
								<!--//app-card-header-->
								<div class="app-card-body p-3 p-lg-4 text-center bg-light"
									style="color: grey;">

									<!-- 자산정보  -->
									<div class="row g-4 mb-4 ms-1 me-1">
										<div class="col-12 col-lg-6">
											<div
												class="app-card app-card-chart border border-primary h-100 shadow-sm">
												<div class="app-card-header border-primary p-3">
													<div class="row justify-content-between align-items-center">
														<div style="text-align: center;">
															<h4 class="app-card-title">자산정보</h4>
														</div>
														<!--//col-->
													</div>
													<!--//row-->
												</div>
												<!--//app-card-header-->
												<div class="app-card-body p-3 p-lg-4">
													<!-- chart  -->
													<div class="chart-container mt-5 mb-5"
														style="width: 100%; margin: auto;">
														<div id="assertsChart1"></div>
													</div>
													<!--table  -->
													<div class="table-responsive">
														<table
															class="table table-bordered table-hover table-sm text-center">
															<thead class="table"
																style="background-color: #018c8d; color: white">
																<tr>
																	<th>구분</th>
																	<th>금액</th>
																</tr>
															</thead>
															<tbody style="color: black">
																<tr>
																	<td>계좌·현금성 자산</td>
																	<td><fmt:formatNumber value="${accountMoney}" />원</td>
																</tr>
																<tr>
																	<td>투자 자산</td>
																	<td><fmt:formatNumber value="${stockMoney}" />원</td>
																</tr>
																<tr>
																	<td>부채</td>
																	<td><fmt:formatNumber
																			value="${retireVO.loanMoney }" />원</td>
																</tr>
																<tr style="background-color: #b2d8d8;">
																	<td>순자산</td>
																	<td><fmt:formatNumber
																			value="${accountMoney+stockMoney-retireVO.loanMoney}" />원</td>
																</tr>
															</tbody>
														</table>
													</div>
													<!-- //table -->
												</div>
												<!--//app-card-body-->
											</div>
											<!--//app-card-->
										</div>
										<!--//col-->

										<!-- 월 여유자금  -->
										<div class="col-12 col-lg-6">
											<div
												class="app-card app-card-chart border border-primary h-100 shadow-sm">
												<div class="app-card-header border-primary p-3">
													<div class="row justify-content-between align-items-center">
														<div style="text-align: center;">
															<h4 class="app-card-title">월 여유자금</h4>
														</div>
														<!--//col-->
													</div>
													<!--//row-->
												</div>
												<!--//app-card-header-->
												<div class="app-card-body p-3 p-lg-4">
													<!-- chart  -->
													<div class="chart-container"
														style="width: 90%; margin: auto; margin-bottom: 30px;">
														<%-- <canvas id="incomeOutcomeChart" width="100px"
															height="100px"></canvas> --%>
														<div id="incomeOutcomeChart1"></div>
													</div>
													<div class="table-responsive">
														<table
															class="table table-bordered table-sm text-center table-hover">
															<thead class="table"
																style="background-color: #018c8d; color: white;">
																<tr>
																	<th>${loginVO.name }</th>
																	<th>금액</th>
																</tr>
															</thead>
															<tbody style="color: black;">
																<tr>
																	<td>수입</td>
																	<td>${retireVO.income }만원</td>
																</tr>
																<tr>
																	<td>지출</td>
																	<td>${retireVO.outcome }만원</td>
																</tr>
																<tr style="background-color: #b2d8d8;">
																	<td>여유자금</td>
																	<td>${retireVO.income-retireVO.outcome }만원</td>
																</tr>
															</tbody>
														</table>

													</div>
													<div class="table-responsive">
														<table
															class="table table-bordered table-sm text-center table-hover">
															<thead class="table"
																style="background-color: #ff328b; color: white;">
																<tr>
																	<th>배우자</th>
																	<th>금액</th>
																</tr>
															</thead>
															<tbody style="color: black;">
																<tr>
																	<td>수입</td>
																	<td>${partnerIncome }만원</td>
																</tr>
																<tr>
																	<td>지출</td>
																	<td>${partnerOutcome }만원</td>
																</tr>
																<tr style="background-color: #f4cadc;">
																	<td>여유자금</td>
																	<td>${partnerIncome-partnerOutcome }만원</td>
																</tr>
															</tbody>
														</table>

													</div>
												</div>
												<!--//app-card-body-->
											</div>
											<!--//app-card-->
										</div>
										<!--//col 총필요자금 끝-->
									</div>

								</div>
								<!--//app-card-body-->
							</div>
							<!--//app-card-->
						</div>
						<!--//col-->
						<!-- 재무계획 연혁표 끝  -->

						<!-- 재무목표분석  -->
						<div class="col-12 col-lg-12 mt-5 pt-5">
							<div class="app-card app-card-chart h-100 shadow-sm">
								<div class="app-card-header p-3 bg-primary">
									<div class="row justify-content-between align-items-center">
										<div class="col-12">
											<h4 class="text-white" style="text-align: left;">
												<i class='bx bxs-checkbox'></i> 재무 목표별 분석
											</h4>
										</div>
										<!--//col-->
									</div>
									<!--//row-->
								</div>

								<!-- 은퇴설계 card -->
								<div class="app-card-header p-3">
									<div class="row justify-content-between align-items-center">
										<div class="col-12 col-lg-11">
											<h6>은퇴 설계 분석</h6>
										</div>
										<div class="col-12 col-lg-1">
											<div class="form-check form-switch"
												style="text-align: right;">
												<input class="form-check-input" type="checkbox"
													id="retireResultBtn" onchange="retireResult()">
											</div>
										</div>
										<!--//col-->
									</div>
									<!--//row-->
								</div>
								<!--//app-card-header-->
								<div class="app-card-body p-3 p-lg-4" id="retireResult"
									style="display: none;">
									<!-- first result -->
									<div class="app-card bg-transparent h-100 shadow-sm"
										style="border: solid 1px; border-color: #66b2b2">
										<div class="mb-5 mt-5 text-center">
											<h5>${loginVO.name }님의
												은퇴 예상 나이는 <span style="color: #018c8d;">${retireVO.retireAge}년</span>이며,
												고객님의 은퇴자금 준비 기간은 <span style="color: #018c8d;">${retireVO.preparePeriod}년</span>입니다.
											</h5>
											<h5>${loginVO.name }님의
												기대 수명은 <span style="color: #018c8d;">${retireVO.expectedAge}세</span>,
												은퇴 준비 부족 자금은 <span style="color: #ff328b;"><fmt:formatNumber
														value="${retireVO.resultRequiredAmount-retireVO.resultPreparedAmount-retireVO.resultSavingAmount
											-retireVO.resultPensionAmount}" />만원</span>입니다.
											</h5>
										</div>
									</div>
									<!-- first result end  -->
									<div class="table-responsive text-nowrap pt-5">
										<table class="table table-hover table-bordered text-center"
											style="font-size: 18px; color: black;">
											<thead class="table"
												style="background-color: #b2d8d8; color: black">
												<tr>
													<th>구분</th>
													<th>준비 자금 금액</th>
													<th>필요 자금</th>
													<th>부족 자금</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>은퇴 준비 자금</td>
													<td><fmt:formatNumber
															value="${retireVO.allAsserts-retireVO.loanMoney }" />원</td>
													<td rowspan="2" style="vertical-align: middle;"><fmt:formatNumber
															value="${retireVO.resultRequiredAmount }" />원</td>
													<td rowspan="2" style="vertical-align: middle;"><fmt:formatNumber
															value="${retireVO.resultRequiredAmount-(retireVO.resultPreparedAmount
								+retireVO.resultPensionAmount +retireVO.resultSavingAmount)}" />원</td>
												</tr>
												<tr>
													<td>공적 연금</td>
													<td><fmt:formatNumber
															value="${retireVO.resultPensionAmount }" />원</td>
												</tr>
												<tr class="table-warning">
													<th>합계</th>
													<td><fmt:formatNumber
															value="${retireVO.allAsserts-retireVO.loanMoney+retireVO.resultPensionAmount+retireVO.resultSavingAmount}" />원</td>
													<td style="color: #ff328b;"><fmt:formatNumber
															value="${retireVO.resultRequiredAmount }" />원</td>
													<td style="color: #018c8d;"><fmt:formatNumber
															value="${retireVO.resultRequiredAmount-(retireVO.resultPreparedAmount
								+retireVO.resultPensionAmount +retireVO.resultSavingAmount)}" />원</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<!--//app-card-body-->
								<!-- //은퇴설계 카드 -->
								<c:if test="${marriageVO.marriageExpence ne 0 }">

									<!-- 결혼설계 card -->
									<div class="app-card-header p-3">
										<div class="row justify-content-between align-items-center">
											<div class="col-12 col-lg-11">
												<h6>결혼 설계 분석</h6>
											</div>
											<div class="col-12 col-sm-1">
												<div class="form-check form-switch"
													style="text-align: right;">
													<input class="form-check-input" type="checkbox"
														id="marriageResultBtn" onchange="marriageResult()">
												</div>
											</div>
											<!--//col-->

										</div>
										<!--//row-->
									</div>
									<!--//app-card-header-->
									<div class="app-card-body p-3 p-lg-4" id="marriageResult"
										style="display: none;">
										<div class="app-card bg-transparent h-100 shadow-sm"
											style="border: solid 1px; border-color: #66b2b2">
											<div class="mb-5 mt-5 text-center">
												<h5>${loginVO.name }님의
													예상 결혼 자금 필요 시기는 <span style="color: #018c8d">${marriageVO.marriageYear }년</span>이며,
													자금 준비 기간은 <span style="color: #018c8d">${marriageMonthDiff }개월</span>입니다.
												</h5>
												<h5>
													필요 자금은 <span style="color: #ff328b;"><fmt:formatNumber
															value="${marriageVO.marriageExpence }" />원</span>입니다.
												</h5>
											</div>

										</div>
										<div class="pt-5 mt-3  text-center">
											<c:choose>
												<c:when
													test="${ retireVO.allAsserts/marriageVO.marriageExpence*100 >= 100 }">
													<h5>
														<i class='bx bx-flashing bx-md bx-party'></i> 현재 보유 자산으로 <span
															style="color: #018c8d">"결혼"</span> 목표 달성 <span
															style="color: blue;">가능</span>
													</h5>
												</c:when>
												<c:otherwise>
													<h5>
														<i class='bx bx-message-alt-x  bx-flashing bx-md'></i> 현재
														보유 자산으로 <span style="color: #018c8d">"결혼"</span> 목표 달성 <span
															style="color: #ff328b;">불가능</span>
													</h5>
													<h5 class="pb-3" style="color: grey">
														<span style="color: #ff328b"><fmt:formatNumber
																value="${marriageVO.marriageExpence - retireVO.allAsserts}" />원</span>이
														<span style="color: #ff328b">부족</span>합니다.
													</h5>
												</c:otherwise>
											</c:choose>
										</div>

										<div class="demo-vertical-spacing mt-3">
											<div class="progress" style="height: 30px; font-size: 18px;">
												<c:choose>
													<c:when
														test="${ retireVO.allAsserts/marriageVO.marriageExpence*100 >= 100 }">
														<div
															class="progress-bar progress-bar-striped progress-bar-animated"
															role="progressbar"
															style="background-color:#006666;  width: ${retireVO.allAsserts/marriageVO.marriageExpence*100}%;"
															aria-valuenow="100" aria-valuemin="0"
															aria-valuemax="${retireVO.allAsserts/marriageVO.marriageExpence*100}">
															<fmt:formatNumber value="1" type="percent" />
														</div>
													</c:when>
													<c:otherwise>
														<div
															class="progress-bar progress-bar-striped progress-bar-animated"
															role="progressbar"
															style="background-color:#ff328b; width: ${retireVO.allAsserts/marriageVO.marriageExpence*100}%"
															aria-valuenow="100" aria-valuemin="0"
															aria-valuemax="${retireVO.allAsserts/marriageVO.marriageExpence*100}">
															<fmt:formatNumber
																value="${ retireVO.allAsserts/marriageVO.marriageExpence}"
																type="percent" />
														</div>
													</c:otherwise>
												</c:choose>

											</div>
										</div>
										<div class="mt-3" style="text-align: right;">
											<h6>
												현재 보유 자산 대비 목표 달성률은
												<c:choose>
													<c:when
														test="${ retireVO.allAsserts/marriageVO.marriageExpence *100 >=100}">
														<span style="color: #018c8d">100%</span>입니다.
											</c:when>
													<c:otherwise>
														<span style="color: #018c8d"><fmt:formatNumber
																value="${ retireVO.allAsserts/marriageVO.marriageExpence}"
																type="percent" /></span>입니다.
											</c:otherwise>
												</c:choose>
											</h6>
										</div>

										<div class="table-responsive text-nowrap pt-5">
											<table class="table table-hover table-bordered text-center"
												style="font-size: 18px; color: black;">
												<thead class="table"
													style="background-color: #b2d8d8; color: black">
													<tr>
														<th>구분</th>
														<th>금액</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>필요 자금</td>
														<td><fmt:formatNumber
																value="${marriageVO.marriageExpence}" />원</td>
													</tr>
													<tr>
														<td>준비 자금</td>
														<td><fmt:formatNumber value="${retireVO.allAsserts}" />원
														</td>
													</tr>
													<tr class="table-warning" style="color: #ff328b;">
														<th>부족 자금</th>
														<td><c:choose>
																<c:when
																	test="${marriageVO.marriageExpence-retireVO.allAsserts >0}">
																	<fmt:formatNumber
																		value="${marriageVO.marriageExpence-retireVO.allAsserts}" />원
															</c:when>
																<c:otherwise>
																0원
															</c:otherwise>
															</c:choose></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<!--//app-card-body-->
								</c:if>
								<!-- //결혼설계 카드 -->

								<c:if test="${houseVO.houseExpence ne 0 }">
									<!-- 주택설계 card -->
									<div class="app-card-header p-3">
										<div class="row justify-content-between align-items-center">
											<div class="col-12 col-lg-11">
												<h6>주택 설계 분석</h6>
											</div>
											<div class="col-12 col-lg-1">
												<div class="form-check form-switch"
													style="text-align: right;">
													<input class="form-check-input" type="checkbox"
														id="houseResultBtn" onchange="houseResult()">
												</div>
											</div>
											<!--//col-->
										</div>
										<!--//row-->
									</div>
									<!--//app-card-header-->
									<div class="app-card-body p-3 p-lg-4" id="houseResult"
										style="display: none;">
										<div class="app-card bg-transparenth-100 shadow-sm"
											style="border: solid 1px; border-color: #66b2b2">
											<div class="mb-5 mt-5 text-center">
												<h5>${loginVO.name }님의
													예상 주택 자금 필요 시기는 <span style="color: #018c8d">${houseVO.houseYear }년</span>이며,
													자금 준비 기간은 <span style="color: #018c8d">${houseMonthDiff}개월</span>입니다.
												</h5>
												<h5>
													필요 자금은 <span style="color: #ff328b;"><fmt:formatNumber
															value="${houseVO.houseExpence }" />원</span>입니다.
												</h5>
											</div>

										</div>
										<div class="pt-5 mt-3 text-center">

											<c:choose>
												<c:when
													test="${ retireVO.allAsserts/houseVO.houseExpence*100 >= 100 }">
													<h5>
														<i class='bx bx-flashing bx-md bx-party'></i> 현재 보유 자산으로 <span
															style="color: #018c8d">"주택"</span> 목표 달성 <span
															style="color: blue;">가능</span>
													</h5>
												</c:when>
												<c:otherwise>
													<h5>
														<i class='bx bx-message-alt-x  bx-flashing bx-md'></i> 현재
														보유 자산으로 <span style="color: #018c8d">"주택"</span> 목표 달성 <span
															style="color: #ff328b;">불가능</span>
													</h5>
													<h5 class="pb-3" style="color: grey">
														<span style="color: #ff328b"><fmt:formatNumber
																value="${houseVO.houseExpence - retireVO.allAsserts}" />원</span>이
														<span style="color: #ff328b">부족</span>합니다.
													</h5>
												</c:otherwise>
											</c:choose>
										</div>

										<div class="demo-vertical-spacing mt-3">
											<div class="progress" style="height: 30px; font-size: 18px;">
												<c:choose>
													<c:when
														test="${ retireVO.allAsserts/houseVO.houseExpence*100 >= 100 }">
														<div
															class="progress-bar progress-bar-striped progress-bar-animated"
															role="progressbar"
															style="background-color:#006666; width: ${ retireVO.allAsserts/houseVO.houseExpence*100 }%"
															aria-valuenow="100" aria-valuemin="0"
															aria-valuemax="${ retireVO.allAsserts/houseVO.houseExpence*100 }">
															<fmt:formatNumber value="1" type="percent" />
														</div>
													</c:when>
													<c:otherwise>
														<div
															class="progress-bar progress-bar-striped progress-bar-animated"
															role="progressbar"
															style="background-color:#ff328b; width: ${ retireVO.allAsserts/houseVO.houseExpence*100 }%"
															aria-valuenow="100" aria-valuemin="0"
															aria-valuemax="${ retireVO.allAsserts/houseVO.houseExpence*100 }">
															<fmt:formatNumber
																value="${ retireVO.allAsserts/houseVO.houseExpence}"
																type="percent" />
														</div>
													</c:otherwise>
												</c:choose>
											</div>
										</div>
										<div class="mt-3" style="text-align: right;">
											<h6>
												현재 보유 자산 대비 목표 달성률은
												<c:choose>
													<c:when
														test="${ retireVO.allAsserts/houseVO.houseExpence *100 >=100}">
														<span style="color: #018c8d">100%</span>입니다.
											</c:when>
													<c:otherwise>
														<span style="color: #018c8d"><fmt:formatNumber
																value="${ retireVO.allAsserts/houseVO.houseExpence}"
																type="percent" /></span>입니다.
											</c:otherwise>
												</c:choose>
											</h6>
										</div>

										<div class="table-responsive text-nowrap pt-5">
											<table class="table table-hover table-bordered text-center"
												style="font-size: 18px; color: black;">
												<thead class="table"
													style="background-color: #b2d8d8; color: black">
													<tr>
														<th>구분</th>
														<th>금액</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>필요 자금</td>
														<td><fmt:formatNumber value="${houseVO.houseExpence}" />원</td>
													</tr>
													<tr>
														<td>준비 자금</td>
														<td><fmt:formatNumber value="${retireVO.allAsserts}" />원
														</td>
													</tr>
													<tr class="table-warning" style="color: #ff328b;">
														<th>부족 자금</th>
														<td><c:choose>
																<c:when
																	test="${houseVO.houseExpence-retireVO.allAsserts >0}">
																	<fmt:formatNumber
																		value="${houseVO.houseExpence-retireVO.allAsserts}" />원
															</c:when>
																<c:otherwise>
																0원
															</c:otherwise>
															</c:choose></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<!--//app-card-body-->
								</c:if>
								<!-- //주택설계 카드 -->

								<!-- 기타 자금 설계 카드 -->
								<c:if test="${etcVO.etcExpence ne 0 }">
									<div class="app-card-header p-3">
										<div class="row justify-content-between align-items-center">
											<div class="col-12 col-lg-11">
												<h6>${etcVO.etcName }준비자금설계분석</h6>
											</div>
											<div class="col-12 col-sm-1">
												<div class="form-check form-switch"
													style="text-align: right;">
													<input class="form-check-input" type="checkbox"
														id="etcResultBtn" onchange="etcResult()">
												</div>
											</div>
											<!--//col-->
										</div>
										<!--//row-->
									</div>
									<!--//app-card-header-->
									<div class="app-card-body p-3 p-lg-4" id="etcResult"
										style="display: none;">
										<div class="app-card bg-transparent h-100 shadow-sm"
											style="border: solid 1px; border-color: #66b2b2">
											<div class="mb-5 mt-5 text-center">
												<h5>${loginVO.name }님의
													예상 자금 필요 시기는 <span style="color: #018c8d">${etcVO.etcYear }년</span>이며,
													자금 준비 기간은 <span style="color: #018c8d">${etcMonthDiff}개월</span>입니다.
												</h5>
												<h5>
													필요 자금은 <span style="color: #ff328b;"><fmt:formatNumber
															value="${etcVO.etcExpence }" />원</span>입니다.
												</h5>
											</div>

										</div>
										<div class="pt-5 mt-3  text-center">
											<c:choose>
												<c:when
													test="${ retireVO.allAsserts/etcVO.etcExpence*100 >= 100 }">
													<h5>
														<i class='bx bx-flashing bx-md bx-party'></i> 현재 보유 자산으로 <span
															style="color: #018c8d">"${etcVO.etcName } 자금 마련"</span>
														목표 달성 <span style="color: blue;">가능</span>
													</h5>
												</c:when>
												<c:otherwise>
													<h5>
														<i class='bx bx-message-alt-x  bx-flashing bx-md'></i> 현재
														보유 자산으로 <span style="color: #018c8d">"${etcVO.etcName }
															자금 마련"</span> 목표 달성 <span style="color: #ff328b;">불가능</span>
													</h5>
													<h5 class="pb-3" style="color: grey">
														<span style="color: #ff328b"><fmt:formatNumber
																value="${etcVO.etcExpence - retireVO.allAsserts}" />원</span>이
														<span style="color: #ff328b">부족</span>합니다.
													</h5>
												</c:otherwise>
											</c:choose>
										</div>

										<div class="demo-vertical-spacing mt-3">
											<div class="progress" style="height: 30px; font-size: 18px;">
												<c:choose>
													<c:when
														test="${ retireVO.allAsserts/etcVO.etcExpence*100 >= 100 }">
														<div
															class="progress-bar progress-bar-striped progress-bar-animated"
															role="progressbar"
															style="background-color:#006666; width: ${retireVO.allAsserts/etcVO.etcExpence*100}%"
															aria-valuenow="100" aria-valuemin="0"
															aria-valuemax="${retireVO.allAsserts/etcVO.etcExpence*100}">
															<fmt:formatNumber value="1" type="percent" />
														</div>
													</c:when>
													<c:otherwise>
														<div
															class="progress-bar progress-bar-striped progress-bar-animated"
															role="progressbar"
															style="background-color:#ff328b; width: ${retireVO.allAsserts/etcVO.etcExpence*100}%"
															aria-valuenow="100" aria-valuemin="0"
															aria-valuemax="${retireVO.allAsserts/etcVO.etcExpence*100}">
															<fmt:formatNumber
																value="${ retireVO.allAsserts/etcVO.etcExpence}"
																type="percent" />
														</div>
													</c:otherwise>
												</c:choose>
											</div>
										</div>

										<div class="mt-3" style="text-align: right;">
											<h6>
												현재 보유 자산 대비 목표 달성률은
												<c:choose>
													<c:when
														test="${ retireVO.allAsserts/etcVO.etcExpence *100 >=100}">
														<span style="color: #018c8d">100%</span>입니다.
											</c:when>
													<c:otherwise>
														<span style="color: #018c8d"><fmt:formatNumber
																value="${ retireVO.allAsserts/etcVO.etcExpence}"
																type="percent" /></span>입니다.
											</c:otherwise>
												</c:choose>
											</h6>
										</div>

										<div class="table-responsive text-nowrap pt-5">
											<table class="table table-hover  table-bordered text-center"
												style="font-size: 18px; color: black;">
												<thead class="table"
													style="background-color: #b2d8d8; color: black">
													<tr>
														<th>구분</th>
														<th>금액</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>필요 자금</td>
														<td><fmt:formatNumber value="${etcVO.etcExpence }" />원</td>
													</tr>
													<tr>
														<td>준비 자금</td>
														<td><fmt:formatNumber value="${retireVO.allAsserts}" />원
														</td>
													</tr>
													<tr class="table-warning" style="color: #ff328b;">
														<th>부족 자금</th>
														<td><c:choose>
																<c:when
																	test="${etcVO.etcExpence-retireVO.allAsserts >0}">
																	<fmt:formatNumber
																		value="${etcVO.etcExpence - retireVO.allAsserts}" />원
															</c:when>
																<c:otherwise>
																0원
															</c:otherwise>
															</c:choose></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<!--//app-card-body-->
								</c:if>
								<!-- //기타재무설계 카드 -->
							</div>
							<!--//app-card-->
						</div>
						<!--//col-->
						<!-- 재무목표분석 끝  -->


						<!-- 솔루션  -->
						<div class="col-12 col-lg-12 mt-5 pt-5">
							<h5 class="pb-4">
								<i class='bx bxs-quote-alt-left bx-md'></i>고객님의 든든한 미래를 준비할 수 있는
								방법을 알려드립니다.<i class='bx bx-md bxs-quote-alt-right'></i>
							</h5>
							<div class="app-card app-card-chart shadow-sm"
								style="background-color: #E5F2F2;">
								<div class="app-card-body p-3 p-lg-4">
									<div class="row">
										<div class="col-12 col-lg-10" style="text-align: left;">
											<h4 class="pt-4" style="color: #004C4C">내가 설계한 재무 목표 준비
												자금 만들기</h4>
											<h5 class="pb-4" style="color: grey">
												${loginVO.name }님의 <span style="color: #08a294">재무설계
													내역과 소비내역를 분석하여</span> 최적의 금융 상품 조합을 추천해드려요!
											</h5>
										</div>
										<div class="col-12 col-lg-2"
											style="text-align: center; padding-top: 30px;">
											<a onclick="document.getElementById('productForm').submit();"><i
												class='bx bx-chevron-right bx-lg bx-fade-right'></i></a>
										</div>

										<input type="hidden" name="annualIncome"
											value="${annualIncome}"> <input type="hidden"
											name="houseCheckedInput" value="${houseChecked}"> <input
											type="hidden" name="marriageCheckedInput"
											value="${marriageChecked}"> <input type="hidden"
											name="etcCheckedInput" value="${etcChecked}"> <input
											type="hidden" name="etcName" value="${etcVO.etcName }">
										<input type="hidden" name="etcExpence"
											value="${etcVO.etcExpence }"> <input type="hidden"
											name="houseExpence" value="${houseVO.houseExpence }">
										<input type="hidden" name="marriageExpence"
											value="${marriageVO.marriageExpence }"> <input
											type="hidden" name="marriageMonthDiff"
											value="${marriageMonthDiff}"> <input type="hidden"
											name="etcMonthDiff" value="${etcMonthDiff }"> <input
											type="hidden" name="houseMonthDiff"
											value="${houseMonthDiff }"> <input type="hidden"
											name="myAsserts" value="${retireVO.allAsserts }"> <input
											type="hidden" name="spareMoney"
											value="${retireVO.income-retireVO.outcome+partnerIncome-partnerOutcome}">
									</div>
								</div>
								<!--//app-card-body-->
							</div>
							<!--//app-card-->
						</div>
					</div>
					<!--//솔루션 row-->

					<div class="pt-5 pb-5"></div>

				</div>
				<!--//app-card-->
			</div>
		</form>
	</div>

	<!-- JavaScript Libraries -->

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
	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

	<script type="text/javascript">
		function marriageResult() {
			var checked = $('#marriageResultBtn').is(':checked');

			if ($('#marriageResultBtn').is(":checked") == true) {
				$('#marriageResult').show();
			} else {
				$('#marriageResult').hide();
			}
		};

		function retireResult() {
			var checked = $('#retireResultBtn').is(':checked');

			if ($('#retireResultBtn').is(":checked") == true) {
				$('#retireResult').show();
			} else {
				$('#retireResult').hide();
			}

		};
		function houseResult() {
			if ($('#houseResultBtn').is(":checked") == true) {
				$('#houseResult').show();
			} else {
				$('#houseResult').hide();
			}

		};
		function etcResult() {
			if ($('#etcResultBtn').is(":checked") == true) {
				$('#etcResult').show();
			} else {
				$('#etcResult').hide();
			}

		};
	</script>
	<script type="text/javascript">
		var income = '<c:out value="${retireVO.income}"/>'
		var outcome = '<c:out value="${retireVO.outcome}"/>'
		var allAsserts = '<c:out value="${retireVO.allAsserts}"/>'
		var loanMoney = '<c:out value="${retireVO.loanMoney}"/>'

		$(document).ready(
				function() {

					var options = {
						series : [ ${accountMoney},${stockMoney},${retireVO.loanMoney} ],
						chart : {
							type : 'donut',
						},
						legend : {
							position:'bottom',
							fontSize:'18px'
						},dataLabels : {
							style : {
								fontSize : '25px'
							}
						},
						labels : [ "계좌·현금성 자산","투자 자산", "대출" ],
						responsive : [ {
							breakpoint : 600,
							options : {
								chart : {
									width :800 
								},
								legend : {
									position : 'bottom'
								}
							}
						} ]
					};

				      var chartAsserts = new ApexCharts(document.querySelector("#assertsChart1"), options);
				      chartAsserts.render();
				
			/* 		
					var optionsIncome = {
					        series: [{
					        name: 'Inflation',
					        data: [${retireVO.income}, ${retireVO.outcome}]
					      }],
					        chart: {
					        height: 300,
					        type: 'bar',
					      },
					      plotOptions: {
					        bar: {
					          borderRadius: 10,
					          dataLabels: {
					            position: 'top', // top, center, bottom
					          },
					        }
					      },
					      dataLabels: {
					        enabled: true,
					        formatter: function (val) {
					          return val + "만원";
					        },
					        offsetY: -20,
					        style: {
					          fontSize: '18px',
					          colors: ["#304758"]
					        } 
					      },
					      
					      xaxis: {
					        categories: ["예상 월 소득", "예상 월 지출"],
					        position: 'top',
					        axisBorder: {
					          show: false
					        },
					        axisTicks: {
					          show: false
					        },
					        crosshairs: {
					          fill: {
					            type: 'gradient',
					            gradient: {
					              colorFrom: '#D8E3F0',
					              colorTo: '#BED1E6',
					              stops: [0, 100],
					              opacityFrom: 0.4,
					              opacityTo: 0.5,
					            }
					          }
					        },
					        tooltip: {
					          enabled: true,
					        }
					      },
					      yaxis: {
					        axisBorder: {
					          show: false
					        },
					        axisTicks: {
					          show: false, 
					        },
					        labels: {
					          show: false,
					          formatter: function (val) {
					            return Math.round(val/(${retireVO.income}+${retireVO.outcome})*100) + "%";
					          }
					        }
					      
					      },
					      title: {
					        text: '${loginVO.name}님 부부의 소득,소비 비교 차트',
					        floating: true,
					        offsetY: 330,
					        align: 'center',
					        style: {
					          color: '#444'
					        }
					      }
					      };

					      var chartIncome = new ApexCharts(document.querySelector("#incomeOutcomeChart1"), optionsIncome);
					      chartIncome.render();
		
						 */
					      
					      var options2 = {
					              series: [{
					                data: [{
					                  x: '월 소득',
					                  y: [0, ${retireVO.income}]
					                }, {
					                  x: '월 소비',
					                  y: [0, ${retireVO.outcome}]
					                }
					                 ]
					            }, {
					                data: [{
					                  x: '월 소득',
					                  y: [0, ${partnerIncome}]
					                }, {
					                  x: '월 소비',
					                  y: [0, ${partnerOutcome}]
					                }]
					            }],
					              chart: {
					              type: 'rangeBar',
					              height: 350
					            },
					            legend : {
									position:'bottom',
									fontSize:'18px'
								},
								dataLabels : {
									style : {
										fontSize : '25px'
									}
								}, 
					            plotOptions: {
					              bar: {
					                horizontal: false
					              }
					            },
					            
					            dataLabels: {
					              enabled: true
					            }
					            };

					            var chart = new ApexCharts(document.querySelector("#incomeOutcomeChart1"), options2);
					            chart.render();
					            
				});
					
				
	</script>
</body>
</html>