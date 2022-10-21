<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Portal - Bootstrap 5 Admin Dashboard Template For
	Developers</title>

<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="description"
	content="Portal - Bootstrap 5 Admin Dashboard Template For Developers">
<meta name="author" content="Xiaoying Riley at 3rd Wave Media">
<link rel="shortcut icon" href="favicon.ico">

<!-- FontAwesome JS-->
<script defer src="assets/plugins/fontawesome/js/all.min.js"></script>

<!-- App CSS -->
<link id="theme-style" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/portal.css">
<style type="text/css">
.tableName {
	background-color: #F2FCF5;
}
</style>
</head>
<body class="app">
	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />

	<div class="app-wrapper">
		<div class="app-content pt-3 p-md-3 p-lg-4">
			<form
				action="${pageContext.request.contextPath }/product/subscription"
				method="post">
				<div class="container-xxl">
					<!-- intro  -->
					<div class="row g-4">
						<div class="col-12 col-lg-12">
							<h4 class="mb-4 mt-5 text-primary">상품 유형</h4>
							<div class="table-responsive mb-5 pb-5">
								<table class="table table-borderd"
									style="border-left: 3px solid; border-left-color: #08a294;">
									<tr>
										<td class="p-3"
											style="width: 25%; background-color:#f2fcf5; color: black;"><h6>상품 종류</h6></td>
										<td class="p-3" style="width: 25%;">
											<div style="color: black;">
												연금보험
											</div>
										</td>
										<td class="p-3"
											style="width: 25%; background-color: #f2fcf5; color: black; border-left: 3px solid; border-left-color: #08a294;"><h6>상품 유형</h6></td>
										<td class="d-flex p-3">
											<div class="form-check">
												<input class="form-check-input" type="radio"
													name="pensionType" value="01" checked/> <label
													class="form-check-label" for="pensionType">일반저축은행</label>
											</div>
											<div class="form-check">
												<input class="form-check-input ms-2"
													name="pensionType" type="radio" value="02"/> <label
													class="form-check-label ms-1" for="otherAccount">
													연금저축보험</label>
											</div>
										</td>
									</tr>
								</table>
							</div>
							<!-- //table0  -->
							<h4 class="mb-4 text-primary">상품 정보</h4>
							<!-- table1  -->
							<div class="table-responsive">
								<table class="table table-bordered border-medium"
									style="border-top: 3px solid; border-top-color: #08a294;">
									<tr>
										<td class="tableName p-3"
											style="width: 30%; background-color: #ededed; color: black;"><h6>상품명</h6></td>
										<td class="p-3">
											<!-- <span class="mt-1">상품 대표 특징</span> -->
											<div class="form-check m-0 p-0 ">
												<input name="pensionName" class="form-control" type="text"
													value="" id="productName"
													style="background-color: #F2FCF5; border-color: #F2FCF5;" />
											</div>
										</td>
									</tr>
									<tr>
										<td class="tableName p-3"
											style="width: 30%; background-color: #ededed; color: black;"><h6>상품
											대표 특징</h6></td>
										<td class="p-3"><textarea class="form-control" name="repDesc" rows="50"
												cols="30"></textarea></td>
									</tr>

									<tr>
										<td class="tableName p-3 mt-1"
											style="width: 30%; background-color: #ededed; color: black;"><h6>보험사</h6></td>
										<td class="p-3">
											<div class="form-check m-0 p-0 ">
												<input name="insuranceCompany" class="form-control"
													type="text" value="" id="insuranceCompany"
													style="background-color: #F2FCF5; border-color: #F2FCF5;" />
											</div>
										</td>
									</tr>
									<tr>
										<td class="p-3"
											style="width: 30%; background-color: #ededed; color: black;"><h6>공시이율</h6></td>
										<td class="d-flex p-3">
											<div class="form-check m-0 p-0 ">
												<input name="interestRate" class="form-input w-50"
													type="text" value="" id="interestRate"
													style="background-color: #F2FCF5; border-color: #F2FCF5;" /><span
													class="m-1">%</span>
											</div>
										</td>
									</tr>
								</table>
							</div>

							<!-- table3 -->
							<div class="table-responsive mt-5">
								<table class="table table-bordered border-medium"
									style="border-top: 3px solid; border-top-color: #08a294;">
									<tr>
										<td class="tableName p-3"
											style="width: 30%; background-color: #ededed; color: black;"><h6>
											가입 연령</h6></td>
										<td class="p-3">
											<!-- <span class="mt-1">상품 대표 특징</span> -->
											<div class="d-flex">
												<span class="m-1">최소 만</span><input type="text"
													class="form-control" name="productName" value=""
													style="width: 10%" required><span class="m-1">세 ~
													최대</span><input type="text" class="form-control"
													name="productName" style="width: 10%" value="" required><span
													class="m-1">세</span>
											</div>
										</td>
									</tr>
									<tr>
										<td class="tableName p-3"
											style="width: 30%; background-color: #ededed; color: black;"><h6>연금
											개시 연령</h6></td>
										<td class="p-3">
											<div class="d-flex"> 
												<span class="m-1">최소 만</span><input type="text"
													class="form-control" name="productName" value=""
													style="width: 10%" required><span class="m-1">세 ~
													최대</span><input type="text" class="form-control"
													name="productName" style="width: 10%" value="" required><span
													class="m-1">세</span>
											</div>
										</td>
									</tr>
								</table>
							</div>
							<div class="mt-5 mb-5" style="text-align: center;">
								<input type="submit" class="btn btn-primary m-2" value="제출"
									style="padding-left: 100px; padding-right: 100px;"
									id="joinOpenBakingBtn"> <input type="button"
									class="btn btn-secondary m-2" value="취소"
									style="padding-left: 100px; padding-right: 100px;"
									id="cancleBtn">
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

	<!-- 	
	<div class="app-wrapper">
		<div class="app-content pt-3 p-md-3 p-lg-4">
			<div class="container-xl">
				<h1 class="app-page-title text-center">상품 등록</h1>
				<hr class="mb-4"> 
				<div class="row g-4 settings-section">
					<div class="col-12 col-md-12">
						<div class="app-card app-card-settings shadow-sm p-4">
							<div class="app-card-body">
								<div class="mb-2 d-flex">
									<strong class="m-2">상품 유형: </strong> 
									<select class="form-control" style="width: 80%"> 
									<option value="01">일반연금보험</option>
									<option value="02">연금저축보험</option>
									</select>
									
								</div>
							</div>
							//app-card-body
						</div>
						//app-card
					</div>
				</div>
				//row
				<hr class="mb-4">
				<div class="row g-4 settings-section">
					<div class="col-12 col-md-4">
						<h3 class="section-title">01. 기본 정보</h3>
						<div class="section-intro">
							Settings section intro goes here. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. <a href="help.html">Learn more</a>
						</div>
					</div>
					<div class="col-12 col-md-8">
						<div class="app-card app-card-settings shadow-sm p-4">

							<div class="app-card-body">
								<form class="settings-form">
									<div class="mb-3">
										<label for="setting-input-1" class="form-label">1. 상품명</label>
										<input type="text" class="form-control" name="productName"
											value="" required>
									</div>
									<div class="mb-3">
										<label for="setting-input-2" class="form-label">2. 상품
											대표 특징</label> <input type="text" class="form-control" name="repDesc"
											value="" required>
									</div>
									<div class="mb-3">
										<label for="setting-input-3" class="form-label">3. 보험사</label>
										<input type="text" class="form-control" name="" value="">
									</div>
									<div class="mb-3">
										<label for="setting-input-4" class="form-label">4. 공시이율</label> 
										<input type="text" class="form-control" name="" value="">
									</div>
								</form>
							</div>
							//app-card-body

						</div>
						//app-card
					</div>
				</div>
				//row
				<hr class="mb-4">
				<div class="row g-4 settings-section">
					<div class="col-12 col-md-4">
						<h3 class="section-title">02. 상품 정보</h3>
						<div class="section-intro">
							Settings section intro goes here. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. <a href="help.html">Learn more</a>
						</div>
					</div>
					<div class="col-12 col-md-8">
						<div class="app-card app-card-settings shadow-sm p-4">

							<div class="app-card-body">
								<div class="mb-3">
										<label for="setting-input-1" class="form-label">1. 가입 연령</label> 
										<div class="d-flex">
											<span class="m-1">최소 만</span><input type="text" class="form-control" name="productName" value="" style="width: 10%"
											required><span class="m-1">세~ 최대</span><input type="text" class="form-control" name="productName" style="width: 10%"
											value="" required><span class="m-1">세</span>
										</div>
								</div>
								<div class="mb-3">
										<label for="setting-input-1" class="form-label">2. 연금 개시 연령</label> 
										<div class="d-flex">
											<span class="m-1">최소 만</span><input type="text" class="form-control" name="productName" value="" style="width: 10%"
											required><span class="m-1">세~ 최대</span><input type="text" class="form-control" name="productName" style="width: 10%"
											value="" required><span class="m-1">세</span>
										</div>
								</div>
								<button type="submit" class="btn app-btn-primary">Save
									Changes</button>
							</div>
							//app-card-body

						</div>
						//app-card
					</div>
				</div>
				//row
				<hr class="my-4">
				<div class="row g-4 settings-section">
					<div class="col-12 col-md-4">
						<h3 class="section-title">02. 금리</h3>
						<div class="section-intro">
							Settings section intro goes here. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. <a href="help.html">Learn more</a>
						</div>
					</div>
					<div class="col-12 col-md-8">
						<div class="app-card app-card-settings shadow-sm p-4">

							<div class="app-card-body">
								<div class="mb-2">
									<strong>Current Plan:</strong> Pro
								</div>
								<div class="mb-2">
									<strong>Status:</strong> <span class="badge bg-success">Active</span>
								</div>
								<div class="mb-2">
									<strong>Expires:</strong> 2030-09-24
								</div>
								<div class="mb-4">
									<strong>Invoices:</strong> <a href="#">view</a>
								</div>
								<div class="row justify-content-between">
									<div class="col-auto">
										<a class="btn app-btn-primary" href="#">Upgrade Plan</a>
									</div>
									<div class="col-auto">
										<a class="btn app-btn-secondary" href="#">Cancel Plan</a>
									</div>
								</div>

							</div>
							//app-card-body

						</div>
						//app-card
					</div>
				</div>
				//row
				<hr class="my-4">
				<div class="row g-4 settings-section">
					<div class="col-12 col-md-4">
						<h3 class="section-title">Data &amp; Privacy</h3>
						<div class="section-intro">Settings section intro goes here.
							Morbi vehicula, est eget fermentum ornare.</div>
					</div>
					<div class="col-12 col-md-8">
						<div class="app-card app-card-settings shadow-sm p-4">
							<div class="app-card-body">
								<form class="settings-form">
									<div class="form-check mb-3">
										<input class="form-check-input" type="checkbox" value=""
											id="settings-checkbox-1" checked> <label
											class="form-check-label" for="settings-checkbox-1">
											Keep user app activity history </label>
									</div>
									//form-check
									<div class="form-check mb-3">
										<input class="form-check-input" type="checkbox" value=""
											id="settings-checkbox-2" checked> <label
											class="form-check-label" for="settings-checkbox-2">
											Keep user app preferences </label>
									</div>
									<div class="form-check mb-3">
										<input class="form-check-input" type="checkbox" value=""
											id="settings-checkbox-3"> <label
											class="form-check-label" for="settings-checkbox-3">
											Keep user app search history </label>
									</div>
									<div class="form-check mb-3">
										<input class="form-check-input" type="checkbox" value=""
											id="settings-checkbox-4"> <label
											class="form-check-label" for="settings-checkbox-4">
											Lorem ipsum dolor sit amet </label>
									</div>
									<div class="form-check mb-3">
										<input class="form-check-input" type="checkbox" value=""
											id="settings-checkbox-5"> <label
											class="form-check-label" for="settings-checkbox-5">
											Aenean quis pharetra metus </label>
									</div>
									<div class="mt-3">
										<button type="submit" class="btn app-btn-primary">Save
											Changes</button>
									</div>
								</form>
							</div>
							//app-card-body
						</div>
						//app-card
					</div>
				</div>
				//row
				<hr class="my-4">
				<div class="row g-4 settings-section">
					<div class="col-12 col-md-4">
						<h3 class="section-title">Notifications</h3>
						<div class="section-intro">Settings section intro goes here.
							Duis velit massa, faucibus non hendrerit eget.</div>
					</div>
					<div class="col-12 col-md-8">
						<div class="app-card app-card-settings shadow-sm p-4">
							<div class="app-card-body">
								<form class="settings-form">
									<div class="form-check form-switch mb-3">
										<input class="form-check-input" type="checkbox"
											id="settings-switch-1" checked> <label
											class="form-check-label" for="settings-switch-1">Project
											notifications</label>
									</div>
									<div class="form-check form-switch mb-3">
										<input class="form-check-input" type="checkbox"
											id="settings-switch-2"> <label
											class="form-check-label" for="settings-switch-2">Web
											browser push notifications</label>
									</div>
									<div class="form-check form-switch mb-3">
										<input class="form-check-input" type="checkbox"
											id="settings-switch-3" checked> <label
											class="form-check-label" for="settings-switch-3">Mobile
											push notifications</label>
									</div>
									<div class="form-check form-switch mb-3">
										<input class="form-check-input" type="checkbox"
											id="settings-switch-4"> <label
											class="form-check-label" for="settings-switch-4">Lorem
											ipsum notifications</label>
									</div>
									<div class="form-check form-switch mb-3">
										<input class="form-check-input" type="checkbox"
											id="settings-switch-5"> <label
											class="form-check-label" for="settings-switch-5">Lorem
											ipsum notifications</label>
									</div>
									<div class="mt-3">
										<button type="submit" class="btn app-btn-primary">Save
											Changes</button>
									</div>
								</form>
							</div>
							//app-card-body
						</div>
						//app-card
					</div>
				</div>
				//row
				<hr class="my-4">
			</div>
			//container-fluid
		</div>
		//app-content

		<footer class="app-footer">
			<div class="container text-center py-3">
				/* This template is free as long as you keep the footer attribution link. If you'd like to use the template without the attribution link, you can buy the commercial license via our website: themes.3rdwavemedia.com Thank you for your support. :) */
				<small class="copyright">Designed with <span class="sr-only">love</span><i
					class="fas fa-heart" style="color: #fb866a;"></i> by <a
					class="app-link" href="http://themes.3rdwavemedia.com"
					target="_blank">Xiaoying Riley</a> for developers
				</small>

			</div>
		</footer>
		//app-footer

	</div>
	//app-wrapper

 -->

	<!-- Javascript -->
	<script
		src="${pageContext.request.contextPath}/resources/plugins/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!-- Page Specific JS -->
	<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
</body>
</html>
