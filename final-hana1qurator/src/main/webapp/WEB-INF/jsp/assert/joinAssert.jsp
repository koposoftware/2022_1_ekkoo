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
			<h6 style="color: black;">서비스 안내 및 가입</h6>
			<hr style="width: 200px;">
			<div style="color: grey">오픈뱅킹 조회</div>
			<hr style="width: 200px;">
			<div style="color: grey">MY 자산</div>
			<hr style="width: 200px;">
			<div style="color: grey">자금 하나로 모으기</div>
			<hr style="width: 200px;">
			<div style="color: grey">서비스 해지</div>
			<hr style="width: 200px;">

		</div>
	</div>


	<div class="app-wrapper">
		<div class="container-xxl py-5">
			<div class="container">
				<div class="text-center mx-auto mb-5 wow fadeInUp"
					data-wow-delay="0.1s" style="max-width: 600px;">
					<h6 class="text-primary">Hana 1Qurator <span style="color:#ff328b; ">자산분석</span></h6>
					<h2 class="mb-4">마이데이터 서비스 가입</h2>
				</div>
				<div class="row g-4">
					<div class="col-md-12 col-lg-12 wow fadeInUp" data-wow-delay="0.1s">
						<div class="service-item rounded overflow-hidden">
							<div class="position-relative p-4 pt-0"
								style="text-align: center;">
								<div class="row">
									<div class="col-12 col-lg-4 mt-3">
										<img style="width: 70%; height: 100%;" alt=""
											src="${pageContext.request.contextPath }/resources/img/mydata.jpg">
									</div>
									<div class="col-12 col-lg-8 mt-5">
										<h5 style="padding-top: 70px;">나의
											모든 금융 자산을 연결하려면 <span style="color:#08a294; ">마이데이터 서비스 동의</span>가 필요해요</h5>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md mb-4 mb-md-0">
						<div class="accordion mt-3" id="accordionExample">
							<form name="joinOpenBankingForm">
								<div class="col-12 col-lg-12 card accordion-item p-0">
									<h2 class="accordion-header" id="headingOne">
										<button type="button" class="accordion-button"
											data-bs-toggle="collapse" data-bs-target="#accordionOne"
											aria-expanded="true" aria-controls="accordionOne">
											<h6>[필수]마이데이터 서비스 이용약관</h6>
										</button>
									</h2>

									<div id="accordionOne" class="accordion-collapse collapse"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">
											<h5 style="color:#08a294;">제 1 조 [목적]</h5> 
											이 약관은 하나원큐레이터 (이하 "회사"라 합니다)과 회사가 제공하는 "마이데이터 서비스" 를 이용하는
											고객(이하 "고객" 이라 합니다) 사이의 권리, 의무 및 책임사항, 마이데이터 서비스 제공에 관한 제반 사항을
											규정함을 목적으로 합니다. <br>
											<h5 style="color:#08a294;">제 2 조 [마이데이터 서비스의 가입]</h5>
											1 회사와 고객 사이의 서비스 이용계약은 가입신청자가 회사가 정한 양식에 따라 가입신청을 하고 회사가 이에
											대해 승낙함으로써 체결됩니다.<br> 2 회사는 가입 신청자의 가입신청이 다음 각 항의 어느 하나에
											해당하는 사유가 발생하거나 확인된 경우 이를 승낙하지 않을 수 있습니다.<br> ① 만 19세 미만의
											자가 가입 신청하는 경우<br> ② 제11조 제3항 각 호의 어느 하나에 해당하는 경우<br>
											③ 가입 신청자가 과거에 이 약관을 위반하여 서비스 이용계약을 해지 당한 경우<br> 3 회사는 이
											약관이 정한 마이데이터 서비스 외에 추가적인 서비스를 제공하기 위해 고객에게 별도의 추가적인 약관 동의, 정보
											수집 및 이용 동의 등 절차의 이행을 요청할 수 있으며, 이러한 절차가 완료되지 않는 경우 해당 고객은
											추가적인 서비스의 전부 또는 일부를 이용하지 못할 수 있습니다.
										</div>
									</div>
								</div>

								<div class="col-12 col-lg-12 card accordion-item p-0">
									<h2 class="accordion-header" id="headingTwo">
										<button type="button" class="accordion-button collapsed"
											data-bs-toggle="collapse" data-bs-target="#accordionTwo"
											aria-expanded="false" aria-controls="accordionTwo">
											<h6>[필수]개인(신용)정보 수집·이용 동의</h6>
										</button>
									</h2>
									<div id="accordionTwo" class="accordion-collapse collapse"
										aria-labelledby="headingTwo"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">
											귀하는 개인(신용)정보 수집·이용 동의에 대해 거부하실 수 있습니다. 다만, 개인(신용)정보 수집·이용에 관한
											동의는 귀하에게 제공되는 마이데이터서비스와 직접적으로 관련된 필수적 사항이므로, 아래의 사항에 동의해야만
											마이데이터서비스의 설정 및 유지가 가능합니다.

											<h5 class="pt-3" style="color:#08a294;">수집·이용에 관한 사항</h5>
											- 고객의 요구에 따라 본인신용정보관리업자인 당사에 제공/수신된 개인(신용)정보의 통합 조회 <br>
											- 분석을 통한 소비지출 및 자산 진단, 맞춤형 금융상품 추천/조언/가입안내 등 마이데이터서비스 내에서
											제공하는 각종 서비스의 거래 관계의 설정·유지·이행·관리·개선 등 <br> - 기타 법령상의 의무
											이행, 금융사고 조사, 분쟁해결, 민원처리 및 본인여부 확인
										</div>
									</div>
								</div>


								<div
									class="col-12 col-lg-10 m-auto pt-5 pb-3 text-center text-black">
									연결 전 신중하게 고민하고 필요한 서비스만 이용해주세요. 안쓰는 서비스는 언제든지 정보를 지울 수 있습니다. <br>가입한
									마이테이터는 종합포털(www.mydatacenter.or.kr)에서 확인가능합니다.
								</div>

								<div style="text-align: right;">
									<h6 class="mt-4 mb-4">
										<input class="form-check-input" type="checkbox" value=""
											id="checkAll" /> <label class="form-check-label me-3"
											for="checkAll"> 전체동의 </label>
									</h6>
								</div>

								<div class="col-12 col-lg-10 m-auto pt-3 pb-3">
									<input class="form-check-input" type="checkbox" value=""
										id="check1yes" /><label
										class="form-check-label text-secondary me-3" for="check1yes">본인은
										서비스 약관 및 중요한 사항을 충분히 이해하며 본 서비스에 가입함을 확인합니다.</label>
								</div>

								<div class="col-12 col-lg-10 m-auto pt-3 pb-3">
									<input class="form-check-input" type="checkbox" value=""
										id="check2yes" /><label
										class="form-check-label text-secondary me-3" for="check2yes">
										마이데이터 서비스 이용약관에 동의합니다. </label>
								</div>



								<div class="col-12 col-lg-10 m-auto pt-3 pb-3">
									<input class="form-check-input" type="checkbox" value=""
										id="check3yes" /><label
										class="form-check-label text-secondary me-3" for="check3yes">
										개인(신용)정보 수집·이용 동의합니다. </label>
								</div>


								<div class="col-12 col-lg-10 m-auto pt-3 pb-3">

									<input class="form-check-input" type="checkbox" value=""
										id="checkEmail" /> <label
										class="form-check-label text-primary me-3" for="checkEmail">
										<h6 class="text-primary">마이데이터 서비스 안내 수신(필수)</h6>
									</label>
								</div>
								<div class="mt-5 mb-5" style="text-align: center;">
									<input type="button" class="btn btn-primary" value="동의합니다"
										style="padding-left: 100px; padding-right: 100px;"
										id="joinOpenBakingBtn">
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- row -->
			</div>
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
	<script
		src="${ pageContext.request.contextPath }/resources/sneat/assets/js/main.js"></script>

	<!-- Page JS -->

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>

	<script type="text/javascript">
		$('#checkAll').click(function() {
			var checked = $('#checkAll').is(':checked');

			if (checked) {
				$('input:checkbox').prop('checked', true);
			} else {
				$('input:checkbox').prop('checked', false);
			}

		});

		$('#joinOpenBakingBtn')
				.click(
						function() {
							var checked1 = $('#check1yes').is(':checked');
							var checked2 = $('#check2yes').is(':checked');

							if (checked1 && checked2) {
								$
										.ajax({
											url : '${pageContext.request.contextPath}/assert/joinAssert',
											method : 'post',
											/* data : {
												user_id : ${loginVO.id}		
											}, */
											success : function() {
												alert('성공')

												location.href = "${pageContext.request.contextPath}/assert/myAssertMain";
											},
											error : function() {
												alert('실패')
											},

										})

							}
						})
	</script>

</body>
</html>