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
<jsp:include page="/WEB-INF/jsp/include/cardHoverCss.jsp" />
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

a:hover {
	color: green;
}
</style>

</head>
<body class="app">
	<header class="app-header fixed-top">
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>


	<!-- Page Header Start -->
	<div class="container-fluid page-header py-5 mb-5">
		<div class="container py-5">
			<h1 class="display-3 text-white mb-3 animated slideInDown">MY자산</h1>
			<nav aria-label="breadcrumb animated slideInDown">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
					<li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
					<li class="breadcrumb-item text-white active" aria-current="page">MY자산</li>
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
			<div style="color: grey">서비스 안내 및 가입</div>
			<hr style="width: 200px;">
			<h6 style="color: black;">MY자산조회</h6>
			<hr style="width: 200px;">
			<div style="color: grey">자금 하나로 모으기</div>
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
						<h6 class="text-primary">
							Hana 1Qurator <span style="color: #ff328b">자산분석</span>
						</h6>
						<h2 class="mb-2">MY자산조회</h2>
					</div>
					<!-- 순자산 -->
					<div class="pt-5 pb-5 mt-2 mb-2 wow fadeInUp" data-wow-delay="0.1s"
						style="text-align: center; background-color: #08a294;">
						<h4 style="color: white">
							${loginVO.name }님의 금융 자산은 <span data-toggle="counter-up" style="font-size: 30px;">
								${ allBalance }</span> 원 입니다.
						</h4>
					</div>
					<!-- //순자산 -->

					<br> <br>


					<!-- tab -->
					<div class="app-content pt-3">
						<!-- <div class="container-xl"> -->
						<!-- nav : 자산 목록 선택 탭 -->
						<nav id="orders-table-tab" 
							class="orders-table-tab app-nav-tabs nav shadow-sm flex-column flex-lg-row mb-4">
							<a class="flex-lg-fill text-lg-center nav-link active" style="font-size: 15px;"
								id="account-all-tab" data-bs-toggle="tab" href="#account-all"
								role="tab" aria-controls="account-all" aria-selected="true">계좌⦁현금</a>
							<a class="flex-lg-fill text-lg-center nav-link" style="font-size: 15px;"
								id="invest-all-tab" data-bs-toggle="tab" href="#invest-all"
								role="tab" aria-controls="invest-all" aria-selected="false">주식</a>
							<a class="flex-lg-fill text-lg-center nav-link" id="loan-all-tab" style="font-size: 15px;"
								data-bs-toggle="tab" href="#loan-all" role="tab"
								aria-controls="loan-all" aria-selected="false">대출</a> <a
								class="flex-lg-fill text-lg-center nav-link" id="card-all-tab" style="font-size: 15px;"
								data-bs-toggle="tab" href="#card-all" role="tab"
								aria-controls="card-all" aria-selected="false">카드</a>
						</nav>

						<!-- 계좌현금  -->
						<div class="tab-content" id="orders-table-tab-content">
							<div class="tab-pane fade show active" id="account-all"
								role="tabpanel" aria-labelledby="account-all-tab">
								<div class="container-xl ">
									<!-- 계좌 조회 -->
									<div style="background-color: green;">
										<div class="col-12 col-lg-6 mt-5" style="float: left;">
											<h1 class="app-page-title ps-1 pe-1">계좌⦁현금</h1>
										</div>
										<div class="col-12 col-lg-6 mt-5"
											style="float: left; text-align: right;">
											<h1 class="app-page-title ps-1 pe-1">총액 :
												${accountBalance }원</h1>
										</div>
									</div>

									<!-- account type select tab -->
									<div class="row g-4 mb-3">
										<div class="col-12 col-lg-12">
											<div class="app-card bg-light app-card-chart shadow-sm">
												<div class="app-card-body p-3 p-lg-4">
													<div style="text-align: center;">
														<div class="row mt-n2 wow fadeInUp" data-wow-delay="0.3s">
															<div class="col-12 text-center mt-3">
																<ul class="nav nav-pills mb-3 nav-fill" role="tablist" style="font-size: 15px;">
																	<li class="nav-item">
																		<button type="button" class="nav-link active"
																			role="tab" data-bs-toggle="tab"
																			data-bs-target="#navs-pills-justified-home"
																			aria-controls="navs-pills-justified-home"
																			aria-selected="true">
																			<i class='bx bx-archive-out'></i> 입출금 계좌
																		</button>
																	</li>
																	<li class="nav-item">
																		<button type="button" class="nav-link" role="tab"
																			data-bs-toggle="tab"
																			data-bs-target="#navs-pills-justified-profile"
																			aria-controls="navs-pills-justified-profile"
																			aria-selected="false">
																			<i class='bx bxs-user-account' ></i> 예적금 계좌
																		</button>
																	</li>
																	<li class="nav-item">
																		<button type="button" class="nav-link" role="tab"
																			data-bs-toggle="tab"
																			data-bs-target="#navs-pills-justified-messages"
																			aria-controls="navs-pills-justified-messages"
																			aria-selected="false">
																			<i class='bx bx-objects-vertical-center'></i>증권 계좌
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
									<!-- //account type select tab  -->




									<!-- account type1 : 입출금 계좌 -->
									<div class="tab-content">
										<div class="tab-pane fade show active"
											id="navs-pills-justified-home" role="tabpanel">
											<div class="row gy-4 ps-1 pe-1">
												<div class="col-12 col-lg-6 mt-5 mb-5" style="float: left;">
													<h5 style="color: grey;">입출금</h5>
												</div>
												<div class="col-12 col-lg-6 mt-5 mb-5"
													style="text-align: right;">
													<h5 style="color: grey;">총액 : ${balance01}원</h5>
												</div>
											</div>
											<div class="row gy-4 ps-1 pe-1">
												<div class="nav-align-top mb-4">
													<ul class="nav nav-tabs nav-fill" role="tablist" style="font-size: 15px;">
														<li class="nav-item">
															<button type="button" class="nav-link active" role="tab"
																data-bs-toggle="tab" data-bs-target="#navs-all"
																aria-controls="navs-all" aria-selected="true">ALL</button>
														</li>
														<li class="nav-item">
															<button type="button" class="nav-link" role="tab"
																data-bs-toggle="tab" data-bs-target="#navs-hana"
																aria-controls="navs-hana" aria-selected="false">
																하나은행</button>
														</li>
														<li class="nav-item">
															<button type="button" class="nav-link" role="tab"
																data-bs-toggle="tab" data-bs-target="#navs-other"
																aria-controls="navs-other" aria-selected="false">
																타은행</button>
														</li>
													</ul>
												</div>

												<div class="tab-content" style="min-height:1200px;">
													<div class="tab-pane fade show active" id="navs-all"
														role="tabpanel">
														<div class="row">
															<c:forEach items="${ accountVO }" var="account"
																varStatus="loop">
																<c:if test="${account.accountType eq '입출금계좌'}">
																	<div class="col-12 col-lg-6"
																		style="padding-bottom: 20px;">
																		<div
																			class="card shadow-sm d-flex border-primary flex-column align-items-start mb-3">
																			<div class="card-header p-3"
																				style="background-color: white;">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-12 d-flex ">
																						<div class="col-auto">
																							<img alt="하나로고" style="width: 100%; height: 100%;"
																								src="${ pageContext.request.contextPath }/resources/img/${account.bankPhoto}">

																						</div>
																						<div class="col-auto" style="float: left;">
																							<h5 class="app-card-title m-2">${account.accountName }</h5>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12 ">
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountType }</p>
																						</div>
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountNo }</p>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12"
																						style="text-align: center;">
																						<h3>
																							<fmt:formatNumber value="${account.balance}" />
																							원
																						</h3>
																					</div>
																					<!--//col-->
																				</div>
																				<!--//row-->
																			</div>
																			<!--//app-card-header-->
																			<div class="app-card-footer p-4 m-auto">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">조회</a>
																					</div>
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">이체</a>
																					</div>
																				</div>
																			</div>
																			<!--//app-card-footer-->

																		</div>
																		<!--//app-card-->
																	</div>
																</c:if>
															</c:forEach>
														</div>
													</div>
													<div class="tab-pane fade" id="navs-hana" role="tabpanel">
														<div class="row">
															<c:forEach items="${ accountVO }" var="account"
																varStatus="loop">
																<c:if
																	test="${account.accountType eq '입출금계좌' && account.bankCode eq '하나은행'}">
																	<div class="col-12 col-lg-6"
																		style="padding-bottom: 20px;">
																		<div
																			class="card shadow-sm d-flex border-primary flex-column align-items-start">
																			<div class="card-header"
																				style="background-color: white;">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-12 d-flex mt-2">
																						<div class="col-auto">
																							<img alt="하나로고" style="width: 80%; height: 85%;"
																								src="${ pageContext.request.contextPath }/resources/img/${account.bankPhoto}">

																						</div>
																						<div class="col-auto" style="float: left;">
																							<h5 class="app-card-title m-2">${account.accountName }</h5>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12">
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountType }</p>
																						</div>
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountNo }</p>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12"
																						style="text-align: center;">
																						<h3>
																							<fmt:formatNumber value="${account.balance}" />
																							원
																						</h3>
																					</div>
																					<!--//col-->
																				</div>
																				<!--//row-->
																			</div>
																			<!--//app-card-header-->
																			<div class="app-card-footer p-3 m-auto">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">조회</a>
																					</div>
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">이체</a>
																					</div>
																				</div>
																			</div>
																			<!--//app-card-footer-->
																		</div>
																		<!--//app-card-->
																	</div>
																</c:if>
															</c:forEach>
														</div>
													</div>
													<div class="tab-pane fade" id="navs-other" role="tabpanel">
														<div class="row">
															<c:forEach items="${ accountVO }" var="account"
																varStatus="loop">
																<c:if
																	test="${account.accountType eq '입출금계좌' && account.bankCode ne '하나은행'}">
																	<div class="col-12 col-lg-6"
																		style="padding-bottom: 20px;">
																		<div
																			class="card shadow-sm d-flex border-primary flex-column align-items-start">
																			<div class="card-header"
																				style="background-color: white;">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-12 d-flex mt-2">
																						<div class="col-auto">
																							<img alt="하나로고" style="width: 80%; height: 85%;"
																								src="${ pageContext.request.contextPath }/resources/img/${account.bankPhoto}">

																						</div>
																						<div class="col-auto" style="float: left;">
																							<h5 class="app-card-title m-2">${account.accountName }</h5>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12">
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountType }</p>
																						</div>
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountNo }</p>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12"
																						style="text-align: center;">
																						<h3>
																							<fmt:formatNumber value="${account.balance}" />
																							원
																						</h3>
																					</div>
																					<!--//col-->
																				</div>
																				<!--//row-->
																			</div>
																			<!--//app-card-header-->
																			<div class="app-card-footer p-3 m-auto">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">조회</a>
																					</div>
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">이체</a>
																					</div>
																				</div>
																			</div>
																			<!--//app-card-footer-->
																		</div>
																		<!--//app-card-->
																	</div>
																</c:if>
															</c:forEach>
														</div>
													</div>
												</div>
												<!--tab-content  -->
											</div>
										</div>
										<!-- //account type1 : 입출금 계좌 -->


										<div class="tab-pane fade" id="navs-pills-justified-profile"
											role="tabpanel">
											<!-- 계좌종류2: 예적금 -->
											<div class="row gy-4">
												<div class="col-12 col-lg-6 mb-5 mt-5">
													<h5 style="color: grey;">예적금</h5>
												</div>
												<div class="col-12 col-lg-6 mb-5 mt-5"
													style="text-align: right;">
													<h5 style="color: grey;">총액 : ${balance02}원</h5>
												</div>
											</div>
											<div class="row gy-4">
												<div class="nav-align-top mb-4">
													<ul class="nav nav-tabs nav-fill" role="tablist">
														<li class="nav-item">
															<button type="button" class="nav-link active" role="tab"
																data-bs-toggle="tab" data-bs-target="#navpills-2-1"
																aria-controls="navpills-2-1" aria-selected="true">ALL</button>
														</li>
														<li class="nav-item">
															<button type="button" class="nav-link" role="tab"
																data-bs-toggle="tab" data-bs-target="#navpills-2-2"
																aria-controls="navpils-2-2" aria-selected="false">
																하나은행</button>
														</li>
														<li class="nav-item">
															<button type="button" class="nav-link" role="tab"
																data-bs-toggle="tab" data-bs-target="#navpills-2-3"
																aria-controls="navpills-2-3" aria-selected="false">
																타은행</button>
														</li>
													</ul>
												</div>

												<div class="tab-content" style="min-height:600px;">
													<div class="tab-pane fade show active" id="navpills-2-1"
														role="tabpanel">
														<div class="row">
															<c:forEach items="${ accountVO }" var="account"
																varStatus="loop">
																<c:if test="${account.accountType eq '예적금계좌'}">
																	<div class="col-12 col-lg-6"
																		style="padding-bottom: 20px;">
																		<div
																			class="card shadow-sm d-flex border-primary flex-column align-items-start mb-3">
																			<div class="card-header"
																				style="background-color: white;">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-12 d-flex mt-2">
																						<div class="col-auto">
																							<img alt="하나로고" style="width: 80%; height: 85%;"
																								src="${ pageContext.request.contextPath }/resources/img/${account.bankPhoto}">

																						</div>
																						<div class="col-auto" style="float: left;">
																							<h5 class="app-card-title m-2">${account.accountName }</h5>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12">
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountType }</p>
																						</div>
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountNo }</p>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12"
																						style="text-align: center;">
																						<h3>
																							<fmt:formatNumber value="${account.balance}" />
																							원
																						</h3>
																					</div>
																					<!--//col-->
																				</div>
																				<!--//row-->
																			</div>
																			<!--//app-card-header-->
																			<div class="app-card-footer p-3 m-auto">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">조회</a>
																					</div>
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">이체</a>
																					</div>
																				</div>
																			</div>
																			<!--//app-card-footer-->

																		</div>
																		<!--//app-card-->
																	</div>
																</c:if>
															</c:forEach>
														</div>
													</div>
													<div class="tab-pane fade" id="navpills-2-2"
														role="tabpanel">
														<div class="row">
															<c:forEach items="${ accountVO }" var="account"
																varStatus="loop">
																<c:if
																	test="${account.accountType eq '예적금계좌' && account.bankCode eq '하나은행'}">
																	<div class="col-12 col-lg-6"
																		style="padding-bottom: 20px;">
																		<div
																			class="card shadow-sm d-flex border-primary flex-column align-items-start">
																			<div class="card-header"
																				style="background-color: white;">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-12 d-flex mt-2">
																						<div class="col-auto">
																							<img alt="하나로고" style="width: 80%; height: 85%;"
																								src="${ pageContext.request.contextPath }/resources/img/${account.bankPhoto}">

																						</div>
																						<div class="col-auto" style="float: left;">
																							<h5 class="app-card-title m-2">${account.accountName }</h5>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12">
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountType }</p>
																						</div>
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountNo }</p>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12"
																						style="text-align: center;">
																						<h3>
																							<fmt:formatNumber value="${account.balance}" />
																							원
																						</h3>
																					</div>
																					<!--//col-->
																				</div>
																				<!--//row-->
																			</div>
																			<!--//app-card-header-->
																			<div class="app-card-footer p-3 m-auto">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">조회</a>
																					</div>
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">이체</a>
																					</div>
																				</div>
																			</div>
																			<!--//app-card-footer-->
																		</div>
																		<!--//app-card-->
																	</div>
																</c:if>
															</c:forEach>
														</div>
													</div>
													<div class="tab-pane fade" id="navpills-2-3"
														role="tabpanel">
														<div class="row">
															<c:forEach items="${ accountVO }" var="account"
																varStatus="loop">
																<c:if
																	test="${account.accountType eq '예적금계좌' && account.bankCode ne '하나은행'}">
																	<div class="col-12 col-lg-6"
																		style="padding-bottom: 20px;">
																		<div
																			class="card shadow-sm d-flex border-primary flex-column align-items-start">
																			<div class="card-header"
																				style="background-color: white;">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-12 d-flex mt-2">
																						<div class="col-auto">
																							<img alt="하나로고" style="width: 80%; height: 85%;"
																								src="${ pageContext.request.contextPath }/resources/img/${account.bankPhoto}">

																						</div>
																						<div class="col-auto" style="float: left;">
																							<h5 class="app-card-title m-2">${account.accountName }</h5>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12">
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountType }</p>
																						</div>
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountNo }</p>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12"
																						style="text-align: center;">
																						<h3>
																							<fmt:formatNumber value="${account.balance}" />
																							원
																						</h3>
																					</div>
																					<!--//col-->
																				</div>
																				<!--//row-->
																			</div>
																			<!--//app-card-header-->
																			<div class="app-card-footer p-3 m-auto">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">조회</a>
																					</div>
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">이체</a>
																					</div>
																				</div>
																			</div>
																			<!--//app-card-footer-->
																		</div>
																		<!--//app-card-->
																	</div>
																</c:if>
															</c:forEach>
														</div>
													</div>
												</div>
												<!--tab-content  -->
											</div>
										</div>
										<!-- 예적금 끝  -->

										<div class="tab-pane fade" id="navs-pills-justified-messages"
											role="tabpanel">
											<!-- 계좌종류3:증권계좌 -->
											<div class="row gy-4">
												<div class="col-12 col-lg-6 mb-5 mt-5">
													<h5 style="color: grey;">증권계좌</h5>
												</div>
												<div class="col-12 col-lg-6 mb-5 mt-5"
													style="text-align: right;">
													<h5 style="color: grey;">총액 : ${balance03}원</h5>
												</div>
											</div>


											<div class="row gy-4">
												<div class="nav-align-top mb-4">
													<ul class="nav nav-tabs nav-fill" role="tablist">
														<li class="nav-item">
															<button type="button" class="nav-link active" role="tab"
																data-bs-toggle="tab" data-bs-target="#navpills-3-1"
																aria-controls="navpills-3-1" aria-selected="true">ALL</button>
														</li>
														<li class="nav-item">
															<button type="button" class="nav-link" role="tab"
																data-bs-toggle="tab" data-bs-target="#navpills-3-2"
																aria-controls="navpils-3-2" aria-selected="false">
																하나은행</button>
														</li>
														<li class="nav-item">
															<button type="button" class="nav-link" role="tab"
																data-bs-toggle="tab" data-bs-target="#navpills-3-3"
																aria-controls="navpills-3-3" aria-selected="false">
																타은행</button>
														</li>
													</ul>
												</div>

												<div class="tab-content" style="min-height:600px;">
													<div class="tab-pane fade show active" id="navpills-3-1"
														role="tabpanel">
														<div class="row">
															<c:forEach items="${ accountVO }" var="account"
																varStatus="loop">
																<c:if test="${account.accountType eq '증권계좌'}">
																	<div class="col-12 col-lg-6"
																		style="padding-bottom: 20px;">
																		<div
																			class="card shadow-sm d-flex border-primary flex-column align-items-start mb-3">
																			<div class="card-header"
																				style="background-color: white;">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-12 d-flex mt-2">
																						<div class="col-auto">
																							<img alt="하나로고" style="width: 80%; height: 85%;"
																								src="${ pageContext.request.contextPath }/resources/img/${account.bankPhoto}">

																						</div>
																						<div class="col-auto" style="float: left;">
																							<h5 class="app-card-title m-2">${account.accountName }</h5>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12">
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountType }</p>
																						</div>
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountNo }</p>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12"
																						style="text-align: center;">
																						<h3>
																							<fmt:formatNumber value="${account.balance}" />
																							원
																						</h3>
																					</div>
																					<!--//col-->
																				</div>
																				<!--//row-->
																			</div>
																			<!--//app-card-header-->
																			<div class="app-card-footer p-3 m-auto">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">조회</a>
																					</div>
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">이체</a>
																					</div>
																				</div>
																			</div>
																			<!--//app-card-footer-->

																		</div>
																		<!--//app-card-->
																	</div>
																</c:if>
															</c:forEach>
														</div>
													</div>
													<div class="tab-pane fade" id="navpills-3-2"
														role="tabpanel">
														<div class="row">
															<c:forEach items="${ accountVO }" var="account"
																varStatus="loop">
																<c:if
																	test="${account.accountType eq '증권계좌' && account.bankCode eq '하나은행'}">
																	<div class="col-12 col-lg-6"
																		style="padding-bottom: 20px;">
																		<div
																			class="card shadow-sm d-flex border-primary flex-column align-items-start">
																			<div class="card-header"
																				style="background-color: white;">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-12 d-flex mt-2">
																						<div class="col-auto">
																							<img alt="하나로고" style="width: 80%; height: 85%;"
																								src="${ pageContext.request.contextPath }/resources/img/${account.bankPhoto}">

																						</div>
																						<div class="col-auto" style="float: left;">
																							<h5 class="app-card-title m-2">${account.accountName }</h5>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12">
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountType }</p>
																						</div>
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountNo }</p>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12"
																						style="text-align: center;">
																						<h3>
																							<fmt:formatNumber value="${account.balance}" />
																							원
																						</h3>
																					</div>
																					<!--//col-->
																				</div>
																				<!--//row-->
																			</div>
																			<!--//app-card-header-->
																			<div class="app-card-footer p-3 m-auto">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">조회</a>
																					</div>
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">이체</a>
																					</div>
																				</div>
																			</div>
																			<!--//app-card-footer-->
																		</div>
																		<!--//app-card-->
																	</div>
																</c:if>
															</c:forEach>
														</div>
													</div>
													<div class="tab-pane fade" id="navpills-3-3"
														role="tabpanel">
														<div class="row">
															<c:forEach items="${ accountVO }" var="account"
																varStatus="loop">
																<c:if
																	test="${account.accountType eq '증권계좌' && account.bankCode ne '하나은행'}">
																	<div class="col-12 col-lg-6"
																		style="padding-bottom: 20px;">
																		<div
																			class="card shadow-sm d-flex border-primary flex-column align-items-start">
																			<div class="card-header"
																				style="background-color: white;">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-12 d-flex mt-2">
																						<div class="col-auto">
																							<img alt="하나로고" style="width: 80%; height: 85%;"
																								src="${ pageContext.request.contextPath }/resources/img/${account.bankPhoto}">

																						</div>
																						<div class="col-auto" style="float: left;">
																							<h5 class="app-card-title m-2">${account.accountName }</h5>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12">
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountType }</p>
																						</div>
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">
																								${account.accountNo }</p>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12"
																						style="text-align: center;">
																						<h3>
																							<fmt:formatNumber value="${account.balance}" />
																							원
																						</h3>
																					</div>
																					<!--//col-->
																				</div>
																				<!--//row-->
																			</div>
																			<!--//app-card-header-->
																			<div class="app-card-footer p-3 m-auto">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">조회</a>
																					</div>
																					<div class="col-12 col-lg-6 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">이체</a>
																					</div>
																				</div>
																			</div>
																			<!--//app-card-footer-->
																		</div>
																		<!--//app-card-->
																	</div>
																</c:if>
															</c:forEach>
														</div>
													</div>
												</div>
												<!--tab-content  -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- //account 끝 -->



							<!-- 주식 시작 -->
							<div class="tab-pane fade" id="invest-all" role="tabpanel"
								aria-labelledby="invest-all-tab">
								<div class="container-xl ">
									<div class="col-12 col-lg-6 mt-5" style="float: left;">
										<h1 class="app-page-title ps-1 pe-1">주식</h1>
									</div>
									<div class="col-12 col-lg-6 mt-5"
										style="float: left; text-align: right;">
										<h1 class="app-page-title ps-1 pe-1">총액 : ${stockBalance }원</h1>
									</div>


									<div class="tab-content">
										<div class="tab-pane fade show active"
											id="navs-pills-justified-1" role="tabpanel">
											<div class="row gy-4">

												<div class="nav-align-top mb-4">
													<ul class="nav nav-tabs nav-fill" role="tablist">
														<li class="nav-item">
															<button type="button" class="nav-link active" role="tab"
																data-bs-toggle="tab" data-bs-target="#navs-all-stock"
																aria-controls="navs-all-stock" aria-selected="true">ALL</button>
														</li>
														<li class="nav-item">
															<button type="button" class="nav-link" role="tab"
																data-bs-toggle="tab" data-bs-target="#navs-hana-stock"
																aria-controls="navs-hana-stock" aria-selected="false">
																하나은행</button>
														</li>
														<li class="nav-item">
															<button type="button" class="nav-link" role="tab"
																data-bs-toggle="tab" data-bs-target="#navs-other-stock"
																aria-controls="navs-other-stock" aria-selected="false">
																타은행</button>
														</li>
													</ul>
												</div>


												<div class="tab-content" style="min-height:600px;">
													<div class="tab-pane fade show active" id="navs-all-stock"
														role="tabpanel">
														<div class="row">
															<c:forEach items="${ stockVO }" var="stock"
																varStatus="loop">
																<div class="col-12 col-lg-6"
																	style="padding-bottom: 20px;">
																	<div
																		class="card shadow-sm d-flex border-primary flex-column align-items-start">
																		<div class="card-header"
																			style="background-color: white;">
																			<div class="row align-items-center gx-3">
																				<div class="col-12 col-lg-7 d-flex m-0 p-0">
																					<div class="col-auto">
																						<img alt="하나로고" style="width: 80%; height: 85%;"
																							src="${ pageContext.request.contextPath }/resources/img/${stock.bankPhoto}">
																					</div>
																					<div class="col-auto" style="float: left;">
																						<h5 class="app-card-title m-2">${stock.stockName }</h5>
																					</div>
																				</div>
																				<div class="col-12 col-lg-5 mt-2"
																					style="text-align: right;">
																					<c:choose>
																						<c:when
																							test="${ stock.stockAmount / (stock.purchasePrice*stock.purchaseQuantity)*100-100 < 0}">
																							<p style="color: blue;">
																								<i class='bx bx-xs bxs-down-arrow  bx-fade-down'></i>
																								<fmt:formatNumber
																									value="${stock.stockAmount-(stock.purchasePrice*stock.purchaseQuantity)}" />
																								(
																								<fmt:formatNumber
																									value="${ stock.stockAmount / (stock.purchasePrice*stock.purchaseQuantity)*100-100}" />
																								%)
																							</p>

																						</c:when>
																						<c:otherwise>
																							<p style="color: red;">
																								<i class='bx bx-sm bxs-up-arrow  bx-fade-up'></i>${ stock.stockAmount / (stock.purchasePrice*stock.purchaseQuantity)*100-100}</p>
																						</c:otherwise>
																					</c:choose>
																				</div>
																				<div class="col-12 col-lg-12">
																					<div class="col-auto"
																						style="float: left; text-align: left;">
																						<p style="margin-right: 10px;">연결증권계좌</p>
																					</div>
																					<div class="col-auto"
																						style="float: left; text-align: left;">
																						<p style="margin-right: 10px;">${stock.bankAccount }</p>
																					</div>
																				</div>
																				<div class="col-12 col-lg-12"
																					style="text-align: center;">
																					<h3>
																						<fmt:formatNumber value="${stock.stockAmount}" />
																						원
																					</h3>
																				</div>
																				<!--//col-->
																			</div>
																			<!--//row-->
																		</div>
																		<!--//app-card-header-->
																		<div class="app-card-footer p-3 m-auto">
																			<div class="row align-items-center gx-3">
																				<div class="col-12 col-lg-12 text-center">
																					<a class="btn btn-primary" href="#"
																						style="padding: 5px 90px;">상세보기</a>
																				</div>

																			</div>
																		</div>
																		<!--//app-card-footer-->
																	</div>
																	<!--//app-card-->
																</div>
															</c:forEach>
														</div>
													</div>
													<div class="tab-pane fade" id="navs-hana-stock"
														role="tabpanel">
														<div class="row">
															<c:forEach items="${ stockVO }" var="stock"
																varStatus="loop">
																<c:if test="${stock.bankName eq '하나금융투자' }">
																	<div class="col-12 col-lg-6"
																		style="padding-bottom: 20px;">
																		<div
																			class="card shadow-sm d-flex border-primary flex-column align-items-start">
																			<div class="card-header"
																				style="background-color: white;">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-7 d-flex m-0 p-0">
																						<div class="col-auto">
																							<img alt="하나로고" style="width: 80%; height: 85%;"
																								src="${ pageContext.request.contextPath }/resources/img/${stock.bankPhoto}">
																						</div>
																						<div class="col-auto" style="float: left;">
																							<h5 class="app-card-title m-2">${stock.stockName }</h5>
																						</div>
																					</div>
																					<div class="col-12 col-lg-5 mt-2"
																						style="text-align: right;">
																						<c:choose>
																							<c:when
																								test="${ stock.stockAmount / (stock.purchasePrice*stock.purchaseQuantity)*100-100 < 0}">
																								<p style="color: blue;">
																									<i
																										class='bx bx-xs bxs-down-arrow  bx-fade-down'></i>
																									<fmt:formatNumber
																										value="${stock.stockAmount-(stock.purchasePrice*stock.purchaseQuantity)}" />
																									(
																									<fmt:formatNumber
																										value="${ stock.stockAmount / (stock.purchasePrice*stock.purchaseQuantity)*100-100}" />
																									%)
																								</p>

																							</c:when>
																							<c:otherwise>
																								<p style="color: red;">
																									<i class='bx bx-sm bxs-up-arrow  bx-fade-up'></i>${ stock.stockAmount / (stock.purchasePrice*stock.purchaseQuantity)*100-100}</p>
																							</c:otherwise>
																						</c:choose>
																					</div>
																					<div class="col-12 col-lg-12">
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">연결증권계좌</p>
																						</div>
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">${stock.bankAccount }</p>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12"
																						style="text-align: center;">
																						<h3>
																							<fmt:formatNumber value="${stock.stockAmount}" />
																							원
																						</h3>
																					</div>
																					<!--//col-->
																				</div>
																				<!--//row-->
																			</div>
																			<!--//app-card-header-->
																			<div class="app-card-footer p-3 m-auto">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-12 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">상세보기</a>
																					</div>

																				</div>
																			</div>
																			<!--//app-card-footer-->
																		</div>
																		<!--//app-card-->
																	</div>
																</c:if>
															</c:forEach>
														</div>
													</div>
													<div class="tab-pane fade" id="navs-other-stock"
														role="tabpanel">
														<div class="row">
															<c:forEach items="${ stockVO }" var="stock"
																varStatus="loop">
																<c:if test="${stock.bankName ne '하나금융투자' }">
																	<div class="col-12 col-lg-6"
																		style="padding-bottom: 20px;">
																		<div
																			class="card shadow-sm d-flex border-primary flex-column align-items-start">
																			<div class="card-header"
																				style="background-color: white;">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-7 d-flex m-0 p-0">
																						<div class="col-auto">
																							<img alt="하나로고" style="width: 80%; height: 85%;"
																								src="${ pageContext.request.contextPath }/resources/img/${stock.bankPhoto}">
																						</div>
																						<div class="col-auto" style="float: left;">
																							<h5 class="app-card-title m-2">${stock.stockName }</h5>
																						</div>
																					</div>
																					<div class="col-12 col-lg-5 mt-2"
																						style="text-align: right;">
																						<c:choose>
																							<c:when
																								test="${ stock.stockAmount / (stock.purchasePrice*stock.purchaseQuantity)*100-100 < 0}">
																								<p style="color: blue;">
																									<i
																										class='bx bx-xs bxs-down-arrow  bx-fade-down'></i>
																									<fmt:formatNumber
																										value="${stock.stockAmount-(stock.purchasePrice*stock.purchaseQuantity)}" />
																									(
																									<fmt:formatNumber
																										value="${ stock.stockAmount / (stock.purchasePrice*stock.purchaseQuantity)*100-100}" />
																									%)
																								</p>

																							</c:when>
																							<c:otherwise>
																								<p style="color: red;">
																									<i class='bx bx-sm bxs-up-arrow  bx-fade-up'></i>${ stock.stockAmount / (stock.purchasePrice*stock.purchaseQuantity)*100-100}</p>
																							</c:otherwise>
																						</c:choose>
																					</div>
																					<div class="col-12 col-lg-12">
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">연결증권계좌</p>
																						</div>
																						<div class="col-auto"
																							style="float: left; text-align: left;">
																							<p style="margin-right: 10px;">${stock.bankAccount }</p>
																						</div>
																					</div>
																					<div class="col-12 col-lg-12"
																						style="text-align: center;">
																						<h3>
																							<fmt:formatNumber value="${stock.stockAmount}" />
																							원
																						</h3>
																					</div>
																					<!--//col-->
																				</div>
																				<!--//row-->
																			</div>
																			<!--//app-card-header-->
																			<div class="app-card-footer p-3 m-auto">
																				<div class="row align-items-center gx-3">
																					<div class="col-12 col-lg-12 text-center">
																						<a class="btn btn-primary" href="#"
																							style="padding: 5px 90px;">상세보기</a>
																					</div>

																				</div>
																			</div>
																			<!--//app-card-footer-->
																		</div>
																		<!--//app-card-->
																	</div>
																</c:if>
															</c:forEach>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!--//주식 끝-->
								</div>
							</div>
							<!--//주식 탭-->


							<!-- 대출 시작 -->
							<div class="tab-pane fade" id="loan-all" role="tabpanel"
								aria-labelledby="loan-all-tab">
								<div class="container-xl ">

									<!--대출-->
									<div class="col-12 col-lg-6 mt-5" style="float: left;">
										<h1 class="app-page-title ps-1 pe-1">대출</h1>
									</div>
									<div class="col-12 col-lg-6 mt-5"
										style="float: left; text-align: right;">
										<h1 class="app-page-title ps-1 pe-1">잔액 : ${loanBalance }원</h1>
									</div>
									<div class="row gy-4">
										<div class="nav-align-top mb-4">
											<ul class="nav nav-tabs nav-fill" role="tablist">
												<li class="nav-item">
													<button type="button" class="nav-link active" role="tab"
														data-bs-toggle="tab" data-bs-target="#navpills-5-1"
														aria-controls="navpills-5-1" aria-selected="true">ALL</button>
												</li>
												<li class="nav-item">
													<button type="button" class="nav-link" role="tab"
														data-bs-toggle="tab" data-bs-target="#navpills-5-2"
														aria-controls="navpils-5-2" aria-selected="false">
														하나은행</button>
												</li>
												<li class="nav-item">
													<button type="button" class="nav-link" role="tab"
														data-bs-toggle="tab" data-bs-target="#navpills-5-3"
														aria-controls="navpills-5-3" aria-selected="false">
														타은행</button>
												</li>
											</ul>
										</div>

										<div class="tab-content" style="min-height:600px;">
											<div class="tab-pane fade show active" id="navpills-5-1"
												role="tabpanel">
												<div class="row">
													<c:forEach items="${ loanVO }" var="loan" varStatus="loop">
														<div class="col-12 col-lg-6" style="padding-bottom: 20px;">
															<div
																class="card shadow-sm d-flex border-primary flex-column align-items-start mb-3">
																<div class="card-header"
																	style="background-color: white;">
																	<div class="row align-items-center gx-3">
																		<div class="col-12 col-lg-12 d-flex mt-2">
																			<div class="col-auto">
																				<img alt="하나로고" style="width: 80%; height: 85%;"
																					src="${ pageContext.request.contextPath }/resources/img/${loan.bankPhoto}">

																			</div>
																			<div class="col-auto" style="float: left;">
																				<h5 class="app-card-title m-2">${loan.loanAlias }</h5>
																			</div>
																		</div>
																		<div class="col-12 col-lg-12">
																			<div class="col-auto"
																				style="float: left; text-align: left;">
																				<p style="margin-right: 10px;">만기일</p>
																			</div>
																			<div class="col-auto"
																				style="float: left; text-align: left;">
																				<p style="margin-right: 10px;">
																					${loan.expirationDate }</p>
																			</div>
																		</div>
																		<div class="col-12 col-lg-12"
																			style="text-align: center;">
																			<h3>
																				<fmt:formatNumber value="${loan.loanBalance}" />
																				원
																			</h3>
																		</div>
																		<!--//col-->
																	</div>
																	<!--//row-->
																</div>
																<!--//app-card-header-->
																<div class="app-card-footer p-3 m-auto">
																	<div class="row align-items-center gx-3">
																		<div class="col-12 col-lg-12 text-center">
																			<a class="btn btn-primary" href="#"
																				style="padding: 5px 90px;">조회</a>
																		</div>
																	</div>
																</div>
																<!--//app-card-footer-->
															</div>
															<!--//app-card-->
														</div>
													</c:forEach>
												</div>
											</div>
											<div class="tab-pane fade" id="navpills-5-2" role="tabpanel">
												<div class="row">
													<c:forEach items="${ loanVO }" var="loan" varStatus="loop">
														<c:if test="${ loan.bankName eq '하나은행'}">
															<div class="col-12 col-lg-6"
																style="padding-bottom: 20px;">
																<div
																	class="card shadow-sm d-flex border-primary flex-column align-items-start">
																	<div class="card-header"
																		style="background-color: white;">
																		<div class="row align-items-center gx-3">
																			<div class="col-12 col-lg-12 d-flex mt-2">
																				<div class="col-auto">
																					<img alt="하나로고" style="width: 80%; height: 85%;"
																						src="${ pageContext.request.contextPath }/resources/img/${loan.bankPhoto}">

																				</div>
																				<div class="col-auto" style="float: left;">
																					<h5 class="app-card-title m-2">${loanVO.loanAlias }</h5>
																				</div>
																			</div>
																			<div class="col-12 col-lg-12">
																				<div class="col-auto"
																					style="float: left; text-align: left;">
																					<p style="margin-right: 10px;">만기일</p>
																				</div>
																				<div class="col-auto"
																					style="float: left; text-align: left;">
																					<p style="margin-right: 10px;">
																						${loan.expirationDate}</p>
																				</div>
																			</div>
																			<div class="col-12 col-lg-12"
																				style="text-align: center;">
																				<h3>
																					<fmt:formatNumber value="${loan.loanBalance}" />
																					원
																				</h3>
																			</div>
																			<!--//col-->
																		</div>
																		<!--//row-->
																	</div>
																	<!--//app-card-header-->
																	<div class="app-card-footer p-3 m-auto">
																		<div class="row align-items-center gx-3">
																			<div class="col-12 col-lg-12 text-center">
																				<a class="btn btn-primary" href="#"
																					style="padding: 5px 90px;">조회</a>
																			</div>
																		</div>
																	</div>
																	<!--//app-card-footer-->
																</div>
																<!--//app-card-->
															</div>
														</c:if>
													</c:forEach>
												</div>
											</div>
											<div class="tab-pane fade" id="navpills-5-3" role="tabpanel">
												<div class="row">
													<c:forEach items="${ loanVO }" var="loan" varStatus="loop">
														<c:if test="${ loan.bankName eq '하나은행'}">
															<div class="col-12 col-lg-6"
																style="padding-bottom: 20px;">
																<div
																	class="card shadow-sm d-flex border-primary flex-column align-items-start">
																	<div class="card-header"
																		style="background-color: white;">
																		<div class="row align-items-center gx-3">
																			<div class="col-12 col-lg-12 d-flex mt-2">
																				<div class="col-auto">
																					<img alt="하나로고" style="width: 80%; height: 85%;"
																						src="${ pageContext.request.contextPath }/resources/img/${loan.bankPhoto}">

																				</div>
																				<div class="col-auto" style="float: left;">
																					<h5 class="app-card-title m-2">${loanVO.loanAlias }</h5>
																				</div>
																			</div>
																			<div class="col-12 col-lg-12">
																				<div class="col-auto"
																					style="float: left; text-align: left;">
																					<p style="margin-right: 10px;">만기일</p>
																				</div>
																				<div class="col-auto"
																					style="float: left; text-align: left;">
																					<p style="margin-right: 10px;">
																						${loan.expirationDate}</p>
																				</div>
																			</div>
																			<div class="col-12 col-lg-12"
																				style="text-align: center;">
																				<h3>
																					<fmt:formatNumber value="${loan.loanBalance}" />
																					원
																				</h3>
																			</div>
																			<!--//col-->
																		</div>
																		<!--//row-->
																	</div>
																	<!--//app-card-header-->
																	<div class="app-card-footer p-3 m-auto">
																		<div class="row align-items-center gx-3">
																			<div class="col-12 col-lg-12 text-center">
																				<a class="btn btn-primary" href="#"
																					style="padding: 5px 90px;">조회</a>
																			</div>
																		</div>
																	</div>
																	<!--//app-card-footer-->

																</div>
																<!--//app-card-->
															</div>
														</c:if>
													</c:forEach>
												</div>
											</div>
											<!--tab-content  -->
										</div>
									</div>
									<!--//row-->
								</div>
							</div>
							<!--//대출 탭-->


							<!-- 카드 시작 -->
							<div class="tab-pane fade" id="card-all" role="tabpanel"
								aria-labelledby="invest-all-tab">
								<div class="container-xl ">

									<!-- stock type select tab -->
									<div class="row g-4 mb-5">
										<div class="col-12 col-lg-12">
											<div class="app-card bg-light app-card-chart shadow-sm">
												<div class="app-card-body p-3 p-lg-4">
													<div style="text-align: center;">
														<div class="row mt-n2">
															<div class="col-12 text-center mt-3">
																<ul class="nav nav-pills mb-3 nav-fill" role="tablist">
																	<li class="nav-item">
																		<button type="button" class="nav-link active"
																			role="tab" data-bs-toggle="tab"
																			data-bs-target="#navs-checkCard"
																			aria-controls="navs-checkCard" aria-selected="true">
																			<i class='bx bx-checkbox-checked'></i> 체크 카드
																		</button>
																	</li>
																	<li class="nav-item">
																		<button type="button" class="nav-link" role="tab"
																			data-bs-toggle="tab"
																			data-bs-target="#navs-creditCard"
																			aria-controls="navs-creditCard" aria-selected="false">
																			<i class='bx bx-credit-card'></i> 신용 카드
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
									<!-- //account type select tab  -->



									<div class="tab-content mt-5">
										<div class="tab-pane fade show active" id="navs-checkCard"
											role="tabpanel">
											<div class="row gy-4 ps-1 pe-1">
												<div class="nav-align-top mb-4">
													<ul class="nav nav-tabs nav-fill" role="tablist">
														<li class="nav-item">
															<button type="button" class="nav-link active" role="tab"
																data-bs-toggle="tab" data-bs-target="#navs-all-check-card"
																aria-controls="navs-all" aria-selected="true">ALL</button>
														</li>
														<li class="nav-item">
															<button type="button" class="nav-link" role="tab"
																data-bs-toggle="tab" data-bs-target="#navs-hana-check-card"
																aria-controls="navs-hana" aria-selected="false">
																하나카드</button>
														</li>
														<li class="nav-item">
															<button type="button" class="nav-link" role="tab"
																data-bs-toggle="tab" data-bs-target="#navs-other-check-card"
																aria-controls="navs-other" aria-selected="false">
																타사카드</button>
														</li>
													</ul>
												</div>


												<div class="tab-content" style="min-height:600px;">
													<div class="tab-pane fade show active" id="navs-all-check-card"
														role="tabpanel">
														<div class="row">
															<c:forEach items="${ cardVO }" var="card"
																varStatus="loop">
																<c:if test="${card.cardType eq '체크카드'}">
																	<div class="col-12 col-lg-6"
																		style="padding-bottom: 20px;">
																		<div class="row align-items-center gx-3">
																			<div class="col-12 col-lg-12 d-flex mt-2">
																				<figure class="snip1200">
																					<img
																						src="${pageContext.request.contextPath }/resources/img/${card.cardPhoto}" />
																					<figcaption>
																						<p>
																							<span style="color: #08a294;">${card.cardName }
																								${card.cardType }</span> <br> <span
																								style="color: grey;">${card.cardNo }</span>
																						</p>
																						<div class="heading">
																							<h2>${card.cardName }</h2>
																						</div>
																					</figcaption>
																					<a href="#"></a>
																				</figure>
																			</div>
																			<div class="col-12 col-lg-12"
																				style="text-align: center;">
																				<a class="btn btn-primary" href="#"
																					style="padding: 5px 90px;">조회</a>
																			</div>
																			<!--//col-->
																		</div>
																		<!--//row-->
																	</div>
																</c:if>
															</c:forEach>
														</div>
													</div>
													
													<div class="tab-pane fade show" id="navs-hana-check-card"
														role="tabpanel">
														<div class="row">
															<c:forEach items="${ cardVO }" var="card"
																varStatus="loop">
																<c:if test="${card.cardType eq '체크카드' && card.bankName eq '하나카드'}">
																	<div class="col-12 col-lg-6"
																		style="padding-bottom: 20px;">
																		<div class="row align-items-center gx-3">
																			<div class="col-12 col-lg-12 d-flex mt-2">
																				<figure class="snip1200">
																					<img
																						src="${pageContext.request.contextPath }/resources/img/${card.cardPhoto}" />
																					<figcaption>
																						<p>
																							<span style="color: #08a294;">${card.cardName }
																								${card.cardType }</span> <br> <span
																								style="color: grey;">${card.cardNo }</span>
																						</p>
																						<div class="heading">
																							<h2>${card.cardName }</h2>
																						</div>
																					</figcaption>
																					<a href="#"></a>
																				</figure>
																			</div>
																			<div class="col-12 col-lg-12"
																				style="text-align: center;">
																				<a class="btn btn-primary" href="#"
																					style="padding: 5px 90px;">조회</a>
																			</div>
																			<!--//col-->
																		</div>
																		<!--//row-->
																	</div>
																</c:if>
															</c:forEach>
														</div>
													</div>
													<div class="tab-pane fade show" id="navs-other-check-card"
														role="tabpanel">
														<div class="row">
															<c:forEach items="${ cardVO }" var="card"
																varStatus="loop">
																<c:if test="${card.cardType eq '체크카드' && card.bankName ne '하나카드'}">
																	<div class="col-12 col-lg-6"
																		style="padding-bottom: 20px;">
																		<div class="row align-items-center gx-3">
																			<div class="col-12 col-lg-12 d-flex mt-2">
																				<figure class="snip1200">
																					<img
																						src="${pageContext.request.contextPath }/resources/img/${card.cardPhoto}" />
																					<figcaption>
																						<p>
																							<span style="color: #08a294;">${card.cardName }
																								${card.cardType }</span> <br> <span
																								style="color: grey;">${card.cardNo }</span>
																						</p>
																						<div class="heading">
																							<h2>${card.cardName }</h2>
																						</div>
																					</figcaption>
																					<a href="#"></a>
																				</figure>
																			</div>
																			<div class="col-12 col-lg-12"
																				style="text-align: center;">
																				<a class="btn btn-primary" href="#"
																					style="padding: 5px 90px;">조회</a>
																			</div>
																			<!--//col-->
																		</div>
																		<!--//row-->
																	</div>
																</c:if>
															</c:forEach>
														</div>
													</div>
												</div>
											</div>
										</div>
										
										
										<div class="tab-pane fade show" id="navs-creditCard"
											role="tabpanel">
											<div class="row gy-4 ps-1 pe-1">
												<div class="nav-align-top mb-4">
													<ul class="nav nav-tabs nav-fill" role="tablist">
														<li class="nav-item">
															<button type="button" class="nav-link active" role="tab"
																data-bs-toggle="tab" data-bs-target="#navs-all-credit-card"
																aria-controls="navs-all" aria-selected="true">ALL</button>
														</li>
														<li class="nav-item">
															<button type="button" class="nav-link" role="tab"
																data-bs-toggle="tab" data-bs-target="#navs-hana-credit-card"
																aria-controls="navs-hana" aria-selected="false">
																하나은행</button>
														</li>
														<li class="nav-item">
															<button type="button" class="nav-link" role="tab"
																data-bs-toggle="tab" data-bs-target="#navs-other-credit-card"
																aria-controls="navs-other" aria-selected="false">
																타은행</button>
														</li>
													</ul>
												</div>


												<div class="tab-content" style="min-height:600px;">
													<div class="tab-pane fade show active" id="navs-all-credit-card"
														role="tabpanel">
														<div class="row">
															<c:forEach items="${ cardVO }" var="card"
																varStatus="loop">
																<c:if test="${card.cardType eq '신용카드'}">
																	<div class="col-12 col-lg-6"
																		style="padding-bottom: 20px;">
																		<div class="row align-items-center gx-3">
																			<div class="col-12 col-lg-12 d-flex mt-2">
																				<figure class="snip1200">
																					<img
																						src="${pageContext.request.contextPath }/resources/img/${card.cardPhoto}" />
																					<figcaption>
																						<p>
																							<span style="color: #08a294;">${card.cardName }
																								${card.cardType }</span> <br> <span
																								style="color: grey;">${card.cardNo }</span>
																						</p>
																						<div class="heading">
																							<h2>${card.cardName }</h2>
																						</div>
																					</figcaption>
																					<a href="#"></a>
																				</figure>
																			</div>
																			<div class="col-12 col-lg-12"
																				style="text-align: center;">
																				<a class="btn btn-primary" href="#"
																					style="padding: 5px 90px;">조회</a>
																			</div>
																			<!--//col-->
																		</div>
																		<!--//row-->
																	</div>
																</c:if>
															</c:forEach>
														</div>
													</div>
													
													<div class="tab-pane fade show" id="navs-hana-credit-card"
														role="tabpanel">
														<div class="row">
															<c:forEach items="${ cardVO }" var="card"
																varStatus="loop">
																<c:if test="${card.cardType eq '신용카드' && card.bankName eq '하나카드'}">
																	<div class="col-12 col-lg-6"
																		style="padding-bottom: 20px;">
																		<div class="row align-items-center gx-3">
																			<div class="col-12 col-lg-12 d-flex mt-2">
																				<figure class="snip1200">
																					<img
																						src="${pageContext.request.contextPath }/resources/img/${card.cardPhoto}" />
																					<figcaption>
																						<p>
																							<span style="color: #08a294;">${card.cardName }
																								${card.cardType }</span> <br> <span
																								style="color: grey;">${card.cardNo }</span>
																						</p>
																						<div class="heading">
																							<h2>${card.cardName }</h2>
																						</div>
																					</figcaption>
																					<a href="#"></a>
																				</figure>
																			</div>
																			<div class="col-12 col-lg-12"
																				style="text-align: center;">
																				<a class="btn btn-primary" href="#"
																					style="padding: 5px 90px;">조회</a>
																			</div>
																			<!--//col-->
																		</div>
																		<!--//row-->
																	</div>
																</c:if>
															</c:forEach>
														</div>
													</div>
													<div class="tab-pane fade show" id="navs-other-credit-card"
														role="tabpanel">
														<div class="row">
															<c:forEach items="${ cardVO }" var="card"
																varStatus="loop">
																<c:if test="${card.cardType eq '신용카드' && card.bankName ne '하나카드'}">
																	<div class="col-12 col-lg-6"
																		style="padding-bottom: 20px;">
																		<div class="row align-items-center gx-3">
																			<div class="col-12 col-lg-12 d-flex mt-2">
																				<figure class="snip1200">
																					<img
																						src="${pageContext.request.contextPath }/resources/img/${card.cardPhoto}" />
																					<figcaption>
																						<p>
																							<span style="color: #08a294;">${card.cardName }
																								${card.cardType }</span> <br> <span
																								style="color: grey;">${card.cardNo }</span>
																						</p>
																						<div class="heading">
																							<h2>${card.cardName }</h2>
																						</div>
																					</figcaption>
																					<a href="#"></a>
																				</figure>
																			</div>
																			<div class="col-12 col-lg-12"
																				style="text-align: center;">
																				<a class="btn btn-primary" href="#"
																					style="padding: 5px 90px;">조회</a>
																			</div>
																			<!--//col-->
																		</div>
																		<!--//row-->
																	</div>
																</c:if>
															</c:forEach>
														</div>
													</div>
												</div>


											</div>
										</div>

									</div>
									<!--//카드 끝-->
								</div>
							</div>
							<!--//카드 탭-->









						</div>
					</div>



					<!-- 솔루션  -->
					<div class="row g-4 ">
						<div class="col-12 col-lg-12">
							<h5 class="pb-4">
								<i class='bx bxs-quote-alt-left bx-md'></i>고객님의 든든한 미래를 준비할 수 있는
								방법을 알려드립니다.<i class='bx bx-md bxs-quote-alt-right'></i>
							</h5>
							<div class="app-card app-card-chart shadow-sm mb-5"
								style="background-color: #E5F2F2;">
								<div class="app-card-body p-3 p-lg-4">
									<div class="row">
										<div class="col-12 col-lg-10" style="text-align: left;">
											<h4 class="pt-4" style="color: #004C4C">나의 자산 분석하기</h4>
											<h6 class="pb-4" style="color: grey">
												현재 나의 자산 상태가 궁금하다면? <span style="color: #ff328b">하나원큐레이터
													자산 분석 </span>하기
											</h6>
										</div>
										<div class="col-12 col-lg-2"
											style="text-align: center; padding-top: 30px;">
											<a
												href="${pageContext.request.contextPath }/assert/analysisAssert"><i
												class='bx bx-chevron-right bx-lg bx-fade-right'></i></a>
										</div>
									</div>
								</div>
								<!--//app-card-body-->
							</div>
							<!--//app-card-->
						</div>
					</div>
					<!--//솔루션 row-->




				</div>
				<!-- //container-xl -->
			</div>
		</div>
	</div>
	<!--app-wrapper -->


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
</body>
</html>