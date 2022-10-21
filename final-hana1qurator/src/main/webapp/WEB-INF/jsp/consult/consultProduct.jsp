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
<jsp:include page="/WEB-INF/jsp/include/head.jsp" />
<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
<style type="text/css">
.card-circle:hover {
	border: 5px solid;
	border-color: #ff328b;
}
</style>
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

	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary"
			style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->



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
			<h6 style="color: #018c8d;">
				Hana 1Qurator <span style="color: #ff328b">MY재무</span>
			</h6>
			<h2>MY재무설계</h2>
		</div>
		<!--최상위 카드  -->
		<!-- <div class="card"
			style="width: 90%; margin: auto; background-color: #dcefe7"> -->

		<div class="app-content pt-3 p-md-3 p-lg-4">
			<div class="container-xl">
				<!-- intro  -->
				<div class="row g-4">
					<div class="col-12 col-lg-12">
						<div class="row m-0">
							<div class="col-12" style="text-align: center;">
								<h4 class="mt-5">${loginVO.name }님의
									<span style="color: #ff328b;">재무 목표 달성</span>을 위한
								</h4>
								<h2 class="text-primary">
									<i class='bx bx-bulb'></i>하나원큐레이터의 추천 솔루션
								</h2>
							</div>
							
							<h4 class="text-primary mt-3">
								맞춤형 금융 상품 이용하기
							</h4>

							<!-- 솔루션1 : 노후자금  -->
							<div class="row g-3 ">
								<div class="col-12 col-lg-12 mt-2">
									<div class="app-card app-card-chart shadow-sm"
										style="background-color: #E5F2F2;">
										<div class="app-card-body p-lg-4">
											<div class="row">
												<div class="col-12 col-lg-10" style="text-align: left;">
													<h4 class="pt-4" style="color: #004C4C">01. 든든한 노후를 위한
														노후 자금 만들기</h4>
													<h6 class="pb-4" style="color: grey">
														${loginVO.name }님의 <span style="color: #08a294">재무설계
															내역을 분석하여</span> 노후 자금 준비를 도와드려요!
													</h6>
												</div>
												<div class="col-12 col-lg-2"
													style="text-align: center; padding-top: 30px;">
													<a data-bs-toggle="modal" data-bs-target="#modalSolution1">
														<i class='bx bx-chevron-right bx-lg bx-fade-right'></i>
													</a>
												</div>
											</div>
										</div>
										<!--//app-card-body-->
									</div>
									<!--//app-card-->
								</div>
							</div>
							<!--//솔루션 row-->



							<!-- 솔루선1 : 모달 -->
							<div class="col-lg-4 col-md-3">
								<!-- Modal -->
								<div class="modal fade" id="modalSolution1" tabindex="-1"
									aria-hidden="true">
									<div class="modal-dialog modal-dialog-scrollable modal-xl"
										role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="modalScrollableTitle">노후 자금
													모으기</h5>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
												<div class="text-center mt-3">
													<div class="mb-3">
														<img alt=""
															src="${pageContext.request.contextPath}/resources/img/hanaTopLogo.png">
													</div>
													<div>
														<span style="font-weight: bold; font-size: 20px;">
															${loginVO.name }님의 안정한 노후를 위해,</span> <span
															style="font-weight: bold; font-size: 30px; color: #ff328b;">${pensionVO.pensionName }</span><span
															style="font-weight: bold; font-size: 20px;">을
															추천합니다.</span>
													</div>

													<div class="row mt-5">
														<div
															class="col-12 col-lg-10 m-auto mb-5 app-card border boerder-rounded border-primary app-card-chart shadow-lg p-3">
															<div class="row mt-3 mb-3">
																<div class="col-12 col-lg-4 mt-2">
																	<img alt="" style="width: 220px; height: 220px;"
																		src="${pageContext.request.contextPath}/resources/img/illurstor/pension_1st.jpg">
																</div>
																<div class="col-12 col-lg-8 mr-3">
																	<div
																		class="app-card border boerder-rounded  app-card-chart shadow-sm"
																		style="background-color: #E5F2F2">
																		<div class="app-card-body p-3 p-lg-4 mt-3 mb-3"
																			style="text-align: left;">

																			<p>${pensionVO.repDetail }</p>
																			<h4>${pensionVO.pensionName }</h4>
																			<div class="row pt-3">
																				<div class="col-12 col-lg-4"></div>
																				<div class="col-12 col-lg-8"
																					style="text-align: right;">
																					<button class="btn btn-primary">상품정보</button>
																					<button id="pensionInsertBtn"
																						class="btn btn-primary" type="button">장바구니
																						담기</button>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>


													<div class="mb-3" style="text-align: center;">
														<i class='bx bx-lg bx-chevrons-down bx-fade-down'></i>
													</div>


													<h2 class="mb-3 mt-5" style="color: #008080">
														${pensionVO.pensionName }으로 세금절세 가능</h2>
													<h5>
														총 연간 소득이 <span style="font-size: 25px; color: #ff328b">${income}만원</span>인
														구이경님은 <br> 연금저축보험으로
														<c:choose>
															<c:when test="${income le 5500 }">
																<span style="font-size: 25px; color: #ff328b">월
																	34만원</span> 납입 시,
																<span style="font-size: 25px; color: #ff328b">최대
																	66만원</span>
															</c:when>
															<c:when test="${income gt 5500 && income le 5500 }">
																<span style="font-size: 25px; color: #ff328b">월
																	34만원</span> 납입 시, 
																<span style="font-size: 25px; color: #ff328b">최대
																	52.8만원</span>
															</c:when>
															<c:when test="${income gt 5500 && income le 5500 }">
																<span style="font-size: 25px; color: #ff328b">월
																	25만원</span> 납입 시, 
																<span style="font-size: 25px; color: #ff328b">최대
																	39.6만원</span>
															</c:when>
														</c:choose>
														세금 절감을 할 수 있어요
													</h5>
													<p>*총 소득금액에 따라 세액공제율이 달라집니다.</p>
												</div>

												<div class="row mt-5 mb-5">
													<div class="col-12 col-lg-4 mt-2 mb-2"
														style="text-align: right;">
														<img class="m-auto pt-3" alt=""
															style="width: 90%; height: 85%; padding-left: 30px;"
															src="${pageContext.request.contextPath }/resources/img/tax.jpg">

													</div>
													<div class="col-12 col-lg-7 m-auto text-center">
														<div class="row">
															<hr class="mt-3">
															<div class="col-12 col-lg-6">
																<h5>소득금액</h5>
															</div>
															<div class="col-12 col-lg-6">
																<c:choose>
																	<c:when test="${income le 5500 }">
																		<h5>
																			총 급여 <span style="color: #ff328b">5500만원 이하</span>
																		</h5>
																		<h5>
																			종합 소득 금액 <span style="color: #ff328b">4000만원
																				이하</span>
																		</h5>
																	</c:when>
																	<c:when test="${income gt 5500 && income le 5500 }">
																		여기
																		<h5>
																			총 급여 <span style="color: #ff328b">5500만원 초과</span>
																		</h5>
																		<h5>
																			종합 소득 금액 <span style="color: #ff328b">4000만원
																				초과</span>
																		</h5>
																	</c:when>
																	<c:when test="${income gt 12000 }">
																		여기
																		<h5>
																			총 급여 <span style="color: #ff328b">1억 2천만원 초과</span>
																		</h5>
																		<h5>
																			종합 소득 금액 <span style="color: #ff328b">1억 초과</span>
																		</h5>
																	</c:when>
																</c:choose>
															</div>
														</div>
														<hr>
														<div class="row">
															<div class="col-12 col-lg-6">
																<h5>세액공제율</h5>
															</div>
															<div class="col-12 col-lg-6">
																<c:choose>
																	<c:when test="${income le 5500 }">
																		<h5>
																			<span style="color: #ff328b">16.5%</span>
																		</h5>
																	</c:when>
																	<c:when test="${income gt 5500 && income le 5500 }">
																		<h5>
																			<span style="color: #ff328b">13.2%</span>
																		</h5>
																	</c:when>
																	<c:when test="${income gt 12000 }">
																		<h5>
																			<span style="color: #ff328b">13.2%</span>
																		</h5>
																	</c:when>
																</c:choose>
															</div>
														</div>
														<hr>
														<div class="row">
															<div class="col-12 col-lg-6">
																<h5>연말정산 세액공제</h5>
															</div>
															<div class="col-12 col-lg-6">
																<c:choose>
																	<c:when test="${income le 5500 }">
																		<h5>400만원 한도</h5>
																		<h5>
																			<span style="color: #ff328b">(월 34만원)</span>*16.5% =
																		</h5>
																		<h5>
																			최대 환급 금액 <span style="color: #ff328b">66만원</span>
																		</h5>
																	</c:when>
																	<c:when test="${income gt 5500 && income le 5500 }">
																		<h5>400만원 한도</h5>
																		<h5>
																			<span style="color: #ff328b">(월 34만원)</span>*13.2% =
																			<span style="color: #ff328b">최대 환급 금액 52.8만원</span>
																		</h5>
																	</c:when>
																	<c:when test="${income gt 12000 }">
																		<h5>300만원 한도</h5>
																		<h5>
																			<span style="color: #ff328b">(월 25만원)</span>*13.2% =
																			<span style="color: #ff328b">최대 환급 금액 39.6만원</span>
																		</h5>
																	</c:when>
																</c:choose>
															</div>

														</div>
														<!-- row  -->
														<hr>
													</div>
													<div class="col-12 col-lg-1 mt-2 mb-2 "></div>
												</div>
												<!--//row  -->
												<%-- <div class="text-center mt-5">
													<h3 class="mt-5 pt-5 mb-3" style="color: #008080">02.
														빨리 가입할 수록 더 많은 연금액 수령</h3>
													<h4>가입 시점이 빠를 수록 더 많은 연금액을 마련할 수 있습니다.</h4>
													<p>*종신연금형(10년 보증)/65세 연금개시/전기납/월 보험료 34만원</p>
													<p>*2022년 6월 공시이율 2.30% 가정시</p>
													<img class="mt-2 mb-2" alt=""
														src="${pageContext.request.contextPath }/resources/img/tax.jpg">
												</div> --%>
											</div>
											<!--//body  -->
											<div class="modal-footer">
												<button type="button" class="btn btn-primary"
													data-bs-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--//솔루션1: 모달  -->




							<!-- 솔루션2: 준비자금  -->
							<div class="row g-3 ">
								<div class="col-12 col-lg-12">
									<div class="app-card app-card-chart shadow-sm"
										style="background-color: #E5F2F2;">
										<div class="app-card-body p-lg-4">
											<div class="row">
												<div class="col-12 col-lg-10" style="text-align: left;">
													<h4 class="pt-4" style="color: #004C4C">02. 내가 설계한 재무
														목표 준비 자금 만들기</h4>
													<h6 class="pb-4" style="color: grey">
														${loginVO.name }님의 <span style="color: #08a294">재무설계
															내역을 분석하여</span> 목표 준비 자금 달성을 도와드려요!
													</h6>
												</div>
												<div class="col-12 col-lg-2"
													style="text-align: center; padding-top: 30px;">
													<a data-bs-toggle="modal" data-bs-target="#modalSolution2">
														<i class='bx bx-chevron-right bx-lg bx-fade-right'></i>
													</a>
												</div>
											</div>
										</div>
										<!--//app-card-body-->
									</div>
									<!--//app-card-->
								</div>
							</div>
							<!--//솔루션2-->

							<!-- 솔루선2 : 모달 -->
							<div class="col-lg-4 col-md-3">
								<!-- Modal -->
								<div class="modal fade" id="modalSolution2" tabindex="-1"
									aria-labelledby="modalScrollableTitle2" style="display: none"
									aria-hidden="true">
									<div class="modal-dialog modal-dialog-scrollable modal-xl"
										role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="modalScrollableTitle2">목표
													자금 모으기</h5>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body text-center">
												<div class="mb-3">
													<img alt=""
														src="${pageContext.request.contextPath}/resources/img/hanaTopLogo.png">
												</div>
												<div class="mt-5 mb-5">
													<span style="font-weight: bold; font-size: 20px;">
														${loginVO.name }님은 <c:if test="${houseChecked eq 'yes' }">
															<span style="font-size: 18px;" class="badge bg-primary">주택</span>
														</c:if> <c:if test="${marriageChecked eq 'yes'}">
															<span class="badge bg-primary" style="font-size: 18px;">결혼</span>
														</c:if> <c:if test="${etcChecked eq 'yes' }">
															<span style="font-size: 18px;" class="badge bg-primary">${etcVO.etcName }</span>
														</c:if> 자금 마련을 목표로 하고있습니다. <span
														style="color: #ff328b; font-size: 20px;"></span>

													</span>
												</div>

												<div class="row">
													<div class="col-12 col-lg-10 m-auto">
														<div class="app-card bg-light app-card-chart shadow-sm">
															<div class="app-card-body p-3 p-lg-4">
																<div style="text-align: center;">
																	<div class="row mt-n2">
																		<div class="col-12 text-center mt-3">
																			<ul class="nav nav-pills mb-3 nav-fill"
																				role="tablist">
																				<c:if test="${houseChecked eq 'yes' }">
																					<li class="nav-item" id="houseBtn">
																						<button type="button" class="nav-link" role="tab"
																							data-bs-toggle="tab"
																							data-bs-target="#navs-pills-justified-1"
																							aria-controls="navs-pills-justified-1"
																							aria-selected="false">주택 자금 마련</button>
																					</li>
																				</c:if>
																				<c:if test="${marriageChecked eq 'yes' }">
																					<li class="nav-item" id="marriageBtn">
																						<button type="button" class="nav-link" role="tab"
																							style="padding: 4px 8px;" data-bs-toggle="tab"
																							data-bs-target="#navs-pills-justified-2"
																							aria-controls="navs-pills-justified-2"
																							aria-selected="false">결혼 자금 마련</button>
																					</li>
																				</c:if>
																				<c:if test="${etcChecked eq 'yes' }">
																					<li class="nav-item" id="etcBtn">
																						<button type="button" class="nav-link" role="tab"
																							style="padding: 4px 8px;" data-bs-toggle="tab"
																							data-bs-target="#navs-pills-justified-3"
																							aria-controls="navs-pills-justified-3"
																							aria-selected="false">${etcVO.etcName }
																							자금 마련</button>
																					</li>
																				</c:if>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>
															<!--//app-card-body-->
														</div>
														<!--//app-card-->
														<p class="mt-3 mb-3">*맞춤형 금융상품을 조회할 재무 설계 목표를 선택하세요</p>
													</div>
												</div>

												<!-- 주택 -->
												<div class="tab-content">
													<div class="tab-pane fade" id="navs-pills-justified-1"
														role="tabpanel">
														<div class="row mt-5">
															<div class="col-12 col-lg-10 m-auto">
																<div class="app-card bg-transparent h-100 shadow-sm"
																	style="border: solid 1px; border-color: #66b2b2">
																	<div class="mb-5 mt-5 text-center">
																		<h5>${loginVO.name }님의
																			예상 주택 자금 자금 준비 기간은 <span style="color: #018c8d">${houseMonthDiff }개월</span>이며,
																		</h5>
																		<h5>
																			<c:choose>
																				<c:when test="${houseVO.houseExpence-myAsserts > 0}">
																					부족 자금은 <span style="color: #ff328b;"><fmt:formatNumber
																							value="${houseVO.houseExpence-myAsserts}" />원</span>입니다.
																				</c:when>
																				<c:otherwise>
																					목표 필요 자금 <span style="color: #ff328b;"><fmt:formatNumber
																							value="${houseVO.houseExpence}" />원</span>을 달성하셨습니다.
																				</c:otherwise>
																			</c:choose>
																		</h5>
																	</div>
																</div>
															</div>

															<div class="col-12 col-lg-12 mt-5 mb-5 pt-5">
																<c:choose>
																	<c:when test="${houseVO.houseExpence-myAsserts > 0}">
																		<h3 class="mb-3">
																			월 여유 자금 <span style="color: #ff328b;">${spareMoney}만원</span>을
																			저축하고 <span style="color: #08a294;">목표자금을 달성</span>해보세요!
																		</h3>
																		<h5 class="mb-3">${loginVO.name }님의목돈모으기를위한 추천 적금
																			상품입니다.</h5>
																	</c:when>
																	<c:otherwise>
																		<h5 class="mb-3 text-primary">원금 보장과 이자 혜택까지!</h5>
																		<h3 class="mb-3">
																			<span class="text-primary">달성한 목표 자금</span>을 <span
																				style="color: #ff328b;">예금</span>으로 관리해보세요!
																		</h3>
																		<h5>${loginVO.name }님의목돈굴리기를위한 추천 예금 상품입니다.</h5>
																	</c:otherwise>
																</c:choose>
															</div>

															<div class="mb-2" style="text-align: center;">
																<i class='bx bx-lg bx-chevrons-down bx-fade-down'></i>
															</div>


															<div
																class="col-12 col-lg-10 m-auto mt-5 mb-5 app-card border boerder-rounded border-primary app-card-chart shadow-lg p-3">
																<div class="row mt-3 mb-3">
																	<div class="col-12 col-lg-4 mt-2">
																		<img alt="" style="width: 220px; height: 220px;"
																			src="${pageContext.request.contextPath}/resources/img/illurstor/houseSavings1.jpg">
																	</div>
																	<div class="col-12 col-lg-8 mr-3">
																		<div
																			class="app-card border boerder-rounded  app-card-chart shadow-sm"
																			style="background-color: #E5F2F2">
																			<div class="app-card-body p-3 p-lg-4 mt-3 mb-3"
																				style="text-align: left;">
																				<c:choose>
																					<c:when
																						test="${houseVO.houseExpence-myAsserts > 0}">
																						<p>${houseSavingsVO.repDesc }</p>
																						<div class="row ">
																							<div class="col-12 col-lg-6"><h4>${houseSavingsVO.productName }</h4></div>
																							<div class="col-12 col-lg-6" style="text-align: right;"><h3 style="color: #ff328b;">
																								<span style="color: grey; font-size: 18px;">기본금리 </span> ${houseSavingsVO.interestRate }%</h3></div>
																						</div>
																						 
																						<div class="row pt-3">
																							<div class="col-12 col-lg-4"></div>
																							<div class="col-12 col-lg-8"
																								style="text-align: right;">
																								<button class="btn btn-primary">상품정보</button>
																								<button id="houseSavingsInsertBtn"
																									class="btn btn-primary" type="button">장바구니
																									담기</button>
																							</div>
																						</div>
																					</c:when>
																					<c:otherwise>
																						<p>${houseTermDepositVO.repDesc }</p>
																						<div class="row ">
																							<div class="col-12 col-lg-6"><h4>${houseTermDepositVO.productName }</h4></div>
																							<div class="col-12 col-lg-6" style="text-align: right;"><h3 style="color: #ff328b;">
																								<span style="color: grey; font-size: 18px;">기본금리 </span> ${houseTermDepositVO.interestRate }%</h3></div>
																						</div>
																						
																						<div class="row pt-3">
																							<div class="col-12 col-lg-4"></div>
																							<div class="col-12 col-lg-8"
																								style="text-align: right;">
																								<button class="btn btn-primary">상품정보</button>
																								<button id="houseTermInsertBtn"
																									class="btn btn-primary" type="button">장바구니
																									담기</button>
																							</div>
																						</div>
																					</c:otherwise>
																				</c:choose>

																			</div>
																		</div>
																	</div>
																</div>
															</div>

															<div class="row mt-5 mb-5">
																<!-- 적금 : 자금 부족시 -->
																<c:choose>
																	<c:when test="${houseVO.houseExpence-myAsserts > 0}">
																		<h2 class="mb-3 mt-5" style="color: #008080">01.
																			기본 금리 ${houseSavingsVO.interestRate}%으로 이자 받기</h2>

																		<h5>
																			월 <span style="font-size: 25px; color: #ff328b">${spareMoney}만원</span>씩
																			<span style="font-size: 25px; color: #ff328b">${houseMonthDiff }개월</span>
																			저축시 <span style="font-size: 25px; color: #ff328b"
																				id="taxModal2"></span>을 모을 수 있어요
																		</h5>

																		<button class="btn btn-primary m-auto"
																			data-bs-toggle="modal"
																			style="width: 30%; margin: auto;"
																			data-bs-target="#calculatorModal">적금 계산기</button>
																		<p>*적금 계산기로 다양한 수령액을 계산해보세요</p>


																		<div class="col-12 col-lg-1 mt-2 mb-2 "></div>
																		<div class="col-12 col-lg-4 mt-2 mb-2 ">
																			<img class="m-auto pt-3" alt=""
																				style="width: 100%; height: 100%;"
																				src="${pageContext.request.contextPath }/resources/img/illurstor/houseSavings2.jpg">

																		</div>

																		<div class="col-12 col-lg-6 m-auto">
																			<div class="row">
																				<hr class="mt-3">
																				<div class="col-12 col-lg-6">
																					<h5>원금 합계</h5>
																				</div>
																				<div class="col-12 col-lg-6">
																					<h5>
																						<span id="savingsTotalWithoutTaxModal2"></span>
																					</h5>
																				</div>
																			</div>
																			<hr>
																			<div class="row">
																				<div class="col-12 col-lg-6">
																					<h5>세전 이자</h5>
																				</div>
																				<div class="col-12 col-lg-6">
																					<h5>
																						<span id="savingsTotalBeforeTaxModal2"></span>
																					</h5>
																				</div>
																			</div>
																			<hr>
																			<div class="row">
																				<div class="col-12 col-lg-6">
																					<h5>이자 과세</h5>
																					(일반과세:15.4%)
																				</div>
																				<div class="col-12 col-lg-6">
																					<h5 class="mt-3">
																						<span id="taxAmountModal2"></span>
																					</h5>
																				</div>

																			</div>
																			<hr>
																			<div class="row">
																				<div class="col-12 col-lg-6">
																					<h5>세후 수령액</h5>
																				</div>
																				<div class="col-12 col-lg-6">
																					<h5>
																						<span id="resultAfterTaxModal2"
																							style="color: #ff328b;"></span>
																					</h5>
																				</div>
																			</div>
																			<!-- row  -->
																			<hr>
																		</div>
																	</c:when>
																	<c:otherwise>
																		<h2 class="mb-3 mt-5" style="color: #008080">01.
																			기본 금리 ${houseTermDepositVO.interestRate}%으로 이자 받기</h2>
																		<h5>
																			보유 자금 <span style="font-size: 25px; color: #ff328b"><fmt:formatNumber
																					value="${houseVO.houseExpence}" />원</span>을 <span
																				style="font-size: 25px; color: #ff328b">${houseMonthDiff }개월</span>
																			저축시 <span style="font-size: 25px; color: #ff328b"
																				id="termTaxModal2"></span>을 모을 수 있어요
																		</h5>
																		<button class="btn btn-primary" data-bs-toggle="modal"
																			style="width: 30%; margin: auto;"
																			data-bs-target="#calculatorModal">예금 계산기</button>
																		<p>*예금 계산기로 다양한 수령액을 계산해보세요</p>

																		<div class="col-12 col-lg-1 mt-2 mb-2 "></div>
																		<div class="col-12 col-lg-4 mt-2 mb-2 ">
																			<img class="m-auto pt-3" alt=""
																				style="width: 100%; height: 100%;"
																				src="${pageContext.request.contextPath }/resources/img/illurstor/houseSavings3.jpg">
																		</div>


																		<div class="col-12 col-lg-6 m-auto">
																			<div class="row"> 
																				<hr class="mt-3">
																				<div class="col-12 col-lg-6">
																					<h5>원금 합계</h5>
																				</div>
																				<div class="col-12 col-lg-6">
																					<h5>
																						<span id="termTotalWithoutTaxModal2"></span>
																					</h5>
																				</div>
																			</div>
																			<hr>
																			<div class="row">
																				<div class="col-12 col-lg-6">
																					<h5>세전 이자</h5>
																				</div>
																				<div class="col-12 col-lg-6">
																					<h5>
																						<span id="termTotalBeforeTaxModal2"></span>
																					</h5>
																				</div>
																			</div>
																			<hr>
																			<div class="row">
																				<div class="col-12 col-lg-6">
																					<h5>이자 과세</h5>
																					(일반과세:15.4%)
																				</div>
																				<div class="col-12 col-lg-6">
																					<h5 class="mt-3">
																						<span id="termTaxAmountModal2"></span>
																					</h5>
																				</div>

																			</div>
																			<hr>
																			<div class="row">
																				<div class="col-12 col-lg-6">
																					<h5>세후 수령액</h5>
																				</div>
																				<div class="col-12 col-lg-6">
																					<h5>
																						<span id="termResultAfterTaxModal2"
																							style="color: #ff328b;"></span>
																					</h5>
																				</div>
																			</div>
																			<!-- row  -->
																			<hr>
																		</div>
																	</c:otherwise>
																</c:choose>
																<div class="col-12 col-lg-1 mt-2 mb-2 "></div>
															</div>
															<!-- //row -->
														</div>
													</div>
													<!--주택  -->

													<!-- 결혼 -->
													<div class="tab-pane fade" id="navs-pills-justified-2"
														role="tabpanel">
														<div class="row mt-5">
															<div class="col-12 col-lg-10 m-auto">
																<div class="app-card bg-transparent h-100 shadow-sm"
																	style="border: solid 1px; border-color: #66b2b2">
																	<div class="mb-5 mt-5 text-center">
																		<h5>${loginVO.name }님의
																			예상 결혼 자금 자금 준비 기간은 <span style="color: #018c8d">${marriageMonthDiff }개월</span>이며,
																		</h5>

																		<h5>
																			<c:choose>
																				<c:when
																					test="${marriageVO.marriageExpence-myAsserts > 0}">
																					부족 자금은 <span style="color: #ff328b;"><fmt:formatNumber
																							value="${marriageVO.marriageExpence-myAsserts}" />원</span>입니다.
																				</c:when>
																				<c:otherwise>
																					목표 필요 자금 <span style="color: #ff328b;"><fmt:formatNumber
																							value="${marriageVO.marriageExpence}" />원</span>을 달성하셨습니다.
																				</c:otherwise>
																			</c:choose>
																		</h5>
																	</div>
																</div>
															</div>

															<div class="col-12 col-lg-12 mt-5 mb-5 pt-5">
																<c:choose>
																	<c:when
																		test="${marriageVO.marriageExpence-myAsserts > 0}">
																		<h3 class="mb-3">
																			월 여유 자금 <span style="color: #ff328b;">${spareMoney}만원</span>을
																			저축하고 <span style="color: #08a294;">목표자금을 달성</span>해보세요!
																		</h3>
																		<h5 class="mb-3">${loginVO.name }님의목돈모으기를위한추천적금
																			상품입니다.</h5>
																	</c:when>
																	<c:otherwise>
																		<h5 class="mb-3 text-primary">원금 보장과 이자 혜택까지!</h5>
																		<h3 class="mb-3">
																			<span class="text-primary">달성한 목표 자금</span>을 <span
																				style="color: #ff328b;">예금</span>으로 관리해보세요!
																		</h3>
																		<h5>${loginVO.name }님의목돈굴리기를위한추천예금상품입니다.</h5>
																	</c:otherwise>
																</c:choose>
															</div>

															<div class="mb-2" style="text-align: center;">
																<i class='bx bx-lg bx-chevrons-down bx-fade-down'></i>
															</div>

															<div
																class="col-12 col-lg-10 m-auto mt-5 mb-5 app-card border boerder-rounded border-primary app-card-chart shadow-lg p-3">
																<div class="row mt-3 mb-3">
																	<div class="col-12 col-lg-4 mt-2">
																		<img alt="" style="width: 220px; height: 220px;"
																			src="${pageContext.request.contextPath}/resources/img/illurstor/marriageSavings.jpg">
																	</div>
																	<div class="col-12 col-lg-8 mr-3">
																		<div
																			class="app-card border boerder-rounded  app-card-chart shadow-sm"
																			style="background-color: #E5F2F2">
																			<div class="app-card-body p-3 p-lg-4 mt-3 mb-3"
																				style="text-align: left;">
																				<c:choose>
																					<c:when
																						test="${marriageVO.marriageExpence-myAsserts > 0}">
																						<p>${marriageSavingsVO.repDesc }</p>
																						<div class="row ">
																							<div class="col-12 col-lg-6"><h4>${marriageSavingsVO.productName }</h4></div>
																							<div class="col-12 col-lg-6" style="text-align: right;"><h3 style="color: #ff328b;">
																								<span style="color: grey; font-size: 18px;">기본금리 </span> ${marriageSavingsVO.interestRate }%</h3>
																							</div>
																						</div>
																						<div class="row pt-3">
																							<div class="col-12 col-lg-4"></div>
																							<div class="col-12 col-lg-8"
																								style="text-align: right;">
																								<button class="btn btn-primary">상품정보</button>
																								<button id="marriageSavingsInsertBtn"
																									class="btn btn-primary" type="button">장바구니
																									담기</button>
																							</div>
																						</div>
																					</c:when>
																					<c:otherwise>
																						<p>${marriageTermDepositVO.repDesc }</p>
																						<div class="row ">
																							<div class="col-12 col-lg-6"><h4>${marriageTermDepositVO.productName }</h4></div>
																							<div class="col-12 col-lg-6" style="text-align: right;"><h3 style="color: #ff328b;">
																								<span style="color: grey; font-size: 18px;">기본금리 </span> ${marriageTermDepositVO.interestRate }%</h3>
																							</div>
																						</div>
																					
																						<div class="row pt-3">
																							<div class="col-12 col-lg-4"></div>
																							<div class="col-12 col-lg-8"
																								style="text-align: right;">
																								<button class="btn btn-primary">상품정보</button>
																								<button id="marriageTermInsertBtn"
																									class="btn btn-primary" type="button">장바구니
																									담기</button>
																							</div>
																						</div>
																					</c:otherwise>
																				</c:choose>

																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>

														<div class="row mt-5 mb-5">
															<c:choose>
																<c:when
																	test="${marriageVO.marriageExpence-myAsserts > 0}">
																	<h2 class="mb-3 mt-5" style="color: #008080">01.
																		기본 금리 ${marriageSavingsVO.interestRate}%으로 이자 받기</h2>

																	<h5>
																		월 <span style="font-size: 25px; color: #ff328b">${spareMoney}만원</span>씩
																		<span style="font-size: 25px; color: #ff328b">${marriageMonthDiff }개월</span>
																		저축시 <span style="font-size: 25px; color: #ff328b"
																			id="taxModal"></span>을 모을 수 있어요
																	</h5>

																	<button class="btn btn-primary" data-bs-toggle="modal"
																		style="width: 30%; margin: auto;"
																		data-bs-target="#calculatorModal">적금 계산기</button>
																	<p>*적금 계산기로 다양한 수령액을 계산해보세요</p>


																	<div class="col-12 col-lg-1 mt-2 mb-2 "></div>
																	<div class="col-12 col-lg-4 mt-2 mb-2 ">
																		<img class="m-auto pt-3" alt=""
																			style="width: 100%; height: 100%;"
																			src="${pageContext.request.contextPath }/resources/img/illurstor/savings.jpg">

																	</div>

																	<div class="col-12 col-lg-6 m-auto">
																		<div class="row">
																			<hr class="mt-3">
																			<div class="col-12 col-lg-6">
																				<h5>원금 합계</h5>
																			</div>
																			<div class="col-12 col-lg-6">
																				<h5>
																					<span id="savingsTotalWithoutTaxModal"></span>
																				</h5>
																			</div>
																		</div>
																		<hr>
																		<div class="row">
																			<div class="col-12 col-lg-6">
																				<h5>세전 이자</h5>
																			</div>
																			<div class="col-12 col-lg-6">
																				<h5>
																					<span id="savingsTotalBeforeTaxModal"></span>
																				</h5>
																			</div>
																		</div>
																		<hr>
																		<div class="row">
																			<div class="col-12 col-lg-6">
																				<h5>이자 과세</h5>
																				(일반과세:15.4%)
																			</div>
																			<div class="col-12 col-lg-6">
																				<h5 class="mt-3">
																					<span id="taxAmountModal"></span>
																				</h5>
																			</div>

																		</div>
																		<hr>
																		<div class="row">
																			<div class="col-12 col-lg-6">
																				<h5>세후 수령액</h5>
																			</div>
																			<div class="col-12 col-lg-6">
																				<h5>
																					<span id="resultAfterTaxModal"
																						style="color: #ff328b;"></span>
																				</h5>
																			</div>
																		</div>
																		<!-- row  -->
																		<hr>
																	</div>
																</c:when>
																<c:otherwise>
																	<h2 class="mb-3 mt-5" style="color: #008080">01.
																		기본 금리 ${marriageTermDepositVO.interestRate}%으로 이자 받기</h2>
																	<h5>
																		보유 자금 <span style="font-size: 25px; color: #ff328b"><fmt:formatNumber
																				value="${marriageVO.marriageExpence}" />원</span>을 <span
																			style="font-size: 25px; color: #ff328b">${marriageMonthDiff }개월</span>
																		저축시 <span style="font-size: 25px; color: #ff328b"
																			id="termTaxModal"></span>을 모을 수 있어요
																	</h5>
																	<button class="btn btn-primary" data-bs-toggle="modal"
																		style="width: 30%; margin: auto;"
																		data-bs-target="#calculatorModal2">예금 계산기</button>
																	<p>*예금 계산기로 다양한 수령액을 계산해보세요</p>

																	<div class="col-12 col-lg-1 mt-2 mb-2 "></div>
																	<div class="col-12 col-lg-4 mt-2 mb-2 ">
																		<img class="m-auto pt-3" alt=""
																			style="width: 100%; height: 100%;"
																			src="${pageContext.request.contextPath }/resources/img/illurstor/savings.jpg">
																	</div>


																	<div class="col-12 col-lg-6 m-auto">
																		<div class="row">
																			<hr class="mt-3">
																			<div class="col-12 col-lg-6">
																				<h5>원금 합계</h5>
																			</div>
																			<div class="col-12 col-lg-6">
																				<h5>
																					<span id="termTotalWithoutTaxModal"></span>
																				</h5>
																			</div>
																		</div>
																		<hr>
																		<div class="row">
																			<div class="col-12 col-lg-6">
																				<h5>세전 이자</h5>
																			</div>
																			<div class="col-12 col-lg-6">
																				<h5>
																					<span id="termTotalBeforeTaxModal"></span>
																				</h5>
																			</div>
																		</div>
																		<hr>
																		<div class="row">
																			<div class="col-12 col-lg-6">
																				<h5>이자 과세</h5>
																				(일반과세:15.4%)
																			</div>
																			<div class="col-12 col-lg-6">
																				<h5 class="mt-3">
																					<span id="termTaxAmountModal"></span>
																				</h5>
																			</div>

																		</div>
																		<hr>
																		<div class="row">
																			<div class="col-12 col-lg-6">
																				<h5>세후 수령액</h5>
																			</div>
																			<div class="col-12 col-lg-6">
																				<h5>
																					<span id="termResultAfterTaxModal"
																						style="color: #ff328b;"></span>
																				</h5>
																			</div>
																		</div>
																		<!-- row  -->
																		<hr>
																	</div>
																</c:otherwise>
															</c:choose>
															<div class="col-12 col-lg-1 mt-2 mb-2 "></div>
														</div>
														<!-- //row -->
													</div>
													<!--결혼 끝  -->

													<!-- 기타 -->
													<div class="tab-pane fade" id="navs-pills-justified-3"
														role="tabpanel">
														<div class="row mt-5">
															<div class="col-12 col-lg-10 m-auto">
																<div class="app-card bg-transparent h-100 shadow-sm"
																	style="border: solid 1px; border-color: #66b2b2">
																	<div class="mb-5 mt-5 text-center">
																		<h5>${loginVO.name }님의
																			예상 결혼 자금 자금 준비 기간은 <span style="color: #018c8d">${etcMonthDiff }개월</span>이며,
																		</h5>
																		<h5>
																			<c:choose>
																				<c:when test="${etcVO.etcExpence-myAsserts > 0}">
																					부족 자금은 <span style="color: #ff328b;"><fmt:formatNumber
																							value="${etcVO.etcExpence-myAsserts}" />원</span>입니다.
																				</c:when>
																				<c:otherwise>
																					목표 필요 자금 <span style="color: #ff328b;"><fmt:formatNumber
																							value="${etcVO.etcExpence}" />원</span>을 달성하셨습니다.
																				</c:otherwise>
																			</c:choose>
																		</h5>
																	</div>
																</div>
															</div>

															<div class="col-12 col-lg-12 mt-5 mb-5 pt-5">
																<c:choose>
																	<c:when test="${etcVO.etcExpence-myAsserts > 0}">
																		<h3 class="mb-3">
																			월 여유 자금 <span style="color: #ff328b;">${spareMoney}만원</span>을
																			저축하고 <span style="color: #08a294;">목표자금을 달성</span>해보세요!
																		</h3>
																		<h5 class="mb-3">${loginVO.name }님의목돈모으기를위한추천적금
																			상품입니다.</h5>
																	</c:when>
																	<c:otherwise>
																		<h5 class="mb-3 text-primary">원금 보장과 이자 혜택까지!</h5>
																		<h3 class="mb-3">
																			<span class="text-primary">달성한 목표 자금</span>을 <span
																				style="color: #ff328b;">예금</span>으로 관리해보세요!
																		</h3>
																		<h5>${loginVO.name }님의목돈굴리기를위한추천예금상품입니다.</h5>
																	</c:otherwise>
																</c:choose>
															</div>

															<div class="mb-2" style="text-align: center;">
																<i class='bx bx-lg bx-chevrons-down bx-fade-down'></i>
															</div>

															<div
																class="col-12 col-lg-10 m-auto mt-5 mb-5 app-card border boerder-rounded border-primary app-card-chart shadow-lg p-3">
																<div class="row mt-3 mb-3">
																	<div class="col-12 col-lg-4 mt-2">
																		<img alt="" style="width: 220px; height: 220px;"
																			src="${pageContext.request.contextPath}/resources/img/illurstor/etcSavings.jpg">
																	</div>
																	<div class="col-12 col-lg-8 mr-3">
																		<div
																			class="app-card border boerder-rounded  app-card-chart shadow-sm"
																			style="background-color: #E5F2F2">
																			<div class="app-card-body p-3 p-lg-4 mt-3 mb-3"
																				style="text-align: left;">
																				<c:choose>
																					<c:when test="${etcVO.etcExpence-myAsserts > 0}">
																						<p>${etcSavingsVO.repDesc }</p>
																						<div class="row ">
																							<div class="col-12 col-lg-6"><h4>${etcSavingsVO.productName }</h4></div>
																							<div class="col-12 col-lg-6" style="text-align: right;"><h3 style="color: #ff328b;">
																								<span style="color: grey; font-size: 18px;">기본금리 </span> ${etcSavingsVO.interestRate }%</h3></div>
																						</div>
																						
																						<div class="row pt-3">
																							<div class="col-12 col-lg-4"></div>
																							<div class="col-12 col-lg-8"
																								style="text-align: right;">
																								<button class="btn btn-primary">상품정보</button>
																								<button id="etcSavingsInsertBtn"
																									class="btn btn-primary" type="button">장바구니
																									담기</button>
																							</div>
																						</div>
																					</c:when>
																					<c:otherwise>
																						<p>${etcTermDepositVO.repDesc }</p>
																						<div class="row ">
																							<div class="col-12 col-lg-6"><h4>${etcTermDepositVO.productName }</h4></div>
																							<div class="col-12 col-lg-6" style="text-align: right;"><h3 style="color: #ff328b;">
																								<span style="color: grey; font-size: 18px;">기본금리 </span> ${etcTermDepositVO.interestRate }%</h3></div>
																						</div>
						
																						<div class="row pt-3">
																							<div class="col-12 col-lg-4"></div>
																							<div class="col-12 col-lg-8"
																								style="text-align: right;">
																								<button class="btn btn-primary">상품정보</button>
																								<button id="etcTermInsertBtn"
																									class="btn btn-primary" type="button">장바구니
																									담기</button>
																							</div>
																						</div>
																					</c:otherwise>
																				</c:choose>

																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>

														<div class="row mt-5 mb-5">
															<c:choose>
																<c:when test="${etcVO.etcExpence-myAsserts > 0}">
																	<h2 class="mb-3 mt-5" style="color: #008080">01.
																		기본 금리 ${etcSavingsVO.interestRate}%으로 이자 받기</h2>

																	<h5>
																		월 <span style="font-size: 25px; color: #ff328b">${spareMoney}만원</span>씩
																		<span style="font-size: 25px; color: #ff328b">${etcMonthDiff }개월</span>
																		저축시 <span style="font-size: 25px; color: #ff328b"
																			id="taxModal3"></span>을 모을 수 있어요
																	</h5>

																	<button class="btn btn-primary" data-bs-toggle="modal"
																		style="width: 30%; margin: auto;"
																		data-bs-target="#calculatorModal">적금 계산기</button>
																	<p>*적금 계산기로 다양한 수령액을 계산해보세요</p>


																	<div class="col-12 col-lg-1 mt-2 mb-2 "></div>
																	<div class="col-12 col-lg-4 mt-2 mb-2 ">
																		<img class="m-auto pt-3" alt=""
																			style="width: 100%; height: 100%;"
																			src="${pageContext.request.contextPath }/resources/img/illurstor/savings.jpg">

																	</div>

																	<div class="col-12 col-lg-6 m-auto">
																		<div class="row">
																			<hr class="mt-3">
																			<div class="col-12 col-lg-6">
																				<h5>원금 합계</h5>
																			</div>
																			<div class="col-12 col-lg-6">
																				<h5>
																					<span id="savingsTotalWithoutTaxModal3"></span>
																				</h5>
																			</div>
																		</div>
																		<hr>
																		<div class="row">
																			<div class="col-12 col-lg-6">
																				<h5>세전 이자</h5>
																			</div>
																			<div class="col-12 col-lg-6">
																				<h5>
																					<span id="savingsTotalBeforeTaxModal3"></span>
																				</h5>
																			</div>
																		</div>
																		<hr>
																		<div class="row">
																			<div class="col-12 col-lg-6">
																				<h5>이자 과세</h5>
																				(일반과세:15.4%)
																			</div>
																			<div class="col-12 col-lg-6">
																				<h5 class="mt-3">
																					<span id="taxAmountModal3"></span>
																				</h5>
																			</div>

																		</div>
																		<hr>
																		<div class="row">
																			<div class="col-12 col-lg-6">
																				<h5>세후 수령액</h5>
																			</div>
																			<div class="col-12 col-lg-6">
																				<h5>
																					<span id="resultAfterTaxModal3"
																						style="color: #ff328b;"></span>
																				</h5>
																			</div>
																		</div>
																		<!-- row  -->
																		<hr>
																	</div>
																</c:when>
																<c:otherwise>
																	<h2 class="mb-3 mt-5" style="color: #008080">01.
																		기본 금리 ${etcTermDepositVO.interestRate}%으로 이자 받기</h2>
																	<h5>
																		보유 자금 <span style="font-size: 25px; color: #ff328b"><fmt:formatNumber
																				value="${etcVO.etcExpence}" />원</span>을 <span
																			style="font-size: 25px; color: #ff328b">${etcMonthDiff }개월</span>
																		저축시 <span style="font-size: 25px; color: #ff328b"
																			id="termTaxModal3"></span>을 모을 수 있어요
																	</h5>
																	<button class="btn btn-primary" data-bs-toggle="modal"
																		style="width: 30%; margin: auto;"
																		data-bs-target="#calculatorModal2">예금 계산기</button>
																	<p>*예금 계산기로 다양한 수령액을 계산해보세요</p>

																	<div class="col-12 col-lg-1 mt-2 mb-2 "></div>
																	<div class="col-12 col-lg-4 mt-2 mb-2 ">
																		<img class="m-auto pt-3" alt=""
																			style="width: 100%; height: 100%;"
																			src="${pageContext.request.contextPath }/resources/img/illurstor/savings.jpg">
																	</div>


																	<div class="col-12 col-lg-6 m-auto">
																		<div class="row">
																			<hr class="mt-3">
																			<div class="col-12 col-lg-6">
																				<h5>원금 합계</h5>
																			</div>
																			<div class="col-12 col-lg-6">
																				<h5>
																					<span id="termTotalWithoutTaxModal3"></span>
																				</h5>
																			</div>
																		</div>
																		<hr>
																		<div class="row">
																			<div class="col-12 col-lg-6">
																				<h5>세전 이자</h5>
																			</div>
																			<div class="col-12 col-lg-6">
																				<h5>
																					<span id="termTotalBeforeTaxModal3"></span>
																				</h5>
																			</div>
																		</div>
																		<hr>
																		<div class="row">
																			<div class="col-12 col-lg-6">
																				<h5>이자 과세</h5>
																				(일반과세:15.4%)
																			</div>
																			<div class="col-12 col-lg-6">
																				<h5 class="mt-3">
																					<span id="termTaxAmountModal3"></span>
																				</h5>
																			</div>

																		</div>
																		<hr>
																		<div class="row">
																			<div class="col-12 col-lg-6">
																				<h5>세후 수령액</h5>
																			</div>
																			<div class="col-12 col-lg-6">
																				<h5>
																					<span id="termResultAfterTaxModal3"
																						style="color: #ff328b;"></span>
																				</h5>
																			</div>
																		</div>
																		<!-- row  -->
																		<hr>
																	</div>
																</c:otherwise>
															</c:choose>
															<div class="col-12 col-lg-1 mt-2 mb-2 "></div>
														</div>
														<!-- //row -->
													</div>
													<div class="modal-footer">

														<button type="button" class="btn btn-primay"
															id="closeModal1" data-bs-toggle="modal"
															data-bs-dismiss="modal">Close</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!--//솔루션2: 모달  -->



							<!-- 솔루션3 : 소비패턴  -->
							<div class="row g-3">
								<div class="col-12 col-lg-12">
									<div class="app-card app-card-chart shadow-sm"
										style="background-color: #E5F2F2;">
										<div class="app-card-body p-lg-4">
											<div class="row">
												<div class="col-12 col-lg-10" style="text-align: left;">
													<h4 class="pt-4" style="color: #004C4C">03. 월 여유자금 늘리기</h4>
													<h6 class="pb-4" style="color: grey">
														${loginVO.name }님의 <span style="color: #08a294">소비
															패턴을 분석하여</span> 월 여유자금을 늘릴 수 있는 방법을 알려드려요!
													</h6>
												</div>
												<div class="col-12 col-lg-2"
													style="text-align: center; padding-top: 30px;">
													<a data-bs-toggle="modal" data-bs-target="#modalSolution3">
														<i class='bx bx-chevron-right bx-lg bx-fade-right'></i>
													</a>
												</div>
											</div>
										</div>
										<!--//app-card-body-->
									</div>
									<!--//app-card-->
								</div>
							</div>
							<!--//솔루션3-->


							<!-- 솔루선3 : 모달 -->
							<div class="col-lg-4 col-md-3">
								<!-- Modal -->
								<div class="modal fade" id="modalSolution3" tabindex="-1"
									aria-hidden="true">
									<div class="modal-dialog modal-dialog-scrollable modal-xl"
										role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title text-primary text-center"
													id="modalScrollableTitle3">월 여유자금 늘리기</h5>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
												<div class="text-center mt-1">
													<div class="mb-3">
														<img alt=""
															src="${pageContext.request.contextPath}/resources/img/hanaTopLogo.png">
													</div>
													<div>
														<span style="font-weight: bold; font-size: 20px;">
															${loginVO.name }님의 8월 소비 TOP3 키워드는 <span
															class="badge bg-primary" style="font-size: 15px;"
															id="consumeTop0"></span>, <span class="badge bg-primary"
															style="font-size: 15px;" id="consumeTop1"></span>, <span
															class="badge bg-primary" style="font-size: 15px;"
															id="consumeTop2"></span> 입니다.
														</span>
													</div>


													<div class="row mt-3">
														<div class="col-12 col-lg-1"></div>
														<div class="col-12 col-lg-5 mb-5 p-3">
															<div class="chart-container"
																style="width: 80%; margin: auto; margin-bottom: 30px;">
																<canvas id="consumeChart" width="100px" height="100px"></canvas>
															</div>

														</div>
														<div class="col-12 col-lg-5">

															<!--table  -->
															<div class="table-responsive mt-5 pt-5">
																<table
																	class="table table-bordered table-hover table-sm text-center">
																	<thead class="table"
																		style="background-color: #b2d8d8; color: black">
																		<tr>
																			<th>구분</th>
																			<th>금액</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td>자산</td>
																			<td><fmt:formatNumber
																					value="${retireVO.allAsserts}" />원</td>
																		</tr>
																		<tr>
																			<td>부채</td>
																			<td><fmt:formatNumber
																					value="${retireVO.loanMoney }" />원</td>
																		</tr>
																		<tr>
																			<td>순자산</td>
																			<td><fmt:formatNumber
																					value="${retireVO.allAsserts-retireVO.loanMoney }" />원</td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<!-- //table -->


														</div>
														<div class="col-12 col-lg-1"></div>

														<div class="mb-2" style="text-align: center;">
															<i class='bx bx-lg bx-chevrons-down bx-fade-down'></i>
														</div>



														<div class="col-12 col-lg-12">
															<div class="p-3 mt-3 mb-3">
																<h2 class="mb-3 mt-5" style="color: #008080">${loginVO.name }님을위한
																	맞춤형 추천 카드</h2>
															</div>
														</div>
														<div class="col-12 col-lg-8" style="text-align: right;">
															<figure class="snip1200">
																<img
																	src="${pageContext.request.contextPath }/resources/img/card/tag1Orange.jpg" />
																<figcaption>
																	<p>당신을 위한 교통비 할인 카드</p>

																	<div class="heading">
																		<h2>
																			Tag1<span>Orange</span>
																		</h2>
																	</div>
																</figcaption>
																<a href="#"></a>
															</figure>

														</div>
														<div class="col-12 col-lg-4" style="text-align: left;">
															<div class="row">
																<div class="col-12 col-lg-12 mt-3 mb-3">
																	<h2>
																		Tag1<span>Orange</span>
																	</h2>
																</div>
																<div class="col-12 col-lg-12">
																	<div class="row">
																		<div class="col-12 col-lg-6" style="text-align: left;">
																			<button class="btn btn-primary">상세정보</button>
																		</div>
																		<div class="col-12 col-lg-6" style="text-align: left;">
																			<button class="btn btn-primary ">장바구니 담기</button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>




													<h2 class="mb-3 mt-5" style="color: #008080">01.
														${pensionVO.pensionName }으로 00 할인 혜택 받기</h2>
													<h5>
														총 연간 소득이 <span style="font-size: 25px; color: #ff328b">${income}만원</span>인
														구이경님은 연금저축보험으로
														<c:choose>
															<c:when test="${income le 5500 }">
																<span style="font-size: 25px; color: #ff328b">월
																	34만원</span> 납입 시,
																<span style="font-size: 25px; color: #ff328b">최대
																	66만원</span>
															</c:when>
															<c:when test="${income gt 5500 && income le 5500 }">
																<span style="font-size: 25px; color: #ff328b">월
																	34만원</span> 납입 시, 
																<span style="font-size: 25px; color: #ff328b">최대
																	52.8만원</span>
															</c:when>
															<c:when test="${income gt 5500 && income le 5500 }">
																<span style="font-size: 25px; color: #ff328b">월
																	25만원</span> 납입 시, 
																<span style="font-size: 25px; color: #ff328b">최대
																	39.6만원</span>
															</c:when>
														</c:choose>
														세금 절감을 할 수 있어요
													</h5>
													<p>*총 소득금액에 따라 세액공제율이 달라집니다.</p>

													<div class="col-12 col-lg-6  m-auto">
														<div
															class="app-card app-card-chart border border-primary h-100 shadow-sm">
															<div class="app-card-header p-3">
																<div
																	class="row justify-content-between align-items-center">
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
																<div class="chart-container"
																	style="width: 50%; margin: auto; margin-bottom: 30px;">
																	<canvas id="consumeChart" width="100px" height="100px"></canvas>
																</div>
																<!--table  -->
																<div class="table-responsive">
																	<table
																		class="table table-bordered table-hover table-sm text-center">
																		<thead class="table"
																			style="background-color: #b2d8d8; color: black">
																			<tr>
																				<th>구분</th>
																				<th>금액</th>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td>자산</td>
																				<td><fmt:formatNumber
																						value="${retireVO.allAsserts}" />원</td>
																			</tr>
																			<tr>
																				<td>부채</td>
																				<td><fmt:formatNumber
																						value="${retireVO.loanMoney }" />원</td>
																			</tr>
																			<tr>
																				<td>순자산</td>
																				<td><fmt:formatNumber
																						value="${retireVO.allAsserts-retireVO.loanMoney }" />원</td>
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
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-outline-secondary"
													data-bs-dismiss="modal">Close</button>
												<button type="button" class="btn btn-primary">Save
													changes</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--//솔루션3: 모달  -->


							<!-- 적금 계산기 모달 -->
							<div class="col-lg-4 col-md-3">
								<div class="modal fade" id="calculatorModal" aria-hidden="true"
									aria-labelledby="modalScrollableTitle4" tabindex="-1">
									<div class="modal-dialog modal-dialog-scrollable modal-xl">
										<div class="modal-content">
											<div class="modal-header">
												<h4 class="modal-title" id="modalScrollableTitle4"
													style="text-align: left; color: #08a294;">적금 계산기</h4>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
												<div class="text-center">
													<div class="row">

														<div
															class="col-12 col-lg-6 app-card border border-rounded app-card-chart shadow-lg p-3"
															style="margin-left: 45px; border-color: #E5F2F2;">
															<form id="calculator">
																<div class="row mt-5 text-primary">
																	<div class="col-12 col-lg-4 mb-1 mt-3">
																		<h5>월 적립액</h5>
																	</div>
																	<div class="col-12 col-lg-6 mb-2 mt-2"
																		style="text-align: right;">
																		<h5>
																			<input class="form-control text-right" type="text"
																				style="text-align: right;"
																				name="savingsMonthlyMoney" id="savingsMonthlyMoney"
																				onkeyup="inputNumberFormat(this)" />
																		</h5>
																	</div>
																	<div class="col-12 col-lg-2 mb-1 mt-3"
																		style="text-align: left;">
																		<h5>원</h5>
																	</div>
																	<div class="col-12 col-lg-4 mb-1 mt-3">
																		<h5>적금 기간</h5>
																	</div>
																	<div class="col-12 col-lg-6 mb-2 mt-2">
																		<h5>
																			<input class="form-control text-right" type="text"
																				style="text-align: right;" name="savingsPeriod"
																				id="savingsPeriod" />
																		</h5>
																	</div>
																	<div class="col-12 col-lg-2 mb-1 mt-3"
																		style="text-align: left;">
																		<h5>개월</h5>
																	</div>
																	<div class="col-12 col-lg-4 mb-1 mt-3">
																		<h5>연이자율</h5>
																	</div>
																	<div class="col-12 col-lg-6 mb-2 mt-2">
																		<h5>
																			<input class="form-control text-right" type="text"
																				style="text-align: right;"
																				name="savingsInterestRate" id="savingsInterestRate" />
																		</h5>
																	</div>
																	<div class="col-12 col-lg-2 mb-1 mt-3"></div>
																	<div class="col-12 col-lg-4 mb-1 mt-3">
																		<h5>이자과세</h5>
																	</div>
																	<div class="col-12 col-lg-6 mb-2 mt-2">
																		<h5>
																			<input class="form-control" type="text"
																				style="text-align: right;" name="savingsTax"
																				id="savingsTax" />
																		</h5>
																	</div>
																	<div class="col-12 col-lg-2 mb-1 mt-3"></div>
																	<div class="col-12 col-lg-12 mb-4 mt-4">
																		<input type="button" class="btn btn-secondary"
																			style="padding: 10px; 60px;" value="초기화"> <input
																			style="padding: 10px; 100px;" type="button"
																			class="btn btn-primary" onclick="calculator()"
																			value="계산하기">
																	</div>
																</div>
															</form>
														</div>
														<div
															class="col-12 col-lg-5 app-card border boerder-rounded  app-card-chart shadow-lg p-3"
															style="background-color: #E5F2F2; border-color: #E5F2F2; margin-right: 20px;">
															<div class="row mt-3">
																<div class="col-12 col-lg-4 mb-3 mt-3">
																	<h5>원금 합계</h5>
																</div>
																<div class="col-12 col-lg-6 mb-3 mt-3"
																	style="text-align: right;">
																	<h5 id="savingsTotalWithoutTax"></h5>
																</div>
																<div class="col-12 col-lg-2 mb-3 mt-3 text-left"></div>
																<div class="col-12 col-lg-4 mb-3 mt-3">
																	<h5>세전 이자</h5>
																</div>
																<div class="col-12 col-lg-6 mb-3 mt-3"
																	style="text-align: right;">
																	<h5 id="savingsTotalBeforeTax"></h5>
																</div>
																<div class="col-12 col-lg-2 mb-3 mt-3 text-left"></div>
																<div class="col-12 col-lg-4 mb-3 mt-3">
																	<h5>이자과세</h5>
																</div>
																<div class="col-12 col-lg-6 mb-3 mt-3"
																	style="text-align: right;">
																	<h5 id="taxAmount"></h5>
																</div>
																<div class="col-12 col-lg-2 mb-3 mt-3"></div>
																<div class="col-12 col-lg-4 mb-3 mt-3">
																	<h5>세후 수령액</h5>
																</div>
																<div class="col-12 col-lg-6 mb-3 mt-3"
																	style="text-align: right;">
																	<h5 id="resultAfterTax" style="color: #ff328b;"></h5>
																</div>
																<div class="col-12 col-lg-2 mb-3 mt-3"></div>

																<hr class="mt-4 mb-4">

																<div style="text-align: left;">
																	<p class="m-0 p-0">*월 단위로 계산된 이자이기 때문에 일단위로 계산되는
																		금융기관의 적금이자와 차이가 있을 수 있습니다.</p>
																	<p class="m-0 p-0">*정확한 이자 관련 내용은 가까운 영업점을 통해
																		문의해주시길 바랍니다.</p>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!--//body  -->
											<div class="modal-footer">
												<button class="btn btn-primary"
													data-bs-target="#modalSolution2" data-bs-toggle="modal"
													data-bs-dismiss="modal" id="closeModal2">돌아가기</button>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- 예금 계산기 모달 -->
							<div class="col-lg-4 col-md-3">
								<div class="modal fade" id="calculatorModal2" aria-hidden="true"
									aria-labelledby="modalScrollableTitle5" tabindex="-1">
									<div class="modal-dialog modal-dialog-scrollable modal-xl">
										<div class="modal-content">
											<div class="modal-header">
												<h4 class="modal-title" id="modalScrollableTitle5"
													style="text-align: left; color: #08a294;">예금 계산기</h4>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
												<div class="text-center">
													<div class="row">
														<div
															class="col-12 col-lg-6 app-card border border-rounded app-card-chart shadow-lg p-3"
															style="margin-left: 45px; border-color: #E5F2F2;">
															<form id="calculator">
																<div class="row mt-5 text-primary">
																	<div class="col-12 col-lg-4 mb-1 mt-3">
																		<h5>예치금액</h5>
																	</div>
																	<div class="col-12 col-lg-6 mb-2 mt-2"
																		style="text-align: right;">
																		<h5>
																			<input class="form-control text-right" type="text"
																				style="text-align: right;"
																				name="termDepositMoneyInput"
																				id="termDepositMoneyInput"
																				onkeyup="inputNumberFormat(this)" />
																		</h5>
																	</div>
																	<div class="col-12 col-lg-2 mb-1 mt-3"
																		style="text-align: left;">
																		<h5>원</h5>
																	</div>
																	<div class="col-12 col-lg-4 mb-1 mt-3">
																		<h5>적금 기간</h5>
																	</div>
																	<div class="col-12 col-lg-6 mb-2 mt-2">
																		<h5>
																			<input class="form-control text-right" type="text"
																				style="text-align: right;"
																				name="termDepositPeriodInput"
																				id="termDepositPeriodInput" />
																		</h5>
																	</div>
																	<div class="col-12 col-lg-2 mb-1 mt-3"
																		style="text-align: left;">
																		<h5>개월</h5>
																	</div>
																	<div class="col-12 col-lg-4 mb-1 mt-3">
																		<h5>연이자율</h5>
																	</div>
																	<div class="col-12 col-lg-6 mb-2 mt-2">
																		<h5>
																			<input class="form-control text-right" type="text"
																				style="text-align: right;"
																				name="termDepositInterestRateInput"
																				id="termDepositInterestRateInput" />
																		</h5>
																	</div>
																	<div class="col-12 col-lg-2 mb-1 mt-3"></div>
																	<div class="col-12 col-lg-4 mb-1 mt-3">
																		<h5>이자과세</h5>
																	</div>
																	<div class="col-12 col-lg-6 mb-2 mt-2">
																		<h5>
																			<input class="form-control" type="text"
																				style="text-align: right;"
																				name="termDepositTaxInput" id="termDepositTaxInput" />
																		</h5>
																	</div>
																	<div class="col-12 col-lg-2 mb-1 mt-3"></div>
																	<div class="col-12 col-lg-12 mb-4 mt-4">
																		<input type="button" class="btn btn-secondary"
																			style="padding: 10px; 60px;" value="초기화"> <input
																			style="padding: 10px; 100px;" type="button"
																			class="btn btn-primary" onclick="calculator2()"
																			value="계산하기">
																	</div>
																</div>
															</form>
														</div>
														<div
															class="col-12 col-lg-5 app-card border boerder-rounded  app-card-chart shadow-lg p-3"
															style="background-color: #E5F2F2; border-color: #E5F2F2; margin-right: 20px;">
															<div class="row mt-3">
																<div class="col-12 col-lg-4 mb-3 mt-3">
																	<h5>원금 합계</h5>
																</div>
																<div class="col-12 col-lg-6 mb-3 mt-3"
																	style="text-align: right;">
																	<h5 id="termDepositMoney"></h5>
																</div>
																<div class="col-12 col-lg-2 mb-3 mt-3 text-left"></div>
																<div class="col-12 col-lg-4 mb-3 mt-3">
																	<h5>세전 이자</h5>
																</div>
																<div class="col-12 col-lg-6 mb-3 mt-3"
																	style="text-align: right;">
																	<h5 id="termDepositResultBeforeTax"></h5>
																</div>
																<div class="col-12 col-lg-2 mb-3 mt-3 text-left"></div>
																<div class="col-12 col-lg-4 mb-3 mt-3">
																	<h5>이자과세</h5>
																</div>
																<div class="col-12 col-lg-6 mb-3 mt-3"
																	style="text-align: right;">
																	<h5 id="termDepositTaxAmount"></h5>
																</div>
																<div class="col-12 col-lg-2 mb-3 mt-3"></div>
																<div class="col-12 col-lg-4 mb-3 mt-3">
																	<h5>세후 수령액</h5>
																</div>
																<div class="col-12 col-lg-6 mb-3 mt-3"
																	style="text-align: right;">
																	<h5 id="termDepositResultAfterTax"
																		style="color: #ff328b;"></h5>
																</div>
																<div class="col-12 col-lg-2 mb-3 mt-3"></div>

																<hr class="mt-4 mb-4">

																<div style="text-align: left;">
																	<p class="m-0 p-0">*월 단위로 계산된 이자이기 때문에 일단위로 계산되는
																		금융기관의 적금이자와 차이가 있을 수 있습니다.</p>
																	<p class="m-0 p-0">*정확한 이자 관련 내용은 가까운 영업점을 통해
																		문의해주시길 바랍니다.</p>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!--//body  -->
											<div class="modal-footer">
												<button class="btn btn-primary"
													data-bs-target="#modalSolution2" data-bs-toggle="modal"
													data-bs-dismiss="modal" id="closeModal3">돌아가기</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


					<div class="row g-4">
						<div class="col-12 col-lg-12">
							<div class="row m-0">
								<div class="col-12 mt-5 text-center">
									<h4 class="mt-5">
										같이 쓰고 <span style="color: #ff328b">혜택도 같이!</span>
									</h4>
									<h2 class="text-primary">
										<i class='bx bx-cart-download'></i>내가 찜한 상품 조합하고 혜택 비교하기
									</h2>
								</div>
								<!--//col-->
							</div>
							<!--//row-->
						</div>
						<!--//col-->
					</div>
					<!--//row-->
					<!-- 재무계획 연혁표 끝  -->


					<!-- stock type select tab -->
					<div class="row g-4 mb-2">
						<div class="col-12 col-lg-12">
							<!-- <div class="app-card app-card-chart shadow-sm"> -->
							<div class="p-3 p-lg-4">
								<div style="text-align: center;">
									<div class="row mt-n2">
										<div class="col-12 text-center mt-3">
											<div class="row">
												<ul id="productCart" class="nav nav-pills mb-3 nav-fill"
													role="tablist">

												</ul>
												<form>
													<div class="table-responsive">
														<table class="table text-black" id="productTable">
															<thead class="bg-primary text-white">
																<tr>
																	<td style="width: 25%">선택</td>
																	<td style="width: 25%">상품구분</td>
																	<td style="width: 25%">상품명</td>
																	<td style="width: 25%">메뉴</td>
																</tr>
															</thead>
															<tbody></tbody>
														</table>
													</div>

													<input class="mt-5 pl-2 pr-2 btn btn-primary" type="button"
														value="조합 확인하기" id="productTableBtn">
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--//app-card-body-->
							<!-- </div> -->
							<!--//app-card-->
						</div>

					</div>
					<!-- //account type select tab  -->


					<!-- <div class="card border-primary pt-5 pb-5 mt-5 mb-5" id="productDiv" style="display: none;"></div> -->
					<!-- 재무계획  -->
					<div class="row g-4 mb-4" id="productBenefit"
						style="display: none;">
						<div class="col-12 col-lg-12 text-center">

							<div class="mb-5" style="text-align: center;">
								<i class='bx bx-lg bx-chevrons-down bx-fade-down'></i>
							</div>
							<h2 class="wow bounceInDown" data-wow-delay="0.1s">${loginVO.name }님의
								연간 총 혜택은 <span id="totalBenefit" style="color: #ff328b;"></span>으로
								예상됩니다
							</h2>
							<p class="wow bounceInDown" data-wow-delay="0.1s">*실제 혜택 내용과
								차이가 있을 수 있습니다.</p>

							<div class="row">
								<div class="col-12 col-lg-1 mt-3"></div>
								<div class="col-12 col-lg-4 mt-3">
									<div class="card card-circle"
										style="display: inline-block; background-color: #E5F2F2; width: 350px; height: 350px; border-radius: 50%;">
										<div class="card-body mt-5">
											<h4 class="card-title mt-5">
												<span id="product1Name" style="color: #08a294;"></span>으로
											</h4>
											<h5 class="card-text" id="product1Benefit"></h5>
										</div>
									</div>
								</div>
								<div class="col-12 col-lg-2 p-0 text-center mt-3"
									style="display: flex; align-items: center; justify-content: center;">
									<i class='bx bx-lg bx-plus-medical'></i>
								</div>
								<div class="col-12 col-lg-4  mt-3">
									<div class="card card-circle"
										style="display: inline-block; background-color: #E5F2F2; width: 350px; height: 350px; border-radius: 50%;">
										<div class="card-body mt-5">
											<h4 class="card-title mt-5">
												<span id="product2Name" style="color: #08a294;"></span>으로
											</h4>
											<h5 class="card-text" id="product2Benefit"></h5>
										</div>
									</div>
								</div>
								<div class="col-12 col-lg-1 mt-3"></div>
								<div class="col-12 col-lg-6 text-center mt-1">
									<div class="m-3">
										<button class="btn btn-primary" type="button"
											data-bs-toggle="modal" data-bs-target="#basicModal1">혜택
											상세보기</button>



										<div class="modal fade" id="basicModal1" tabindex="-1"
											aria-hidden="true">
											<div class="modal-dialog modal-lg modal-dialog-scrollable"
												role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalLabel1">금융상품
															혜택1</h5>
														<button type="button" class="btn-close"
															data-bs-dismiss="modal" aria-label="Close"></button>
													</div>
													<div class="modal-body">
														<div id="benefitDetail1"></div>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-outline-secondary"
															data-bs-dismiss="modal">Close</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="col-12 col-lg-6 text-center mt-1">
									<div class="mt-3">
										<button class="btn btn-primary" type="button"
											data-bs-toggle="modal" data-bs-target="#basicModal">혜택
											상세보기</button>

										<div class="modal fade" id="basicModal" tabindex="-1"
											aria-hidden="true">
											<div class="modal-dialog modal-lg modal-dialog-scrollable"
												role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalLabel1">금융상품
															혜택2</h5>
														<button type="button" class="btn-close"
															data-bs-dismiss="modal" aria-label="Close"></button>
													</div>
													<div class="modal-body">
														<div id="benefitDetail2"></div>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-outline-secondary"
															data-bs-dismiss="modal">Close</button>
													</div>
												</div>
											</div>
										</div>

									</div>
								</div>
								<div class="col-12 col-lg-2 text-center mt-5"
									style="display: flex; align-items: center; justify-content: center;">

								</div>
								<div class="col-12 col-lg-5 text-center mt-5"></div>
							</div>

							<!-- </div>
								//app-card-body
							</div> -->
							<!--//app-card-->
						</div>
						<!--//col-->
					</div>
					<!--//row-->
					<!-- 재무계획 연혁표 끝  -->

					<div class="pt-5 pb-5"></div>
				</div>
				<!--//app-card-->
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/jsp/include/script.jsp" />
	<script type="text/javascript">
		function calculator(){
				var savingsMonthlyMoney = $("#savingsMonthlyMoney").val();
				savingsMonthlyMoney = uncomma(savingsMonthlyMoney)*1;
				
				//console.log(savingsMonthlyMoney);
				
				var savingsPeriod = $("#savingsPeriod").val();
				var savingsInterestRate = $("#savingsInterestRate").val();
				var savingsTax = $("#savingsTax").val();
				
				//세전
				var resultBeforeTax = savingsMonthlyMoney * (savingsInterestRate/100) * (Number(savingsPeriod)+1)* (savingsPeriod/2)/12  
				console.log(resultBeforeTax);
				
				var taxAmount = resultBeforeTax*(savingsTax/100);
				
				
				//원금 합계
				var savingsTotalWithoutTax = savingsMonthlyMoney * savingsPeriod;
				
				//세후
				var resultAfterTax =  savingsTotalWithoutTax + resultBeforeTax - taxAmount;
				
				
				resultBeforeTax = Math.round(resultBeforeTax);
				taxAmount = Math.round(taxAmount);
				savingsTotalWithoutTax = Math.round(savingsTotalWithoutTax);
				resultAfterTax = Math.round(resultAfterTax);
				
				resultBeforeTax = resultBeforeTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				taxAmount = taxAmount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				savingsTotalWithoutTax = savingsTotalWithoutTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				resultAfterTax = resultAfterTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				
				//원금합계
				$("#savingsTotalWithoutTax").text(savingsTotalWithoutTax+' 원');
				//세전이자
				$("#savingsTotalBeforeTax").text(resultBeforeTax+' 원');
				//이자과세
				$("#taxAmount").text('-'+taxAmount+' 원');
				//세후 수령액
				$("#resultAfterTax").text(resultAfterTax+' 원');

		};
		
		function calculator2(){
				//원금
				var termDepositMoney = $("#termDepositMoneyInput").val();
				termDepositMoney = uncomma(termDepositMoney)*1;
			
				//기간
				var termDepositPeriod = $("#termDepositPeriodInput").val();
				//금리
				var termDepositInterestRate = $("#termDepositInterestRateInput").val();
				//세금
				var termDepositTax = $("#termDepositTaxInput").val();
				
				//원금 합계 termDepositMoney;
				//세전
				var termDepositResultBeforeTax = termDepositMoney * (termDepositInterestRate/100);
				//이자과세
				var termDepositTaxAmount = termDepositResultBeforeTax * (termDepositTax/100);
				//세후
				var resultAfterTax =  termDepositMoney + termDepositResultBeforeTax - termDepositTaxAmount;
				
				
				termDepositMoney = Math.round(termDepositMoney);
				termDepositResultBeforeTax = Math.round(termDepositResultBeforeTax);
				termDepositTaxAmount = Math.round(termDepositTaxAmount);
				resultAfterTax = Math.round(resultAfterTax);
				
				resultAfterTax = resultAfterTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				termDepositTaxAmount = termDepositTaxAmount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				termDepositResultBeforeTax = termDepositResultBeforeTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				termDepositMoney = termDepositMoney.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				
				//원금합계
				$("#termDepositMoney").text(termDepositMoney+' 원');
				//세전이자
				$("#termDepositResultBeforeTax").text(termDepositResultBeforeTax+' 원');
				//이자과세
				$("#termDepositTaxAmount").text('-'+termDepositTaxAmount+' 원');
				//세후 수령액
				$("#termDepositResultAfterTax").text(resultAfterTax+' 원');

		};
	</script>
	<script type="text/javascript">
		$("#depositBtn1").on("click", function() {
			$('#productResult1').hide();
			$('#productResult1').show();
		});
		
		$("#closeModal1").on("click", function() {
			$('.modal-backdrop').remove();
			$('#modalSolution2').hide();
		});
		$("#closeModal2").on("click", function() {
			$('#calculatorModal').hide();
			
		});
		$("#closeModal3").on("click", function() {
			$('#calculatorModal2').hide();
			
		});

		
		$("#productTableBtn").on("click",function() {
			/* var offset = $("#productBenefit").offset();
			$('html, body').animate({scrollTop : offset.top},400); */
			
			$('#productDiv').hide();
			$('#productDiv').show();
			$('#productBenefit').hide();
			$('#productBenefit').show();
			
			console.log($('#pension').is(":checked"));
			
			
			var items = [];
			$('input:checkbox[type=checkbox]:checked').each(function () {
			    items.push($(this).val());
			});
			
			console.log(items[0])
			console.log(items[1])
			
			var str = "";
			str += '<div class="row">';		
			
			var benefit1='';
			var benefit2='';
			
			//혜택 조합 상품1
			if(items[0] === 'pension') {
				
				var pensionName = '<c:out value="${pensionVO.pensionName}"/>';
				$('#product1Name').text(pensionName);
				
				var income ='<c:out value="${income}"/>'
				
					if(income <= 5500 ){
						 benefit1=66;	
						 //세액공제율
						 taxRate = 16.5;
						 annualLimit = 400;
						 monthLimit = 34;
						
					}
					else if(income > 5500 && income <= 12000){
						 benefit1=52.8;
					}
					else if(income > 12000 ){
						benefit1 = 39.6;
					}
				
				
				$('#product1Benefit').html('<h1>연간 최대 <span style="color:#ff328b;">'+benefit1+'</span>만원</h1>세금 환급 받기');


				var str ='';
				str +='<h3 class="text-primary">'+pensionName+'</h3>';
				str +='<img style="width: 50%; height: 50%;" src="${pageContext.request.contextPath }/resources/img/illurstor/houseSavings.jpg">';
				str += '<h5>연 소득이 <span style="color:#ff328b;">'+income+'만원</span>인 ${loginVO.name}님은</h5>'
				str += '<h5 class="text-primary">연 최대 약'+ benefit1 +'만원의</h5>'
				str += '<h5>이자 혜택을 받을 수 있습니다.</h5>';
				str +='<div class="row"><hr class="mt-3">'
				str +='<div class="col-12 col-lg-6 my-3"><h5>소득금액</h5>(일반과세:15.4%)</div>'
				str +='<div class="col-12 col-lg-6 my-3"><h5>연간 '+annualLimit+'만원 한도 <br> <span class="text-primary">(월 '+monthLimit+'만원)</span></h5></div>'
				str +='<hr><div class="col-12 col-lg-6 my-3"><h5>세액공제율</h5></div>'
				str +='<div class="col-12 col-lg-6 my-3"><h5>'+taxRate+'%</h5></div>'
				str +='<hr><div class="col-12 col-lg-6 my-3"><h6 style="color:#ff328b;">연말정산 세액공제</h5></div>'
				str +='<div class="col-12 col-lg-6 my-3"><h6 style="color:#ff328b;"> 최대 환급 금액'+benefit1+'만원</h5></div>'
				str +='</div><hr>'
				
				$('#benefitDetail1').append(str);
			
			}
			else if(items[0] === 'marriageSavings' || items[0] === 'houseSavings' || items[0] === 'etcSavings'
			        || items[0] === 'marriageTermDeposit' || items[0] === 'houseTermDeposit' || items[0] === 'etcTermDeposit'		
			) {
			
				var productName = '';
				var productInterestRate='';
				var termDepositMoney ='';
				
				if(items[0] === 'marriageSavings'){
					productName = '<c:out value="${marriageSavingsVO.productName}"/>';
					productInterestRate = '<c:out value="${marriageSavingsVO.interestRate}"/>'*1;
				} else if(items[0] === 'houseSavings'){
					productName = '<c:out value="${houseSavingsVO.productName}"/>';
					productInterestRate = '<c:out value="${houseSavingsVO.interestRate}"/>'*1;
				} else if(items[0] === 'etcSavings'){
					productName = '<c:out value="${etcSavingsVO.productName}"/>';
					productInterestRate = '<c:out value="${etcSavingsVO.interestRate}"/>'*1;
				} else if(items[0] === 'marriageTermDeposit'){
					productName = '<c:out value="${marriageTermDepositVO.productName}"/>';
					productInterestRate = '<c:out value="${marriageTermDepositVO.interestRate}"/>'*1;
					termDepositMoney = '<c:out value="${marriageVO.marriageExpence}"/>'*1;
				} else if(items[0] === 'houseTermDeposit'){
					productName = '<c:out value="${houseTermDepositVO.productName}"/>';
					productInterestRate = '<c:out value="${houseTermDepositVO.interestRate}"/>'*1;
					termDepositMoney = '<c:out value="${houseVO.houseExpence}"/>'*1;
				} else if(items[0] === 'etcTermDeposit'){
					productName = '<c:out value="${etcTermDepositVO.productName}"/>';
					productInterestRate = '<c:out value="${etcTermDepositVO.interestRate}"/>'*1;
					termDepositMoney = '<c:out value="${etcVO.etcExpence}"/>'*1;
				}
				
				//월 저축액
				var savingsMonthlyMoney='<c:out value="${spareMoney}"/>'*10000;
				var savingsPeriod = 12*1;
				var savingsTax=15.4*1;
				
				var benefit1='';
				var resultBeforeTax='';
				var taxAmount='';
				var savingsMoney='';
				
				if(items[0] === 'marriageSavings' || items[0] === 'houseSavings' || items[0] === 'etcSavings'){
					resultBeforeTax = savingsMonthlyMoney * (productInterestRate/100) * (Number(savingsPeriod)+1)* (savingsPeriod/2)/12  
					console.log('resultBeforeTax:'+resultBeforeTax);
					taxAmount = resultBeforeTax*(savingsTax/100);
					console.log('taxAmount:'+taxAmount);
					resultBeforeTax = Math.round(resultBeforeTax);
					taxAmount = Math.round(taxAmount);
					benefitWon1 =Math.round((resultBeforeTax-taxAmount));
					benefit1 =Math.round((resultBeforeTax-taxAmount)/10000);
					savingsMoney = savingsMonthlyMoney*12;
					expectedMoney1 = savingsMoney + resultBeforeTax - taxAmount;
					
					expectedMoney1 = expectedMoney1.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					savingsMoney = savingsMoney.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					resultBeforeTax = resultBeforeTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				
				} else {
					
					var termDepositResultBeforeTax =Math.round(termDepositMoney * (productInterestRate/100));
					//이자과세
					taxAmount= Math.round(termDepositResultBeforeTax * (savingsTax/100));
					
					expectedMoney1 = termDepositMoney + termDepositResultBeforeTax - taxAmount;
					
					benefitWon1 =Math.round((termDepositResultBeforeTax-taxAmount));
					benefit1 =Math.round((termDepositResultBeforeTax-taxAmount)/10000);
					termDepositMoney = termDepositMoney.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					termDepositResultBeforeTax = termDepositResultBeforeTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					expectedMoney1 = expectedMoney1.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				
				}
					
					benefit1 = benefit1.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					benefitWon1 = benefitWon1.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					taxAmount = taxAmount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					
				$('#product1Name').text(productName);
				$('#product1Benefit').html('<h1>연간 <span style="color:#ff328b;">'+benefit1+'</span>만원</h1>이자 혜택 받기');
				
				
				var str ='';
				str +='<h3 class="text-primary">'+productName+'</h3>';
				str +='<img style="width: 50%; height: 50%;" src="${pageContext.request.contextPath }/resources/img/illurstor/houseSavings.jpg">';
				str += '<h6>금리 <span style="color:#ff328b;">'+productInterestRate+'%</span>로 상품 가입시 <span style="color:#ff328b;">연 약'+ benefit1 +'만원</span>의</h6>'
				str += '<h6>이자 혜택을 받을 수 있습니다.</h6>';
				str += '<p>일반 과세 15.4% 적용 기준<p>'
				str +='<div class="row"><hr class="mt-3">'
				if(items[0] === 'marriageSavings' || items[0] === 'houseSavings' || items[0] === 'etcSavings'){
				str +='<div class="col-12 col-lg-6"><h6>원금 합계</h6></div>'
				str +='<div class="col-12 col-lg-6"><h6>'+savingsMoney+'원</h6></div>'
				str +='<hr><div class="col-12 col-lg-6"><h6>세전 이자</h6></div>'
				str +='<div class="col-12 col-lg-6"><h6>'+resultBeforeTax+'원</h6></div>'
				} else {
					str +='<div class="col-12 col-lg-6"><h6>원금 합계</h6></div>'
					str +='<div class="col-12 col-lg-6"><h6>'+termDepositMoney+'원</h6></div>'
					str +='<hr><div class="col-12 col-lg-6"><h6>세전 이자</h6></div>'
					str +='<div class="col-12 col-lg-6"><h6>'+termDepositResultBeforeTax+'원</h6></div>'
				}
				str +='<hr><div class="col-12 col-lg-6"><h6>이자 과세</h6>(일반과세:15.4%)</div>'
				str +='<div class="col-12 col-lg-6"><h6 class="mt-3">'+taxAmount+'원</h6></div>'
				str +='<hr><div class="col-12 col-lg-6"><h6>예상 세후 수령액</h6></div>'
				str +='<div class="col-12 col-lg-6"><h6>'+expectedMoney1+'원</h6></div>'
				str +='<hr><div class="col-12 col-lg-6"><h6 style="color:#ff328b;">이자 혜택</h6></div>'
				str +='<div class="col-12 col-lg-6"><h6 style="color:#ff328b;">'+benefitWon1+'원</h6></div>'
				str +='</div><hr>'
				<!-- row  -->
		
				 $('#benefitDetail1').append(str);
			} 
	
			else if(items[0] === 'card') {
				str += '<div class="col-12 col-lg-5" style="text-align:center;">';		
				str += '<div>카드</div>';		
				str += '<div>카드</div>';		
				str += '</div>';
			}
							
			str += '<div class="col-12 col-lg-2" style="text-align:center;">';		
			str += "<i class='bx bx-lg bx-plus-medical'></i>"
			str += '</div>';
			
			
			//두번쨰 조합 상품
			if(items[1] === 'pension') {
				
				var pensionName = '<c:out value="${pensionVO.pensionName}"/>';
				$('#product2Name').text(pensionName);
				
				var income ='<c:out value="${income}"/>'
				
				if(income <= 5500 ){
					 benefit2=66;	
					 //세액공제율
					 taxRate = 16.5;
					 annualLimit = 400;
					 monthLimit = 34;
				}
				else if(income > 5500 && income <= 12000){
					 benefit2=52.8;
				}
				else if(income > 12000 ){
					benefit2 = 39.6;
				}
				
				
				$('#product2Benefit').html('<h1>연간 최대 <span style="color:#ff328b;">'+benefit2+'</span>만원</h1>세금 환급 받기');
				//$('#product1Name').html(${pensionVO.pensionName});
				
				
				
				var str ='';
				str +='<h3 class="text-primary">'+pensionName+'</h3>';
				str +='<img style="width: 50%; height: 50%;" src="${pageContext.request.contextPath }/resources/img/illurstor/houseSavings.jpg">';
				str += '<h5>연 소득이 <span style="color:#ff328b;">'+income+'만원</span>인 ${loginVO.name}님은</h5>'
				str += '<h5 class="text-primary">연 최대 약'+ benefit2 +'만원의</h5>'
				str += '<h5>이자 혜택을 받을 수 있습니다.</h5>';
				str +='<div class="row"><hr class="mt-3">'
				str +='<div class="col-12 col-lg-6 my-3"><h5>소득금액</h5>(일반과세:15.4%)</div>'
				str +='<div class="col-12 col-lg-6 my-3"><h5>연간 '+annualLimit+'만원 한도 <br> <span class="text-primary">(월 '+monthLimit+'만원)</span></h5></div>'
				str +='<hr><div class="col-12 col-lg-6 my-3"><h5>세액공제율</h5></div>'
				str +='<div class="col-12 col-lg-6 my-3"><h5>'+taxRate+'%</h5></div>'
				str +='<hr><div class="col-12 col-lg-6 my-3"><h6 style="color:#ff328b;">연말정산 세액공제</h5></div>'
				str +='<div class="col-12 col-lg-6 my-3"><h6 style="color:#ff328b;"> 최대 환급 금액'+benefit2+'만원</h5></div>'
				str +='</div><hr>'
				<!-- row  -->
		
				 $('#benefitDetail2').append(str);
				
				
				
				
			}
			else if(items[1] === 'marriageSavings' || items[1] === 'houseSavings' || items[1] === 'etcSavings'
				|| items[1] === 'marriageTermDeposit' || items[1] === 'houseTermDeposit' || items[1] === 'etcTermDeposit'		
			) {
				var productName = '';
				var productInterestRate='';
				var termDepositMoney ='';
				
				if(items[1] === 'marriageSavings'){
					productName = '<c:out value="${marriageSavingsVO.productName}"/>';
					productInterestRate = '<c:out value="${marriageSavingsVO.interestRate}"/>'*1;
				} else if(items[1] === 'houseSavings'){
					productName = '<c:out value="${houseSavingsVO.productName}"/>';
					productInterestRate = '<c:out value="${houseSavingsVO.interestRate}"/>'*1;
				} else if(items[1] === 'etcSavings'){
					productName = '<c:out value="${etcSavingsVO.productName}"/>';
					productInterestRate = '<c:out value="${etcSavingsVO.interestRate}"/>'*1;
				} else if(items[1] === 'marriageTermDeposit'){
					productName = '<c:out value="${marriageTermDepositVO.productName}"/>';
					productInterestRate = '<c:out value="${marriageTermDepositVO.interestRate}"/>'*1;
					termDepositMoney = '<c:out value="${marriageVO.marriageExpence}"/>'*1;
				} else if(items[1] === 'houseTermDeposit'){
					productName = '<c:out value="${houseTermDepositVO.productName}"/>';
					productInterestRate = '<c:out value="${houseTermDepositVO.interestRate}"/>'*1;
					termDepositMoney = '<c:out value="${houseVO.houseExpence}"/>'*1;
				} else if(items[1] === 'etcTermDeposit'){
					productName = '<c:out value="${etcTermDepositVO.productName}"/>';
					productInterestRate = '<c:out value="${etcTermDepositVO.interestRate}"/>'*1;
					termDepositMoney = '<c:out value="${etcVO.etcExpence}"/>'*1;
				}
				
				//월 저축액
				var savingsMonthlyMoney='<c:out value="${spareMoney}"/>'*10000;
				var savingsPeriod = 12*1;
				var savingsTax=15.4*1;
				
				var benefit2='';
				var resultBeforeTax='';
				var taxAmount='';
				var savingsMoney='';
				var expectedMoney2='';
				
				if(items[1] === 'marriageSavings' || items[1] === 'houseSavings' || items[1] === 'etcSavings'){
					resultBeforeTax = savingsMonthlyMoney * (productInterestRate/100) * (Number(savingsPeriod)+1)* (savingsPeriod/2)/12  
					console.log('resultBeforeTax:'+resultBeforeTax);
					taxAmount = resultBeforeTax*(savingsTax/100);
					console.log('taxAmount:'+taxAmount);
					resultBeforeTax = Math.round(resultBeforeTax);
					taxAmount = Math.round(taxAmount);
					benefitWon2 =Math.round((resultBeforeTax-taxAmount));
					benefit2 =Math.round((resultBeforeTax-taxAmount)/10000);
					savingsMoney = savingsMonthlyMoney*12;
					expectedMoney2 = savingsMoney + resultBeforeTax - taxAmount;
					
					expectedMoney2 = expectedMoney2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					savingsMoney = savingsMoney.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					resultBeforeTax = resultBeforeTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				
				} else {
					
					var termDepositResultBeforeTax =Math.round(termDepositMoney * (productInterestRate/100));
					//이자과세
					taxAmount= Math.round(termDepositResultBeforeTax * (savingsTax/100));
					
					expectedMoney2 = termDepositMoney + termDepositResultBeforeTax - taxAmount;
					
					benefitWon2 =Math.round((termDepositResultBeforeTax-taxAmount));
					benefit2 =Math.round((termDepositResultBeforeTax-taxAmount)/10000);
					termDepositMoney = termDepositMoney.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					termDepositResultBeforeTax = termDepositResultBeforeTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					expectedMoney2 = expectedMoney2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				
				}
					
					benefit2 = benefit2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					benefitWon2 = benefitWon2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					taxAmount = taxAmount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				
				
				$('#product2Name').text(productName);
				$('#product2Benefit').html('<h1>연간 <span style="color:#ff328b;">'+benefit2+'</span>만원</h1>이자 혜택 받기');
			
				var str ='';
				str +='<h3 class="text-primary">'+productName+'</h3>';
				str +='<img style="width: 50%; height: 50%;" src="${pageContext.request.contextPath }/resources/img/illurstor/houseSavings.jpg">';
				str += '<h6>금리 <span style="color:#ff328b;">'+productInterestRate+'%</span>로 상품 가입시 <span style="color:#ff328b;">연 약'+ benefit1 +'만원</span>의</h6>'
				str += '<h6>이자 혜택을 받을 수 있습니다.</h6>';
				str += '<p>일반 과세 15.4% 적용 기준<p>'
				str +='<div class="row"><hr class="mt-3">'
				if(items[1] === 'marriageSavings' || items[1] === 'houseSavings' || items[1] === 'etcSavings'){
				str +='<div class="col-12 col-lg-6"><h6>원금 합계</h6></div>'
				str +='<div class="col-12 col-lg-6"><h6>'+savingsMoney+'원</h6></div>'
				str +='<hr><div class="col-12 col-lg-6"><h6>세전 이자</h6></div>'
				str +='<div class="col-12 col-lg-6"><h6>'+resultBeforeTax+'원</h6></div>'
				} else {
					str +='<div class="col-12 col-lg-6"><h6>원금 합계</h6></div>'
					str +='<div class="col-12 col-lg-6"><h6>'+termDepositMoney+'원</h6></div>'
					str +='<hr><div class="col-12 col-lg-6"><h6>세전 이자</h6></div>'
					str +='<div class="col-12 col-lg-6"><h6>'+termDepositResultBeforeTax+'원</h6></div>'
				}
				str +='<hr><div class="col-12 col-lg-6"><h6>이자 과세</h6>(일반과세:15.4%)</div>'
				str +='<div class="col-12 col-lg-6"><h6 class="mt-3">'+taxAmount+'원</h6></div>'
				str +='<hr><div class="col-12 col-lg-6"><h6>예상 세후 수령액</h6></div>'
				str +='<div class="col-12 col-lg-6"><h6>'+expectedMoney2+'원</h6></div>'
				str +='<hr><div class="col-12 col-lg-6"><h6 style="color:#ff328b;">이자 혜택</h6></div>'
				str +='<div class="col-12 col-lg-6"><h6 style="color:#ff328b;">'+benefitWon2+'원</h6></div>'
				str +='</div><hr>'
				<!-- row  -->
		
				 $('#benefitDetail2').append(str);
			
			}
			
			else if(items[1] === 'card') {
				str += '<div class="col-12 col-lg-5" style="text-align:center;">';		
				str += '<div>카드</div>';		
				str += '<div>카드</div>';		
				str += '</div>';
			}
				
			var benefit = (benefit1*1)+(benefit2*1);
			$('#totalBenefit').html(benefit+'만원');
			
	   });

		$("#pensionBtn1").on("click", function() {
			$('#productResult1').hide();
			$('#productResult1').show();
		});
		$("#cardBtn1").on("click", function() {
			$('#productResult1').hide();
			$('#productResult1').show();
		});

		$("#depositBtn2").on("click", function() {
			$('#productResult2').hide();
			$('#productResult2').show();
		});
		$("#savingsBtn2").on("click", function() {
			$('#productResult2').hide();
			$('#productResult2').show();
		});
		$("#pensionBtn2").on("click", function() {
			$('#productResult2').hide();
			$('#productResult2').show();
		});
		$("#cardBtn2").on("click", function() {
			$('#productResult2').hide();
			$('#productResult2').show();
		});

		/* 노후 자금 장바구니 버튼 */
		$("#pensionInsertBtn")
				.on(
						"click",
						function() {
							swal('장바구니 추가 완료!');

							$('#productTable > tbody:last').append('<tr><td> <input class="form-check-input" type="checkbox" value="pension" id="pension"></td><td>연금저축형보험</td><td>${pensionVO.pensionName}</td><td><button class="btn btn-primary" style="margin-right:10px;">상세정보</button><button class="btn btn-primary ml-3 mr-3">가입하기</button></td></tr>')
							
						});
		
		
		/* 주택 자금 장바구니 버튼 */
		$("#houseSavingsInsertBtn").on("click",function() {
							var productNo = '<c:out value="${houseSavingsVO.productNo}"/>'
							swal('장바구니 추가 완료!');
							$('#productTable > tbody:last').append('<tr><td> <input class="form-check-input" type="checkbox" value="houseSavings" id="houseSavings"></td><td>적금</td><td>${houseSavingsVO.productName}</td><td><button class="btn btn-primary" style="margin-right:10px;">상세정보</button><a href="${pageContext.request.contextPath}/product/join/'+productNo+'" class="btn btn-primary">가입하기</a></td></tr>')
						});
		/* 주택 예금 장바구니 버튼 */
		$("#houseTermInsertBtn").on("click",function() {
							var productNo = '<c:out value="${houseTermDepositVO.productNo}"/>';
							swal('장바구니 추가 완료!');
							$('#productTable > tbody:last').append('<tr><td> <input class="form-check-input" type="checkbox" value="houseTerm" id="houseTerm"></td><td>예금</td><td>${houseTermDepositVO.productName}</td><td><button class="btn btn-primary" style="margin-right:10px;">상세정보</button><a href="${pageContext.request.contextPath}/product/join/'+productNo+'" class="btn btn-primary">가입하기</a></td></tr>')
						});
		/* 결혼 자금 장바구니 버튼 */
		$("#marriageSavingsInsertBtn").on("click",function() {
							swal('장바구니 추가 완료!');
							var productNo = '<c:out value="${marriageSavingsVO.productNo}"/>';
							console.log(productNo);
							$('#productTable > tbody:last').append('<tr><td><input class="form-check-input" type="checkbox" value="marriageSavings" id="marriageSavings"></td><td>적금</td><td>${marriageSavingsVO.productName}</td><td><button class="btn btn-primary" style="margin-right:10px;">상세정보</button><a href="${pageContext.request.contextPath}/product/join/'+productNo+'" class="btn btn-primary">가입하기</a></td></tr>')
						});
		
		$("#marriageTermInsertBtn").on("click",function() {
							swal('장바구니 추가 완료!');
							var productNo = '<c:out value="${marriageTermDepositVO.productNo}"/>';
							console.log(productNo);
							$('#productTable > tbody:last').append('<tr><td><input class="form-check-input" type="checkbox" value="marriageTermDeposit" id="marriageDeposit"></td><td>예금</td><td>${marriageTermDepositVO.productName}</td><td><button class="btn btn-primary" style="margin-right:10px;">상세정보</button><a href="${pageContext.request.contextPath}/product/join/'+productNo+'" class="btn btn-primary">가입하기</a></td></tr>')
		});
		$("#etcTermInsertBtn").on("click",function() {
							swal('장바구니 추가 완료!');
							var productNo = '<c:out value="${etcTermDepositVO.productNo}"/>';
							console.log(productNo);
							$('#productTable > tbody:last').append('<tr><td><input class="form-check-input" type="checkbox" value="etcTermDeposit" id="etcDeposit"></td><td>예금</td><td>${etcTermDepositVO.productName}</td><td><button class="btn btn-primary" style="margin-right:10px;">상세정보</button><a href="${pageContext.request.contextPath}/product/join/'+productNo+'" class="btn btn-primary">가입하기</a></td></tr>')
		});
		/* 기타 자금 장바구니 버튼 */
		$("#etcSavingsInsertBtn").on("click",function() {
							var productNo = '<c:out value="${etcTermDepositVO.productNo}"/>';
							swal('장바구니 추가 완료!');
							$('#productTable > tbody:last').append('<tr><td> <input class="form-check-input" type="checkbox" value="etcSavings" id="etcSavings"></td><td>적금</td><td>${etcSavingsVO.productName}</td><td><button class="btn btn-primary" style="margin-right:10px;">상세정보</button><a href="${pageContext.request.contextPath}/product/join/'+productNo+'" class="btn btn-primary">가입하기</a></td></tr>')
						});

		function product() {
			$('#productResult').show();

			if ($('#depositBtn1').is(":checked") == true) {
				console.log('선택됨')
			} else
				(console.log('안선택'))

		};
		function houseResult() {
			if ($('#houseResultBtn').is(":checked") == true) {
				$('#houseResult').show();
			} else {
				$('#houseResult').hide();

			}

		};
		
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
		
		$( document ).ready(function() {
			
			var savingsMonthlyMoney = '<c:out value="${spareMoney}"/>'*10000;
			var savingsPeriod1 = '<c:out value="${marriageMonthDiff}"/>'*1;
			var savingsPeriod2 = '<c:out value="${houseMonthDiff}"/>'*1;
			var savingsPeriod3 = '<c:out value="${etcMonthDiff}"/>'*1;
			
			var savingsInterestRate1 = '<c:out value="${marriageSavingsVO.interestRate}"/>'*1;
			var savingsInterestRate2 = '<c:out value="${houseSavingsVO.interestRate}"/>'*1;
			var savingsInterestRate3 = '<c:out value="${etcSavingsVO.interestRate}"/>'*1;
			
			var savingsTax = 15.4*1;
			
			//결혼
			//세전
			var resultBeforeTax = savingsMonthlyMoney * (savingsInterestRate1/100) * (Number(savingsPeriod1)+1)* (savingsPeriod1/2)/12  
			//
			var taxAmount = resultBeforeTax*(savingsTax/100);
			
			//원금 합계
			var savingsTotalWithoutTax = savingsMonthlyMoney * savingsPeriod1;
			//세후
			var resultAfterTax = savingsTotalWithoutTax + resultBeforeTax - taxAmount;
			console.log(savingsTotalWithoutTax);
			console.log(resultAfterTax);
			
			resultBeforeTax = Math.round(resultBeforeTax);
			taxAmount = Math.round(taxAmount);
			savingsTotalWithoutTax = Math.round(savingsTotalWithoutTax);
			resultAfterTax = Math.round(resultAfterTax);
			
			resultBeforeTax = resultBeforeTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			taxAmount = taxAmount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			savingsTotalWithoutTax = savingsTotalWithoutTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			resultAfterTax = resultAfterTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			
			//세후 수령액
			$("#taxModal").text(resultAfterTax+'원');
			//세후수령액
			$("#resultAfterTaxModal").text(resultAfterTax+'원');
			//세전이자
			$("#savingsTotalBeforeTaxModal").text(resultBeforeTax+'원');
			//원금합계
			$("#savingsTotalWithoutTaxModal").text(savingsTotalWithoutTax+'원');
			
			//이자과세
			$("#taxAmountModal").text('-'+taxAmount+'원');
			
			//집
			//세전
			var resultBeforeTax2 = savingsMonthlyMoney * (savingsInterestRate2/100) * (Number(savingsPeriod2)+1)* (savingsPeriod2/2)/12  
			var taxAmount2 = resultBeforeTax2*(savingsTax/100);
			//원금 합계
			var savingsTotalWithoutTax2 = savingsMonthlyMoney * savingsPeriod2;
			//세후
			var resultAfterTax2 = savingsTotalWithoutTax2+resultBeforeTax2 - taxAmount2;
			
			resultBeforeTax2 = Math.round(resultBeforeTax2);
			taxAmount2 = Math.round(taxAmount2);
			savingsTotalWithoutTax2 = Math.round(savingsTotalWithoutTax2);
			resultAfterTax2 = Math.round(resultAfterTax2);
			
			resultBeforeTax2 = resultBeforeTax2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			taxAmount2 = taxAmount2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			savingsTotalWithoutTax2 = savingsTotalWithoutTax2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			resultAfterTax2 = resultAfterTax2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			
			//세후 수령액
			$("#taxModal2").text(resultAfterTax2+'원');
			$("#resultAfterTaxModal2").text(resultAfterTax2+'원');
			
			//세전이자
			$("#savingsTotalBeforeTaxModal2").text(resultBeforeTax2+'원');
			//원금합계
			$("#savingsTotalWithoutTaxModal2").text(savingsTotalWithoutTax2+'원');
			
			//이자과세
			$("#taxAmountModal2").text('-'+taxAmount2+'원');
			
			//etc
			//세전
			var resultBeforeTax3 = savingsMonthlyMoney * (savingsInterestRate3/100) * (Number(savingsPeriod3)+1)* (savingsPeriod3/2)/12  
			var taxAmount3 = resultBeforeTax3*(savingsTax/100);
			//원금 합계
			var savingsTotalWithoutTax3 = savingsMonthlyMoney * savingsPeriod3;
			//세후
			var resultAfterTax3 = savingsTotalWithoutTax3+resultBeforeTax3 - taxAmount3;
			
			resultBeforeTax3 = Math.round(resultBeforeTax3);
			taxAmount3 = Math.round(taxAmount3);
			savingsTotalWithoutTa3x = Math.round(savingsTotalWithoutTax3);
			resultAfterTax3 = Math.round(resultAfterTax3);
			
			resultBeforeTax3 = resultBeforeTax3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			taxAmount3 = taxAmount3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			savingsTotalWithoutTax3 = savingsTotalWithoutTax3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			resultAfterTax3 = resultAfterTax3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			
			//세후 수령액
			$("#taxModal3").text(resultAfterTax3+'원');
			$("#resultAfterTaxModal3").text(resultAfterTax3+'원');
			
			//세전이자
			$("#savingsTotalBeforeTaxModal3").text(resultBeforeTax3+'원');
			//원금합계
			$("#savingsTotalWithoutTaxModal3").text(savingsTotalWithoutTax3+'원');
			
			//이자과세
			$("#taxAmountModal3").text('-'+taxAmount3+'원');
			
			
		});
		$( document ).ready(function() {
			var money1 = '<c:out value="${marriageVO.marriageExpence}"/>'*1;
			var money2 = '<c:out value="${houseVO.houseExpence}"/>'*1;
			var money3 = '<c:out value="${etcVO.etcExpence}"/>'*1;
			
			var termDepositPeriod1 = '<c:out value="${marriageMonthDiff}"/>'*1;
			var termDepositPeriod2 = '<c:out value="${houseMonthDiff}"/>'*1;
			var termDepositPeriod3 = '<c:out value="${etcMonthDiff}"/>'*1;
			
			var termDepositInterestRate1 = '<c:out value="${marriageTermDepositVO.interestRate}"/>'*1;
			var termDepositInterestRate2 = '<c:out value="${houseTermDepositVO.interestRate}"/>'*1;
			var termDepositInterestRate3 = '<c:out value="${etcTermDepositVO.interestRate}"/>'*1;
			
			var termTax = 15.4*1;
			
			//결혼
			//원금 합계
			var termTotalWithoutTax = money1;
			//세전 이자
			var resultBeforeTax = termTotalWithoutTax * (termDepositInterestRate1/100);
			//이자 과세
			var taxAmount = resultBeforeTax*(termTax/100);
			//세후 수령액
			var resultAfterTax = termTotalWithoutTax + resultBeforeTax - taxAmount;
			console.log(termTotalWithoutTax);
			console.log(resultAfterTax);
			
			resultBeforeTax = Math.round(resultBeforeTax);
			taxAmount = Math.round(taxAmount);
			termTotalWithoutTax = Math.round(termTotalWithoutTax);
			resultAfterTax = Math.round(resultAfterTax);
			
			resultBeforeTax = resultBeforeTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			taxAmount = taxAmount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			termTotalWithoutTax = termTotalWithoutTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			resultAfterTax = resultAfterTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			
			//세후 수령액
			$("#termTaxModal").text(resultAfterTax+'원');
			//세후수령액
			$("#termResultAfterTaxModal").text(resultAfterTax+'원');
			//세전이자
			$("#termTotalBeforeTaxModal").text(resultBeforeTax+'원');
			//원금합계
			$("#termTotalWithoutTaxModal").text(termTotalWithoutTax+'원');
			
			//이자과세
			$("#termTaxAmountModal").text('-'+taxAmount+'원');
			
			//집
			//원금 합계
			var termTotalWithoutTax2 = money2;
			//세전 이자
			var resultBeforeTax2 = termTotalWithoutTax2 * (termDepositInterestRate2/100);
			//이자 과세
			var taxAmount2 = resultBeforeTax2*(termTax/100);
			//세후 수령액
			var resultAfterTax2 = termTotalWithoutTax2 + resultBeforeTax2 - taxAmount2;

			resultBeforeTax2 = Math.round(resultBeforeTax2);
			taxAmount2 = Math.round(taxAmount2);
			termTotalWithoutTax2 = Math.round(termTotalWithoutTax2);
			resultAfterTax2 = Math.round(resultAfterTax2);
			
			resultBeforeTax2 = resultBeforeTax2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			taxAmount2 = taxAmount2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			termTotalWithoutTax2 = termTotalWithoutTax2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			resultAfterTax2 = resultAfterTax2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			
			
			//세후 수령액
			$("#termTaxModal2").text(resultAfterTax2+'원');
			//세후수령액
			$("#termResultAfterTaxModal2").text(resultAfterTax2+'원');
			//세전이자
			$("#termTotalBeforeTaxModal2").text(resultBeforeTax2+'원');
			//원금합계
			$("#termTotalWithoutTaxModal2").text(termTotalWithoutTax2+'원');
			
			//이자과세
			$("#termTaxAmountModal2").text('-'+taxAmount2+'원');
			
			//etc
			//원금 합계
			var termTotalWithoutTax3 = money3;
			//세전 이자
			var resultBeforeTax3 = termTotalWithoutTax3 * (termDepositInterestRate3/100);
			//이자 과세
			var taxAmount3 = resultBeforeTax3*(termTax/100);
			//세후 수령액
			var resultAfterTax3 = termTotalWithoutTax3 + resultBeforeTax3 - taxAmount3;

			
			resultBeforeTax3 = Math.round(resultBeforeTax3);
			taxAmount3 = Math.round(taxAmount3);
			termTotalWithoutTax3 = Math.round(termTotalWithoutTax3);
			resultAfterTax3 = Math.round(resultAfterTax3);
			
			resultBeforeTax3 = resultBeforeTax3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			taxAmount3 = taxAmount3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			termTotalWithoutTax3 = termTotalWithoutTax3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			resultAfterTax3 = resultAfterTax3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			
			
			//세후 수령액
			$("#termTaxModal3").text(resultAfterTax3+'원');
			//세후수령액
			$("#termResultAfterTaxModal3").text(resultAfterTax3+'원');
			//세전이자
			$("#termTotalBeforeTaxModal3").text(resultBeforeTax3+'원');
			//원금합계
			$("#termTotalWithoutTaxModal3").text(termTotalWithoutTax3+'원');
			
			//이자과세
			$("#termTaxAmountModal3").text('-'+taxAmount3+'원');
			
		});
		
		$(document).ready(function() {
			$.ajax({
				url : '${pageContext.request.contextPath}/card/top3consume/'+'lovehana',
				type : 'get',
				success : function(data) {

					console.log(data)
					var consumeType = new Array();
					var transAmount = new Array();
					
					$.each(data, function(index, item) { // 데이터 =item
						console.log(item.consumeType);
						$("#consumeTop"+index).text(item.consumeType);
						
						consumeType.push(item.consumeType);
						transAmount.push(item.transAmount); 
					})/*for문 끝*/
					
					
					let chart2 = document.getElementById('consumeChart')
						.getContext('2d');

					let consumeChart = new Chart(chart2, {
						type : 'bar',
						data : {
							labels : [ consumeType[0], consumeType[1], consumeType[2] ],
							datasets : [ {
								label : '소비비율',
								data : [ transAmount[0], transAmount[1],transAmount[2] ],
								backgroundColor : [ '#018c8d', '#d3ebeb','#d2ebeb' ]
							}]
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
			  }
			})
		});
		
	</script>
	<script type="text/javascript">
/* Demo purposes only */
$(".hover").mouseleave(
  function () {
    $(this).removeClass("hover");
  }
);
</script>
</body>
</html>