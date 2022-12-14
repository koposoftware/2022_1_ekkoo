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
	<header class="app-header fixed-top">
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>


	<!-- Page Header Start -->
	<div class="container-fluid page-header py-5 mb-5">
		<div class="container py-5">
			<h1 class="display-3 text-white mb-3 animated slideInDown">MY??????</h1>
			<nav aria-label="breadcrumb animated slideInDown">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
					<li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
					<li class="breadcrumb-item text-white active" aria-current="page">MY??????</li>
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
			<h6 style="color: black;">????????? ?????? ??? ??????</h6>
			<hr style="width: 200px;">
			<div style="color: grey">MY????????????</div>
			<hr style="width: 200px;">
			<div style="color: grey">?????? ????????? ?????????</div>
			<hr style="width: 200px;">
			<div style="color: grey">????????? ??????</div>
			<hr style="width: 200px;">
		</div>
	</div>


	<div class="app-wrapper">
		<div class="container-xxl py-5">
			<div class="container">
				<div class="text-center mx-auto mb-5 wow fadeInUp"
					data-wow-delay="0.1s" style="max-width: 600px;">
					<h6 class="text-primary">
						Hana 1Qurator <span style="color: #ff328b;">MY??????</span>
					</h6>
					<h2 class="mb-4">?????? ?????? ????????? ??????</h2>
				</div>
				<div class="row g-4">
					<div class="col-md-12 col-lg-12 wow fadeInUp" data-wow-delay="0.1s">
						<div class="service-item rounded overflow-hidden">
							<div class="position-relative p-4 pt-0"
								style="text-align: center;">
								<h4 class="mb-3" style="padding-top: 50px;">
									<span class="text-primary">???????????? ??????</span>??????, ??? ?????? ?????? ????????? <span
										style="color: #ff328b;">?????????!</span>
								</h4>
								<img class="img-fluid"
									src="${pageContext.request.contextPath }/resources/img/openBanking.png"
									alt="">
								<p>*??????????????????????????? ??????????????? ??? ????????? ????????? ???????????? ?????? ?????? ??????????????? ????????? ???????????????</p>
								<div style="padding: 10px;">
									<c:choose>
										<c:when test="${loginVO.open_banking eq 'n'}">
											<a
												href="${pageContext.request.contextPath }/assert/joinAssert"
												class="btn btn-primary">???????????? ??????</a>
										</c:when>
										<c:otherwise>
											<%-- <a
												href="${pageContext.request.contextPath }/assert/joinAssert"
												class="btn btn-primary">???????????? ?????? ?????? ??????</a> --%>
											<p class="mb-0 pb-0" style="text-align: right;">
												<a
													href="${pageContext.request.contextPath }/assert/unJoinOpenBanking"
													style="">????????? ????????? ????????????????</a>
											</p>
										</c:otherwise>
									</c:choose>
								</div>
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
									<div style="padding: 30px;">
										<img alt=""
											src="${pageContext.request.contextPath }/resources/img/openBanking1.png">
									</div>
									<h6>?????? ?????? ?????????</h6>
									<h6>
										??????????????????????????? <span style="color: #ff328b">??????</span>?????????
									</h6>
									<div style="padding: 10px;">
										<a class="btn btn-primary"
											href="${pageContext.request.contextPath }/assert/SelectMyAssert">??????
											?????? ????????????</a>
									</div>
								</div>
							</div>
						</div>


						<div class="col-12 col-lg-4 wow fadeInUp" data-wow-delay="0.2s">
							<div class="service-item rounded overflow-hidden">
								<div class="position-relative p-4 pt-0"
									style="text-align: center;">
									<div style="padding: 30px;">
										<img alt=""
											src="${pageContext.request.contextPath }/resources/img/openBanking2.png">
									</div>
									<h6>?????? ?????? ?????? ?????????</h6>
									<h6>
										??????????????????????????? <span style="color: #ff328b">??????</span>?????????
									</h6>
									<div style="padding: 10px;">
										<button class="btn btn-primary">?????? ?????? ????????????</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-12 col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
							<div class="service-item rounded overflow-hidden">
								<div class="position-relative p-4 pt-0"
									style="text-align: center;">
									<div style="padding: 30px;">
										<img alt=""
											src="${pageContext.request.contextPath }/resources/img/openBanking3.png">
									</div>
									<h6>?????? ?????? ?????? ?????????</h6>
									<h6>
										??? ?????? <span style="color: #ff328b">?????????</span> ???????????????
									</h6>
									<div style="padding: 10px;">
										<a class="btn btn-primary"
											href="${pageContext.request.contextPath }/assert/collectAssert">??????
											????????? ?????????</a>
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