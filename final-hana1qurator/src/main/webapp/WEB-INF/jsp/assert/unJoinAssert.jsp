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
h1, h2, h3, h4, h5, h6, p {
	font-family: 'Noto Sans KR', sans-serif !important;
}
</style>
</head>


<body>
	<header>
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
			<h3 style="color: #018c8d;">자산관리</h3>
			<hr style="width: 200px; height: 5px; background-color: #018c8d">
			<div style="color: grey;">서비스 안내 및 가입</div>
			<hr style="width: 200px;">
			<div style="color: grey">오픈뱅킹 조회</div>
			<hr style="width: 200px;">
			<div style="color: grey">MY 자산</div>
			<hr style="width: 200px;">
			<div style="color: grey">자금 하나로 모으기</div>
			<hr style="width: 200px;">
			<h6 style="color: black;">서비스 해지</h6>
			<hr style="width: 200px;">

		</div>
	</div>





	<div class="app-wrapper">
		<div class="container-xxl py-5">
			<div class="container">
				<div class="text-center mx-auto mb-5 wow fadeInUp"
					data-wow-delay="0.1s" style="max-width: 600px;">
					<h6 class="text-primary">Hana 1Qurator 자산분석</h6>
					<h2 class="mb-4">오픈뱅킹 서비스 해지</h2>
				</div>
				<div class="row g-4">
					<div class="col-md-12 col-lg-12 wow fadeInUp" data-wow-delay="0.1s">
						<div class="service-item rounded overflow-hidden">
							<div class="position-relative p-4 pt-0"
								style="text-align: center;">
								<h5 class="mb-3" style="padding-top: 50px;">오픈뱅킹에 가입하고
									하나원큐레이터의 자산관리 서비스를 이용해보세요!</h5>

							</div>
						</div>
					</div>
				</div>
				<!-- row -->
			</div>


			<!-- Accordion -->
			<div class="container">
				<div style="text-align: right;">
					<h6 class="mt-4 mb-4">
						<input class="form-check-input" type="checkbox" value=""
							id="checkAll" /> <label class="form-check-label me-3"
							for="checkAll"> 전체동의 </label>
					</h6>
				</div>
				<div class="row">
					<div class="col-md mb-4 mb-md-0">
						<div class="accordion mt-3" id="accordionExample">
							<form name="joinOpenBankingForm">
								<div class="card accordion-item active">
									<h2 class="accordion-header" id="headingOne">
										<button type="button" class="accordion-button"
											data-bs-toggle="collapse" data-bs-target="#accordionOne"
											aria-expanded="true" aria-controls="accordionOne">
											[필수]하나오픈뱅킹 서비스 이용약관</button>
									</h2>

									<div id="accordionOne" class="accordion-collapse collapse show"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">Lemon drops chocolate cake
											gummies carrot cake chupa chups muffin topping. Sesame snaps
											icing marzipan gummi bears macaroon dragée danish caramels
											powder. Bear claw dragée pastry topping soufflé. Wafer gummi
											bears marshmallow pastry pie.</div>
									</div>
								</div>
								<div style="text-align: right;">
									<h6 class="mb-4 mt-2">
										<input class="form-check-input" type="checkbox" value=""
											id="check1yes" /> <label class="form-check-label me-3"
											for="check1yes"> 동의 </label>
									</h6>
								</div>
								<div class="card accordion-item">
									<h2 class="accordion-header" id="headingTwo">
										<button type="button" class="accordion-button collapsed"
											data-bs-toggle="collapse" data-bs-target="#accordionTwo"
											aria-expanded="false" aria-controls="accordionTwo">
											[필수] 개인(신용)정보 수집 및 이용 동의</button>
									</h2>
									<div id="accordionTwo" class="accordion-collapse collapse"
										aria-labelledby="headingTwo"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">Dessert ice cream donut oat
											cake jelly-o pie sugar plum cheesecake. Bear claw dragée oat
											cake dragée ice cream halvah tootsie roll. Danish cake oat
											cake pie macaroon tart donut gummies. Jelly beans candy canes
											carrot cake. Fruitcake chocolate chupa chups.</div>
									</div>
								</div>
								<div style="text-align: right;">
									<h6 class="mb-4 mt-2">
										<input class="form-check-input" type="checkbox" value=""
											id="check2yes" /> <label class="form-check-label me-3"
											for="check2yes"> 동의 </label>
									</h6>
								</div>

								<div class="card accordion-item">
									<h2 class="accordion-header" id="headingThree">
										<button type="button" class="accordion-button collapsed"
											data-bs-toggle="collapse" data-bs-target="#accordionThree"
											aria-expanded="false" aria-controls="accordionThree">
											[선택] 개인(신용)정보 수집 및 이용 동의(상품·서비스 안내 등)</button>
									</h2>
									<div id="accordionThree" class="accordion-collapse collapse"
										aria-labelledby="headingThree"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">Oat cake toffee chocolate
											bar jujubes. Marshmallow brownie lemon drops cheesecake.
											Bonbon gingerbread marshmallow sweet jelly beans muffin.
											Sweet roll bear claw candy canes oat cake dragée caramels.
											Ice cream wafer danish cookie caramels muffin.</div>
									</div>
								</div>
								<div style="text-align: right;">
									<h6 class="mb-4 mt-2">
										<input class="form-check-input" type="checkbox" value=""
											id="check3yes" /> <label class="form-check-label me-3"
											for="check3yes"> 동의 </label>
									</h6>
								</div>
								<div style="text-align: center;">
									<input type="button" class="btn btn-primary" value="제출"
										id="joinOpenBakingBtn">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!--/ Accordion -->

		</div>
	</div>
	<!-- app-wrapper -->


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


	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script
		src="${ pageContext.request.contextPath }/resources/sneat/assets/vendor/libs/jquery/jquery.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/sneat/assets/vendor/libs/popper/popper.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/sneat/assets/vendor/js/bootstrap.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

	<script
		src="${ pageContext.request.contextPath }/resources/sneat/assets/vendor/js/menu.js"></script>
	<!-- endbuild -->

	<!-- Vendors JS -->

	<!-- Main JS -->
	<script src="${ pageContext.request.contextPath }/resources/sneat/assets/js/main.js"></script>

	<!-- Page JS -->

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>

	<script type="text/javascript">
		$('#checkAll').click(function() {
			var checked = $('#checkAll').is(':checked');

			if (checked) {
				$('input:checkbox').prop('checked', true);
			}

		});
		
		
		$('#joinOpenBakingBtn').click(function(){
			var checked1 = $('#check1yes').is(':checked');
			var checked2 = $('#check2yes').is(':checked');
			
			if(checked1 && checked2){
				$.ajax({
					url : '${pageContext.request.contextPath}/assert/joinAssert',
					method : 'post',
					/* data : {
						user_id : ${loginVO.id}		
					}, */
					success : function(){
						alert('성공')
						
						location.href="${pageContext.request.contextPath}/assert/myAssertMain";
					},
					error : function(){
						alert('실패')
					},
					
				})
				
			}
		})
	</script>

</body>
</html>