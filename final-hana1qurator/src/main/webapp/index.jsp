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
</head>

<body>
	

	<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>

	<div class="p-0 pb-5 wow fadeIn" data-wow-delay="0.1s" style="max-width:1500px; margin: auto">
		<div class="row">
			<!-- 사진 7-->
			<div class="col-12 col-lg-8 text-center">

				<div id="carouselExample-cf"
					class="carousel carousel-dark slide carousel-fade"
					data-bs-ride="carousel">
					<ol class="carousel-indicators">
						<li data-bs-target="#carouselExample-cf" data-bs-slide-to="0"
							class="active"></li>
						<li data-bs-target="#carouselExample-cf" data-bs-slide-to="1"></li>
						<li data-bs-target="#carouselExample-cf" data-bs-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block" style="width: 90%"
								src="${ pageContext.request.contextPath }/resources/img/index1.png"
								alt="First slide" />
						</div>
						<div class="carousel-item">
							<img class="d-block" style="width: 90%"
								src="${ pageContext.request.contextPath }/resources/img/index2.png"
								alt="Second slide" />
						</div>
						<div class="carousel-item">
							<img class="d-block" style="width: 90%"
								src="${ pageContext.request.contextPath }/resources/img/index3.png"
								alt="Third slide" />
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExample-cf"
						role="button" data-bs-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="visually-hidden">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExample-cf"
						role="button" data-bs-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="visually-hidden">Next</span>
					</a>
				</div>

			</div>
			<!-- 메뉴바 4 -->
			<div class="col-12 col-lg-3 text-center m-0 p-0">
				<div class="row mt-5 mb-3"> 
					<div class="col-md-12 col-lg-6 wow fadeIn p-0 mt-3"
						data-wow-delay="0.1s">
						<button class="btn btn-primary rounded p-0"
							style="width: 160px; height: 120px; font-size: 20px; color: white; text-align: left; padding-left: 20px;">
							<div class="ps-4 text-center text-white">자산조회</div>
						</button>
					</div>

					<div class="col-md-12 col-lg-6 wow fadeIn p-0 mt-3"
						data-wow-delay="0.1s">
						<button class="btn btn-secondary rounded p-0"
							style="width: 160px; height: 120px; font-size: 20px; color: white; text-align: left;">
							<div class="ps-4 text-center text-white">재무설계</div>
						</button>
					</div> 
				</div>

				<div class="row mt-5" style="text-align: center;">
					<div class="col-md-12 col-lg-4 wow fadeIn p-1"
						data-wow-delay="0.1s">
						<div class="text-center mb-4">
							<img style="filter:drop-shadow(10px 6px 6px #c3c3c3); width: 30%; height: 30%" alt="" src="${pageContext.request.contextPath}/resources/img/index/accounting.png">
							<h5 class="mb-0 mt-1 text-secondary">계좌조회</h5>
						</div>
					</div>
					<div class="col-md-12 col-lg-4 wow fadeIn p-1"
						data-wow-delay="0.1s">
						<div class="text-center mb-4">
							<img style="filter:drop-shadow(10px 6px 6px #c3c3c3); width: 30%; height: 30%" alt="" src="${pageContext.request.contextPath}/resources/img/index/money-transfer.png">
							<h5 class="mb-0 mt-1 text-secondary">자금모으기</h5>
						</div>
					</div>
					<div class="col-md-12 col-lg-4 wow fadeIn p-1"
						data-wow-delay="0.1s">
						<div class="text-center mb-4">
							<img style="filter:drop-shadow(10px 6px 6px #c3c3c3); width: 30%; height: 30%" alt="" src="${pageContext.request.contextPath}/resources/img/index/new-product.png">
							<h5 class="mb-0 mt-1 text-secondary">상품조회</h5>
						</div>
					</div>
					</div> 
					<div class="row mt-5" style="text-align: center;">
					<div class="col-md-12 col-lg-4 wow fadeIn p-1"
						data-wow-delay="0.1s">
						<div class="text-center mb-4">
							<img style="filter:drop-shadow(10px 6px 6px #c3c3c3); width: 30%; height: 30%" alt="" src="${pageContext.request.contextPath}/resources/img/index/account.png">
							<h5 class="mb-0 mt-1 text-secondary">단독설계</h5>
						</div>
					</div>
					<div class="col-md-12 col-lg-4 wow fadeIn p-1"
						data-wow-delay="0.1s">
						<div class="text-center mb-4">
							<img style="filter:drop-shadow(10px 6px 6px #c3c3c3); width: 30%; height: 30%" alt="" src="${pageContext.request.contextPath}/resources/img/index/analysis.png">
							<h5 class="mb-0 mt-1 text-secondary">부부설계</h5>
						</div>
					</div>
					<div class="col-md-12 col-lg-4 wow fadeIn p-1"
						data-wow-delay="0.1s">
						<div class="text-center mb-4">
							<img style="filter:drop-shadow(10px 6px 6px #c3c3c3); width: 30%; height: 30%" alt="" src="${pageContext.request.contextPath}/resources/img/index/document.png">
							<h5 class="mb-0 mt-1 text-secondary">설계조회</h5>
						</div>
					</div>
					
				</div>
			</div>

		</div>
	</div>


	<!-- Feature Start -->
	<div class="container-fluid bg-light mt-5 mb-5">
		<div class="container">
			<div class="row g-5">
				<div class="col-md-6 col-lg-3 wow fadeIn mb-5" data-wow-delay="0.1s" 
				style="border-right: 1px solid;">
					<div class="text-center mb-4">
						<h5 class="mb-1 mt-3 text-primary">예금</h5>
						<h5 class="mb-5" style="color: #596874">목돈 굴리기</h5> 
					</div>
				</div>
				<div class="col-md-6 col-lg-3 wow fadeIn mb-5" data-wow-delay="0.3s"
				style="border-right: 1px solid;">
					<div class="text-center mb-4">
						<h5 class="mb-1 mt-3 text-primary">적금</h5>
						<h5 class="mb-5" style="color: #596874">목돈 모으기</h5>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 wow fadeIn mb-5" data-wow-delay="0.5s"
				style="border-right: 1px solid;">
					<div class="text-center mb-4">
						<h5 class="mb-1 mt-3 text-primary">연금</h5>
						<h5 class="mb-5" style="color: #596874">든든한 노후를 위해</h5>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 wow fadeIn mb-5" data-wow-delay="0.7s">
					<div class="text-center mb-4 ">
						<h5 class="mb-1 mt-3 text-primary">카드</h5>
						<h5 class="mb-5" style="color: #596874">사용할 수 록 혜택이 UP!</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Feature Start -->

	

	<!-- Footer Start -->
	<div
		class="container-fluid bg-dark text-body footer mt-5 pt-5 wow fadeIn"
		data-wow-delay="0.1s">
		<div class="container py-5">
			<div class="row g-5">
				<div class="col-lg-3 col-md-6">
					<h5 class="text-white mb-4">Address</h5>
					<p class="mb-2">
						<i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA
					</p>
					<p class="mb-2">
						<i class="fa fa-phone-alt me-3"></i>+012 345 67890
					</p>
					<p class="mb-2">
						<i class="fa fa-envelope me-3"></i>info@example.com
					</p>
					<div class="d-flex pt-2">
						<a class="btn btn-square btn-outline-light btn-social" href=""><i
							class="fab fa-twitter"></i></a> <a
							class="btn btn-square btn-outline-light btn-social" href=""><i
							class="fab fa-facebook-f"></i></a> <a
							class="btn btn-square btn-outline-light btn-social" href=""><i
							class="fab fa-youtube"></i></a> <a
							class="btn btn-square btn-outline-light btn-social" href=""><i
							class="fab fa-linkedin-in"></i></a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<h5 class="text-white mb-4">Quick Links</h5>
					<a class="btn btn-link" href="">About Us</a> <a
						class="btn btn-link" href="">Contact Us</a> <a
						class="btn btn-link" href="">Our Services</a> <a
						class="btn btn-link" href="">Terms & Condition</a> <a
						class="btn btn-link" href="">Support</a>
				</div>
				<div class="col-lg-3 col-md-6">
					<h5 class="text-white mb-4">Project Gallery</h5>
					<div class="row g-2">
						<div class="col-4">
							<img class="img-fluid rounded"
								src="${ pageContext.request.contextPath }/resources/img/gallery-1.jpg"
								alt="">
						</div>
						<div class="col-4">
							<img class="img-fluid rounded"
								src="${ pageContext.request.contextPath }/resources/img/gallery-2.jpg"
								alt="">
						</div>
						<div class="col-4">
							<img class="img-fluid rounded"
								src="${ pageContext.request.contextPath }/resources/img/gallery-3.jpg"
								alt="">
						</div>
						<div class="col-4">
							<img class="img-fluid rounded"
								src="${ pageContext.request.contextPath }/resources/img/gallery-4.jpg"
								alt="">
						</div>
						<div class="col-4">
							<img class="img-fluid rounded"
								src="${ pageContext.request.contextPath }/resources/img/gallery-5.jpg"
								alt="">
						</div>
						<div class="col-4">
							<img class="img-fluid rounded"
								src="${ pageContext.request.contextPath }/resources/img/gallery-6.jpg"
								alt="">
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<h5 class="text-white mb-4">Newsletter</h5>
					<p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
					<div class="position-relative mx-auto" style="max-width: 400px;">
						<input class="form-control border-0 w-100 py-3 ps-4 pe-5"
							type="text" placeholder="Your email">
						<button type="button"
							class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="copyright">
				<div class="row">
					<div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
						&copy; <a href="#">Your Site Name</a>, All Right Reserved.
					</div>
					<div class="col-md-6 text-center text-md-end">
						<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
						Designed By <a href="https://htmlcodex.com">HTML Codex</a> <br>Distributed
						By: <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->


	<!-- Back to Top -->
	<a href="#"
		class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i
		class="bi bi-arrow-up"></i></a>


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
</body>

</html>