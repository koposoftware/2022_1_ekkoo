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

<body class="app">
	<header class="app-header fixed-top">
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>
	<!-- Page Header Start -->
	<!-- Spinner Start -->
	
	<div class="container-fluid page-header py-5 mb-5">
		<div class="container py-5">
			<h1 class="display-3 text-white mb-3 animated slideInDown">????????????????????????</h1>
			<nav aria-label="breadcrumb animated slideInDown">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
					<li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
					<li class="breadcrumb-item text-white active" aria-current="page">Asserts</li>
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
			<div style="color: grey">????????? ?????? ??? ??????</div>
			<hr style="width: 200px;">
			<div style="color: grey">MY????????????</div>
			<hr style="width: 200px;">
			<h6 style="color: black;">?????? ????????? ?????????</h6>
			<hr style="width: 200px;">
			<div style="color: grey">????????? ??????</div>
			<hr style="width: 200px;">
		</div>
	</div>

	<div class="app-wrapper">
		<div class="app-content pt-3 p-md-3 p-lg-4">
			<div class="container-xl">
				<div class="text-center mx-auto mt-4 wow fadeInUp"
					data-wow-delay="0.1s" style="max-width: 600px;">
					<h6 style="color: #018c8d;">
						Hana 1Qurator <span style="color: #ff328b">MY??????</span>
					</h6>
					<h2>?????? ????????? ?????????</h2>
				</div>
				<!-- intro  -->

				<div class="row mt-5 g-4">
					<div class="col-md-12 col-lg-12 wow fadeInUp" data-wow-delay="0.1s">
						<div class="service-item rounded overflow-hidden">
							<div class="position-relative p-4 pt-0"
								style="text-align: center;">
								<h4 class="mb-3" style="padding-top: 50px;">
									?????? ?????? <span class="text-primary">??????</span>??? <span
										style="color: #ff328b;">?????????</span>?????????
								</h4>
								<img class="img-fluid" width="50%" height="50%" 
									src="${pageContext.request.contextPath }/resources/img/openBanking.png"
									alt="">
								<h6 class="mt-3 mb-3 text-secondary">*?????? ??? ????????? ????????? ?????? ?????? ????????? ????????? ?????? ?????? ??????????????? ????????? ???????????????</h6>
								
							</div>
						</div>
					</div>
				</div>

				<div class="row g-4">
					<div class="col-12 col-lg-12" style="min-height: 500px;">

						<!-- table0  -->
						<h5 class="mb-5 mt-5 pt-5 text-primary">?????? ?????? ?????? ??????</h5>
						<form
							action="${pageContext.request.contextPath }/assert/collectAssert"
							method="post">
							<div class="table-responsive mb-5">
								<table class="table"
									style="border-top: 1.5px solid; border-top-color: #08a294;">
									<tr>
										<td class="p-3"
											style="width: 30%; background-color: #f8f8f8; color: black;">??????
											?????? ??????</td>
										<td class="p-3"><select class="form-select"
											name="hanaAccount">
												<option selected>????????? ????????? ??????????????????</option>
												<c:forEach items="${hanaAccount }" var="account"
													varStatus="status">
													<option value="${account.accountNo}">[${account.bankCode}]
														| ${account.accountNo } | ${account.accountName }</option>
												</c:forEach>
										</select></td>
									</tr>
								</table>
							</div>

							<!-- //table1  -->
							<h5 class="mb-4 mt-5 text-primary">?????? ??????</h5>
							<div class="table-responsive mb-5">
								<table class="table"
									style="border-top: 1.5px solid; border-top-color: #08a294;">
									<thead>
										<tr>
											<th>??????</th>
											<th>??????</th>
											<th>????????????</th>
											<th>????????????</th>
											<th>??????</th>
											<th>????????? ??????</th>
										</tr>
									</thead>
									<c:forEach items="${otherAccount }" var="account"
										varStatus="status">
										<tr>
											<td style="width: 10%;"><input type="checkbox"
												name="accountSelected" value="${account.accountNo}"></td>
											<td class="p-3"
												style="width: 15%; background-color: #f8f8f8; color: black;">
												${account.bankCode }</td>
											<td class="p-3"
												style="width: 15%; background-color: #f8f8f8; color: black;">
												${account.accountName }</td>
											<td class="p-3"
												style="width: 15%; background-color: #f8f8f8; color: black;">
												${account.accountNo }</td>
											<td class="p-3"
												style="width: 15%; text-align: right; background-color: #f8f8f8; color: black;">
												<fmt:formatNumber value="${account.balance }" />???
											</td>
											<td class="p-3" style="width: 15%;"><input type="text"
												name="transferAmount" value=""
												style="background-color: #F2FCF5; text-align: right; border-color: #f8f8f8;" />
												<label class="form-check-label" for="defaultRadio1">
													??? </label></td>

										</tr>
									</c:forEach>
								</table>
							</div>
							<!-- //table1  -->


							<div class="mt-5 mb-5" style="text-align: center;">
								<input type="submit" class="btn btn-primary m-2" value="??????"
									style="padding-left: 100px; padding-right: 100px;"
									id="joinOpenBakingBtn"> <input type="button"
									class="btn btn-secondary m-2" value="??????"
									style="padding-left: 100px; padding-right: 100px;"
									id="cancleBtn">
							</div>

							<input type="hidden" name="selectedNum" value="">

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<footer class="content-footer footer bg-footer-theme"> 
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp" />
	</footer>
	<script type="text/javascript">
		console.log($('input[name=transferAmount]').val());
		console.log($('input[name=accountSelected]').val());
	</script>
</body>
</html>