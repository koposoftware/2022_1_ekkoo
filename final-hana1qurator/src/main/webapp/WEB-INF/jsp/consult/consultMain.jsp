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

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<style type="text/css">
* {
	font-family: 'Noto Sans KR', sans-serif !important;
}
</style>
</head>


<body class="app">

	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary"
			style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->


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
			<h6 style="color: black">재무설계</h6>
			<hr style="width: 200px;">
			<div style="color: grey">재무설계 결과</div>
			<hr style="width: 200px;">
			<div style="color: grey">맞춤형 금융 상품 추천</div>
			<hr style="width: 200px;">
		</div>
	</div>

	<div class="app-wrapper" >
		<div class="container-xxl py-5">
			
			<div class="container-xxl">
				<div class="text-center mx-auto mb-5 wow fadeInUp"
					data-wow-delay="0.1s" style="max-width: 600px;">
					<h6 class="text-primary">
						Hana 1Qurator <span style="color: #ff328b;">재무설계</span>
					</h6>
					<h2 class="mb-4">MY재무설계</h2>
				</div>
				<div class="row g-4">
					<div class="col-md-12 col-lg-12 wow fadeInUp" data-wow-delay="0.1s">
						<div class="service-item rounded overflow-hidden">
							<div class="position-relative p-4 pt-0"
								style="text-align: center;">
								<h4 class="mb-3" style="padding-top: 50px;">
									<span class="text-primary">관리부터 분석</span>까지, 내 모든 금융 자산을 <span
										style="color: #ff328b;">한번에!</span>
								</h4>
								<img class="img-fluid" style="width: 50%; height: 50%;"
									src="${pageContext.request.contextPath }/resources/img/consultMain.jpg"
									alt="">
								<p>*하나원큐레이터에서 하나은행과 타 은행의 계좌를 등록하여 나의 모든 금융자산을 한번에 관리하세요</p>
							</div>
						</div>
					</div>
				</div>
				<!-- row -->
			</div>




			<div class="container" style="padding-top: 30px;">
				<div class="row g-4">
					<div class="col-12 col-lg-4 wow fadeInUp" data-wow-delay="0.1s">
						<div class="service-item rounded overflow-hidden">
							<div class="position-relative p-4 pt-0"
								style="text-align: center;">
								<div style="mt-3">
									<img alt=""  style="width: 30%; height: 30%;" class="mt-4 mb-3" 
										src="${pageContext.request.contextPath }/resources/img/gif/aloneConsult.gif">
								</div>
								<h6>다른 금융 자산도</h6>
								<h6>
									하나원큐레이터에서 <span style="color: #ff328b">조회</span>하세요
								</h6>
								<div style="padding: 10px;">
									<a class="btn btn-primary"
										href="${pageContext.request.contextPath }/consult/consultForm">단독
										설계 하기</a>
								</div>
							</div>
						</div>
					</div>


					<div class="col-12 col-lg-4 wow fadeInUp" data-wow-delay="0.2s">
						<div class="service-item rounded overflow-hidden">
							<div class="position-relative p-4 pt-0"
								style="text-align: center;">
								<div style="mt-3">
									<img alt=""  style="width: 30%; height: 30%;" class="mt-4 mb-3" 
										src="${pageContext.request.contextPath }/resources/img/gif/togetherConsult.gif">
								</div>
								<h6>나의 모든 금융 자산을</h6>
								<h6>
									하나원큐레이터에서 <span style="color: #ff328b">분석</span>하세요
								</h6>
								<div style="padding: 10px;">
									<a class="btn btn-primary"
										href="${pageContext.request.contextPath }/consult/togetherConsultForm">부부
										설계 하기</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-12 col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
						<div class="service-item rounded overflow-hidden">
							<div class="position-relative p-4 pt-0"
								style="text-align: center;">
								<div class="mt-3">
									<img alt=""  style="width: 25%; height: 25%;" class="mt-3 mb-3" 
										src="${pageContext.request.contextPath }/resources/img/gif/consult.gif">
								</div>
								<h6>이전에 설계한</h6>
								<h6>
									<span style="color: #ff328b">재무설계 내역을</span> 확인하세요
								</h6>
								<div style="padding: 10px;">
									<a class="btn btn-primary"
										href="${pageContext.request.contextPath }/consult/consultLogList">
										나의 설계내역 확인하기</a>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- app-wrapper -->
	<footer class="content-footer footer bg-footer-theme"> 
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp" />
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


	<script
		src="${ pageContext.request.contextPath }/resources/assets_portal/plugins/popper.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/assets_portal/plugins/bootstrap/js/bootstrap.min.js"></script>



	<!-- Template Javascript -->
	<script src="${ pageContext.request.contextPath }/resources/js/main.js"></script>

	<script
		src="${ pageContext.request.contextPath }/resources/focus/vendor/global/global.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/focus/js/quixnav-init.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/focus/js/custom.min.js"></script>
</body>
</html>