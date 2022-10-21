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
<script src="https://unpkg.com/boxicons@2.1.2/dist/boxicons.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>

<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>
	<!-- Page Header Start -->

	<div class="container-fluid page-header py-5 mb-5">
		<div class="container py-5">
			<h1 class="display-3 text-white mb-3 animated slideInDown">Product</h1>
			<nav aria-label="breadcrumb animated slideInDown">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
					<li class="breadcrumb-item"><a class="text-white" href="#">Product</a></li>
					<li class="breadcrumb-item text-white active" aria-current="page">Complete</li>
				</ol>
			</nav>
		</div>
	</div>
	<!-- Page Header End -->

	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary"
			style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->

		<div class="container-xxl py-5">
			<div class="container">
				<div class="row g-4">

					<div class="col-md-12 col-lg-12 mb-5 pb-5 wow fadeInUp" data-wow-delay="0.1s">
						<div class="service-item rounded overflow-hidden">
							<div class="row">
								<div class="col-lg-5 mt-5 " style="text-align: right;">
									<img alt="" 
										style="width: 60%; height: 90%;"
										src="${pageContext.request.contextPath}/resources/img/complete.jpg">
								</div>
								<div class="col-lg-7 mt-5">
									<div class="position-relative p-4 " style="color: black;">
										<h2 class="text-primary">상품 가입 완료</h2>
										<p class="text-secondary mt-3">상품 가입을 완료하였습니다. 하나원큐레이터를 이용해주셔서 감사합니다.</p>
										<p class="text-secondary m-0  pb-5">문의사항은 언제든 하나원큐레이터 QNA 홈페이지를 이용해주세요. </p>
										<a href="${pageContext.request.contextPath }/" class="btn btn-secondary" style="margin-right: 10px;">메인페이지로 이동</a>
										<a href="${pageContext.request.contextPath }/assert/SelectMyAssert" class="btn btn-primary">내 보유 자산 확인하기</a>
									</div>
								</div>
							</div>

						</div>
					</div>
				
				</div>
				<!-- row -->
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
	//loading 관련
	function Loading() {
    var maskHeight = $(document).height();
    var maskWidth  = window.document.body.clientWidth;
     
    var mask = "<div id='mask' style='position:absolute; z-index:9000; background-color:#000000; display:none; left:0; top:0;'></div>";
    var loadingImg ='';
     
    loadingImg +=" <div id='loadingImg'>";
    loadingImg +=" <img src='${pageContext.request.contextPath}/resources/img/spinning.gif' style='position:absolute; z-index:9500; text-align:center; display:block; margin-top:300px; margin-left:750px;'/>";
    loadingImg += "</div>";  
 
    $('body').append(mask)
 
    $('#mask').css({
            'width' : maskWidth,
            'height': maskHeight,
            'opacity' :'0.3'
    });
    
    $('#mask').show();
  
    $('.loadingImg').append(loadingImg);
    $('#loadingImg').show();
}
	
	function closeLoading() {
		  $('#mask, #loadingImg').hide();
		  $('#mask, #loadingImg').remove(); 
		}
	
	
	</script>
	
	
	<script type="text/javascript">
		$('#checkAll').click(function() {
			var checked = $('#checkAll').is(':checked');

			if (checked) {
				$('input:checkbox').prop('checked', true);
			}

		});

		$('#joinOpenBakingBtn')
				.click(
						function() {
							var checked1 = $('#check1yes').is(':checked');
							var checked2 = $('#check2yes').is(':checked');
							var checkEmail = $('#checkEmail').is(':checked');
							var productNo = '<c:out value="${productNo}"/>'
							
							if (checked1 && checked2) {
								if (checkEmail) {
									$
											.ajax({
												url : '${pageContext.request.contextPath}/product/sendEmail',
												method : 'get',
												/* data : {
													user_id : ${loginVO.id}		
												}, */
												success : function() {
													
												},
												error : function() {
													alert('실패')
												},

											})
								}
								$.ajax({
											url : '${pageContext.request.contextPath}/assert/joinAssert',
											method : 'post',
											/* data : {
												user_id : ${loginVO.id}		
											}, */
											success : function() {
												location.href = "${pageContext.request.contextPath}/product/subscription/"+productNo;
											},
											error : function() {
												alert('실패')
											},

										})

							} else {
								alert('필수항목에 동의해주세요');
							}
						})
	</script>
</body>
</html>