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
			<div style="text-align: right; padding-bottom: 80px;">
				<h3>구이경님의 이번달 총 소비금액은</h3>
			</div>
			<div class="col-12 col-lg-6" style="float: left;">
				<h1 class="app-page-title">계좌⦁현금</h1>
			</div>
			<div class="col-12 col-lg-6" style="float: left; text-align: right;">
				<h1 class="app-page-title">총액 : ${accountBalance }원</h1>
			</div>
			<div class="row gy-4">

				<div class="col-12 col-lg-6" style="float: left;">
					<h6 style="color: grey;">입출금</h6>
				</div>
				<div class="col-12 col-lg-6" style="float: left; text-align: right;">
					<h6  style="color: grey;">총액 : ${balance01}원</h6>
				</div>
				<hr>
				<c:forEach items="${ accountVO }" var="account" varStatus="loop">
					<c:if test="${account.accountType eq '입출금계좌'}">
						<div class="col-12 col-lg-6">
							<div
								class="app-card app-card-account shadow-sm d-flex flex-column align-items-start card border-left-decoration">
								<div class="app-card-header p-3 border-bottom-0">
									<div class="row align-items-center gx-3">
										<div class="col-auto">
											<div>
												<img alt="하나로고"
													src="${ pageContext.request.contextPath }/resources/img/${account.bankPhoto}">
											</div>
											<!--//icon-holder-->

										</div>
										<div class="col-auto">
											<div class="col-auto" style="float: left;">
												<h4 class="app-card-title" style="margin-right: 10px;">
													${account.accountName }</h4>
											</div>
											<div class="col-auto" style="float: left; text-align: left;">
												<h4 class="app-card-title" style="margin-right: 10px;">
													${account.accountNo }</h4>
											</div>
											<div class="col-auto"
												style="float: left; text-align: right; border: 1px;">
												<h4 class="app-card-title" style="margin-right: 10px;">
													${account.balance}원</h4>
											</div>

										</div>
										<!--//col-->
									</div>
									<!--//row-->
								</div>
								<!--//app-card-header-->
								<div class="app-card-footer p-4 mt-auto" style="float: right;">
									<a class="btn btn-primary" href="#">계좌상세보기</a>
								</div>
								<!--//app-card-footer-->

							</div>
							<!--//app-card-->
						</div>
					</c:if>
				</c:forEach>
			</div>
			<!--//row-->
			<!-- <hr> -->


			<!-- 계좌종류2: 예적금 -->
			<div class="row gy-4" style="padding-top: 100px;">
				<div class="col-12 col-lg-6" style="float: left;">
					<h6 style="color: grey;">예적금</h6>
				</div>
				<div class="col-12 col-lg-6" style="float: left; text-align: right;">
					<h6  style="color: grey;">총액 : ${balance02}원</h6>
				</div>
				<hr>
				<c:forEach items="${ accountVO }" var="account" varStatus="loop">
					<c:if test="${account.accountType eq '예적금계좌'}">
						<div class="col-12 col-lg-6">
							<div
								class="app-card app-card-account shadow-sm d-flex flex-column align-items-start card border-left-decoration">
								<div class="app-card-header p-3 border-bottom-0">
									<div class="row align-items-center gx-3">
										<div class="col-auto">
											<div>
												<img alt="하나로고"
													src="${ pageContext.request.contextPath }/resources/img/${account.bankPhoto}">
											</div>
											<!--//icon-holder-->

										</div>
										<!--//col-->
										<div class="col-auto">
											<div class="col-auto" style="float: left;">
												<h4 class="app-card-title" style="margin-right: 10px;">
													${account.accountName }</h4>
											</div>
											<div class="col-auto" style="float: left; text-align: left;">
												<h4 class="app-card-title" style="margin-right: 10px;">
													${account.accountNo }</h4>
											</div>
											<div class="col-auto" style="float: left; text-align: right;">
												<h4 class="app-card-title" style="margin-right: 10px;">
													${account.balance}원</h4>
											</div>

										</div>
										<!--//col-->
									</div>
									<!--//row-->
									<div style="text-align: right;">
										<a class="btn btn-primary" href="#">계좌상세보기</a>
									</div>
								</div>
								<!--//app-card-header-->
								<!-- <div class="app-card-footer p-4 mt-auto">
									<a class="btn btn-primary" href="#">계좌상세보기</a>
								</div> -->
								<!--//app-card-footer-->

							</div>
							<!--//app-card-->
						</div>
					</c:if>
				</c:forEach>
			</div>


			<!-- 계좌종류3:증권계좌 -->
			<div class="row gy-4" style="padding-top: 100px;">
				<div class="col-12 col-lg-6" style="float: left;">
					<h6 style="color: grey;">증권계좌</h6>
				</div>
				<div class="col-12 col-lg-6" style="float: left; text-align: right;">
					<h6 style="color: grey;">총액 : ${balance03}원</h6>
				</div>
				<hr>
				<c:forEach items="${ accountVO }" var="account" varStatus="loop">
					<c:if test="${account.accountType eq '증권계좌'}">
						<div class="col-12 col-lg-6">
							<div
								class="app-card app-card-account shadow-sm d-flex flex-column align-items-start card border-left-decoration">
								<div class="app-card-header p-3 border-bottom-0">
									<div class="row align-items-center gx-3">
										<div class="col-auto">
											<div>
												<img alt="하나로고"
													src="${ pageContext.request.contextPath }/resources/img/${account.bankPhoto}">
											</div>
											<!--//icon-holder-->

										</div>
										<!--//col-->
										<div class="col-auto" style="text-align: justify;">
											<h4 class="app-card-title" style="margin-right: 10px;">
												${account.accountName } &nbsp; ${account.accountNo } &nbsp;
												${account.balance }원</h4>
										</div>
										<!--//col-->
									</div>
									<!--//row-->
								</div>
								<!--//app-card-header-->
								<div class="app-card-footer p-4 mt-auto">
									<a class="btn btn-primary" href="#">계좌상세보기</a>
								</div>
								<!--//app-card-footer-->

							</div>
							<!--//app-card-->
						</div>
					</c:if>
				</c:forEach>
			</div>




		</div>
		<!--//container-fluid-->
	</div>
	<!--//app-content-->




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


	<script
		src="${ pageContext.request.contextPath }/resources/assets_portal/plugins/popper.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/assets_portal/plugins/bootstrap/js/bootstrap.min.js"></script>



	<!-- Template Javascript -->
	<script src="${ pageContext.request.contextPath }/resources/js/main.js"></script>
</body>
</html>