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

	<div class="container-fluid sidepanel-inner d-flex flex-column"
		style="width: 20%; float: left;">
		<div style="padding-left: 30px;">
			<h3 style="color: #018c8d">????????????</h3>
			<hr style="width: 200px; height: 5px; background-color: #018c8d">
			<div style="color: grey;">????????????</div>
			<hr style="width: 200px;">
			<h6 style="color: black">?????? ?????? ??????</h6>
			<hr style="width: 200px;">
		</div>
	</div>

	<div class="app-wrapper">
		<div class="app-content pt-3 p-md-3 p-lg-4">
		<form action="${pageContext.request.contextPath }/product/subscription" method="post">
			<div class="container-xl">
				<div class="text-center mx-auto mt-4 wow fadeInUp"
					data-wow-delay="0.1s" style="max-width: 600px;">
					<h6 style="color: #018c8d;">
						Hana 1Qurator <span style="color: #ff328b">MY??????</span>
					</h6>
					<h2>???????????? ??????</h2>
				</div>
				<!-- intro  -->
				<div class="row g-4">
					<div class="col-12 col-lg-12">
						<h5 class="mb-4 mt-5 text-primary">?????? ??????</h5>
						<div class="table-responsive mb-5 pb-5">
							<table class="table table-borderd"
								style="border-left: 3px solid; border-left-color: #08a294;">
								<tr>
									<td class="p-3"
										style="width: 25%; background-color: #F2FCF5; color: black;">??????
										?????? ?????? ??????</td>
									<td class="p-3" style="width: 25%;">
										<div style="color: black;"><h5>??????</h5></div>
									</td>

									<td class="p-3"
										style="width: 25%; background-color: #F2FCF5; color: black;">??????
										?????? ???</td>
									<td class="p-3" style="width: 25%;">
										<div style="color: black;"><h5>${savings.productName }</h5></div>
										<input type="hidden" name="accountName" value="${savings.productName }">
									</td>
								</tr>
							</table>
						</div>
						<!-- //table0  -->

						<h5 class="mb-4 text-primary">?????? ??????</h5>
						<div class="table-responsive mb-5">
							<table class="table"
								style="border-top: 1.5px solid; border-top-color: #08a294;">
								<tr>
									<td class="p-3"
										style="width: 30%; background-color: #f8f8f8; color: black;">??????
										?????? ??????</td>
									<td class="d-flex p-3">
										<div class="form-check">
											<input name="bankCode" class="form-check-input" type="radio"
												value="hanaAccount" id="hanaAccount" /> <label
												class="form-check-label" for="hanaAccount"> ????????????</label>
										</div>
										<div class="form-check">
											<input name="bankCode" class="form-check-input ms-2"
												type="radio" value="otherAccount" id="otherAccount" checked />
											<label class="form-check-label ms-1" for="otherAccount">
												????????? </label>
										</div>
									</td>
								</tr>
								<tr>
									<td class="p-3"
										style="width: 30%; background-color: #f8f8f8; color: black;">??????
										?????? ??????</td>
									<td class="p-3">
									<select class="form-select"
										id="exampleFormControlSelect1"
										aria-label="Default select example">
											<option selected>?????? ????????? ??????????????????</option>
									<c:forEach items="${account }" var="account" varStatus="status">
											<c:if test="${account.accountType eq '???????????????' }">
												<option value="${account.accountNo}">[${account.bankCode}] | ${account.accountNo } | ${account.accountName }</option>
											</c:if>
									</c:forEach>
									</select>
									</td>
								</tr>
							</table>
						</div>
						<!-- //table1  -->


						<!-- table2  -->
						<div class="table-responsive">
							<table class="table table-bordered border-medium"
								style="border-top: 1.5px solid; border-top-color: #08a294;">
								<tr>
									<td class="p-3"
										style="width: 30%; background-color: #f8f8f8; color: black;">????????????</td>
									<td class="d-flex p-3"><span class="mt-1">??? ?????? ??????</span>
										<div class="form-check m-0">
											<input name="firstMoney" class="form-input w-50" type="text"
												value="" id="firstMoney"
												style="background-color: #F2FCF5; text-align: right; border-color: #f8f8f8;" />
											<label class="form-check-label" for="defaultRadio1">
												??? </label>
										</div></td>
								</tr>
								<tr>
									<td class="p-3"
										style="width: 30%; background-color: #f8f8f8; color: black;">??????
										?????? ??????</td>
									<td class="p-3 d-flex">
										<div class="form-check">
											<input name="savingsType" class="form-check-input"
												type="radio" value="savingsTypeFree" id="savingsTypeFree" />
											<label class="form-check-label" for="savingsTypeFree">
												???????????????(????????????)</label>
										</div>
										<div class="form-check">
											<input name="savingsType" class="form-check-input ms-2"
												type="radio" value="savingsTypeRegular"
												id="savingsTypeRegular" checked /> <label
												class="form-check-label ms-1" for="savingsTypeRegular">
												???????????????(????????????)</label>
										</div>
									</td>
								</tr>

								<tr>
									<td class="p-3 mt-1"
										style="width: 30%; background-color: #f8f8f8; color: black;">??????
										??????</td>
									<td class="p-3"><select class="form-select"
										id="exampleFormControlSelect2"
										aria-label="Default select example">
											<option selected>??????????????? ???????????????</option>
											<c:forEach var="i" begin="6" end="60">
												<option value="<c:out value="${i}" />"><c:out
														value="${i}" />??????
												</option>
											</c:forEach>
									</select></td>
								</tr>
								<tr>
									<td class="p-3"
										style="width: 30%; background-color: #f8f8f8; color: black;">??????
										?????? ????????????(4??????)</td>
									<td class="d-flex p-3">
										<div class="form-check m-0 p-0 ">
											<input name="accountpwd" class="form-input w-50"
												type="password" value="" id="accountpwd"
												style="background-color: #F2FCF5; text-align: right; border-color: #f8f8f8;" />
										</div>
									</td>
								</tr>
								<tr>
									<td class="p-3"
										style="width: 30%; background-color: #f8f8f8; color: black;">????????????
										?????????</td>
									<td class="d-flex p-3">
										<div class="form-check m-0 p-0">
											<input name="accountpwdAgain" class="form-input w-50"
												type="password" value="" id="accountpwdAgain"
												style="background-color: #F2FCF5; text-align: right; border-color: #f8f8f8;" />
											<span> </span>
										</div>
									</td>
								</tr>
								<tr>
									<td class="p-3"
										style="width: 30%; background-color: #f8f8f8; color: black;">SMS
										????????? ??????</td>
									<td class="p-3 d-flex">
										<div class="form-check">
											<input name="agreeSMS" class="form-check-input" type="radio"
												value="yes" id="agreeSMS" /> <label
												class="form-check-label" for="agreeSMS"> ?????? </label>
										</div>
										<div class="form-check">
											<input name="agreeSMS" class="form-check-input ms-2"
												type="radio" value="no" id="disagreeSMS" checked /> <label
												class="form-check-label ms-1" for="disagreeSMS"> ?????????
											</label>
										</div>
									</td>
								</tr>
							</table>
							<div class="mt-5 mb-5" style="text-align: center;">
								<input type="submit" class="btn btn-primary m-2" value="??????"
									style="padding-left: 100px; padding-right: 100px;"
									id="joinOpenBakingBtn"> 
									<input type="button"
									class="btn btn-secondary m-2" value="??????"
									style="padding-left: 100px; padding-right: 100px;"
									id="cancleBtn">
							</div>
						</div>
					</div>
				</div>
			</div>
			</form>
		</div>

	</div>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var hanaAccount = $(
									'input:checkbox[id="hanaACCOUNT"]').is(
									":checked");
							var otherAccount = $(
									'input:checkbox[id="otherACCOUNT"]').is(
									":checked");
							if (hanaAccount == true || otherAccount == true) {
								$.ajax({
											url : '${pageContext.request.contextPath}/assert/SelectMyAssert/${loginVO.id}',
											type : 'get',
											success : function(data) {

												console.log(data)
												if (otherAccount == true) {

												}

												$('#livingExpenceSpan').text(
														livingExpence + '??????');
												$('#expectedLivingExpenceSpan')
														.text(
																expectedLivingExpence
																		+ '??????');

												$('#homeTaxBtn')
														.click(
																function() {
																	$(
																			'input[name=livingExpence]')
																			.attr(
																					'value',
																					livingExpence);
																	$(
																			'input[name=expectedLivingExpence]')
																			.attr(
																					'value',
																					expectedLivingExpence);
																})

											},
											error : function() {
												alert('??????')

											}
										})

							}
						});
	</script>
</body>
</html>