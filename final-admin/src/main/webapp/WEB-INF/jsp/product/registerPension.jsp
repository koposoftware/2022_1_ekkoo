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
	<header class="app-header fixed-top">
		<div class="app-header-inner">
			<div class="container-fluid py-2">
				<div class="app-header-content">
					<div class="row justify-content-between align-items-center">

						<div class="col-auto">
							<a id="sidepanel-toggler"
								class="sidepanel-toggler d-inline-block d-xl-none" href="#">
								<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
									viewBox="0 0 30 30" role="img">
									<title>Menu</title><path stroke="currentColor"
										stroke-linecap="round" stroke-miterlimit="10" stroke-width="2"
										d="M4 7h22M4 15h22M4 23h22"></path></svg>
							</a>
						</div>
						<!--//col-->
						<div class="search-mobile-trigger d-sm-none col">
							<i class="search-mobile-trigger-icon fas fa-search"></i>
						</div>
						<!--//col-->
						<div class="app-search-box col">
							<form class="app-search-form">
								<input type="text" placeholder="Search..." name="search"
									class="form-control search-input">
								<button type="submit" class="btn search-btn btn-primary"
									value="Search">
									<i class="fas fa-search"></i>
								</button>
							</form>
						</div>
						<!--//app-search-box-->

						<div class="app-utilities col-auto">
							<div class="app-utility-item">
								<a href="settings.html" title="Settings"> <!--//Bootstrap Icons: https://icons.getbootstrap.com/ -->
									<svg width="1em" height="1em" viewBox="0 0 16 16"
										class="bi bi-gear icon" fill="currentColor"
										xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd"
											d="M8.837 1.626c-.246-.835-1.428-.835-1.674 0l-.094.319A1.873 1.873 0 0 1 4.377 3.06l-.292-.16c-.764-.415-1.6.42-1.184 1.185l.159.292a1.873 1.873 0 0 1-1.115 2.692l-.319.094c-.835.246-.835 1.428 0 1.674l.319.094a1.873 1.873 0 0 1 1.115 2.693l-.16.291c-.415.764.42 1.6 1.185 1.184l.292-.159a1.873 1.873 0 0 1 2.692 1.116l.094.318c.246.835 1.428.835 1.674 0l.094-.319a1.873 1.873 0 0 1 2.693-1.115l.291.16c.764.415 1.6-.42 1.184-1.185l-.159-.291a1.873 1.873 0 0 1 1.116-2.693l.318-.094c.835-.246.835-1.428 0-1.674l-.319-.094a1.873 1.873 0 0 1-1.115-2.692l.16-.292c.415-.764-.42-1.6-1.185-1.184l-.291.159A1.873 1.873 0 0 1 8.93 1.945l-.094-.319zm-2.633-.283c.527-1.79 3.065-1.79 3.592 0l.094.319a.873.873 0 0 0 1.255.52l.292-.16c1.64-.892 3.434.901 2.54 2.541l-.159.292a.873.873 0 0 0 .52 1.255l.319.094c1.79.527 1.79 3.065 0 3.592l-.319.094a.873.873 0 0 0-.52 1.255l.16.292c.893 1.64-.902 3.434-2.541 2.54l-.292-.159a.873.873 0 0 0-1.255.52l-.094.319c-.527 1.79-3.065 1.79-3.592 0l-.094-.319a.873.873 0 0 0-1.255-.52l-.292.16c-1.64.893-3.433-.902-2.54-2.541l.159-.292a.873.873 0 0 0-.52-1.255l-.319-.094c-1.79-.527-1.79-3.065 0-3.592l.319-.094a.873.873 0 0 0 .52-1.255l-.16-.292c-.892-1.64.902-3.433 2.541-2.54l.292.159a.873.873 0 0 0 1.255-.52l.094-.319z" />
  <path fill-rule="evenodd"
											d="M8 5.754a2.246 2.246 0 1 0 0 4.492 2.246 2.246 0 0 0 0-4.492zM4.754 8a3.246 3.246 0 1 1 6.492 0 3.246 3.246 0 0 1-6.492 0z" />
</svg>
								</a>
							</div>
							<!--//app-utility-item-->

							<div class="app-utility-item app-user-dropdown dropdown">
								<a class="dropdown-toggle" id="user-dropdown-toggle"
									data-bs-toggle="dropdown" href="#" role="button"
									aria-expanded="false"><img
									src="${pageContext.request.contextPath }/resources/images/hanaLogo.png"
									alt="user profile"></a>
								<ul class="dropdown-menu" aria-labelledby="user-dropdown-toggle">
									<li><a class="dropdown-item" href="account.html">Account</a></li>
									<li><a class="dropdown-item" href="settings.html">Settings</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="login.html">Log Out</a></li>
								</ul>
							</div>
							<!--//app-user-dropdown-->
						</div>
						<!--//app-utilities-->
					</div>
					<!--//row-->
				</div>
				<!--//app-header-content-->
			</div>
			<!--//container-fluid-->
		</div>
		<!--//app-header-inner-->
		<div id="app-sidepanel" class="app-sidepanel">
			<div id="sidepanel-drop" class="sidepanel-drop"></div>
			<div class="sidepanel-inner d-flex flex-column">
				<a href="#" id="sidepanel-close" class="sidepanel-close d-xl-none">&times;</a>
				<div class="app-branding">
					<a class="app-logo" href="index.jsp"><img
						class="logo-icon me-2"
						src="${pageContext.request.contextPath }/resources/images/hanaLogo.png"
						alt="logo"><span class="logo-text">?????????????????????</span></a>
				</div>
				<!--//app-branding-->

				<nav id="app-nav-main" class="app-nav app-nav-main flex-grow-1">
					<ul class="app-menu list-unstyled accordion" id="menu-accordion">
						<li class="nav-item">
							<!--//Bootstrap Icons: https://icons.getbootstrap.com/ --> <a
							class="nav-link" href="${pageContext.request.contextPath }/">
								<span class="nav-icon"> <svg width="1em" height="1em"
										viewBox="0 0 16 16" class="bi bi-house-door"
										fill="currentColor" xmlns="http://www.w3.org/2000/svg">
		  <path fill-rule="evenodd"
											d="M7.646 1.146a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 .146.354v7a.5.5 0 0 1-.5.5H9.5a.5.5 0 0 1-.5-.5v-4H7v4a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .146-.354l6-6zM2.5 7.707V14H6v-4a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5v4h3.5V7.707L8 2.207l-5.5 5.5z" />
		  <path fill-rule="evenodd"
											d="M13 2.5V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z" />
		</svg>
							</span> <span class="nav-link-text">?????? ???</span>
						</a> <!--//nav-link-->
						</li>
						<!--//nav-item-->
						<li class="nav-item">
							<!--//Bootstrap Icons: https://icons.getbootstrap.com/ --> <a
							class="nav-link"
							href="${pageContext.request.contextPath }/member/main"> <span
								class="nav-icon"> <svg width="1em" height="1em"
										viewBox="0 0 16 16" class="bi bi-folder" fill="currentColor"
										xmlns="http://www.w3.org/2000/svg">
  <path
											d="M9.828 4a3 3 0 0 1-2.12-.879l-.83-.828A1 1 0 0 0 6.173 2H2.5a1 1 0 0 0-1 .981L1.546 4h-1L.5 3a2 2 0 0 1 2-2h3.672a2 2 0 0 1 1.414.586l.828.828A2 2 0 0 0 9.828 3v1z" />
  <path fill-rule="evenodd"
											d="M13.81 4H2.19a1 1 0 0 0-.996 1.09l.637 7a1 1 0 0 0 .995.91h10.348a1 1 0 0 0 .995-.91l.637-7A1 1 0 0 0 13.81 4zM2.19 3A2 2 0 0 0 .198 5.181l.637 7A2 2 0 0 0 2.826 14h10.348a2 2 0 0 0 1.991-1.819l.637-7A2 2 0 0 0 13.81 3H2.19z" />
</svg>
							</span> <span class="nav-link-text">?????? ??????</span>
						</a> <!--//nav-link-->
						</li>
						<!--//nav-item-->

						<li class="nav-item has-submenu">
							<!--//Bootstrap Icons: https://icons.getbootstrap.com/ --> <a
							class="nav-link submenu-toggle active" href="#"
							data-bs-toggle="collapse" data-bs-target="#submenu-1"
							aria-expanded="false" aria-controls="submenu-1"> <span
								class="nav-icon"> <!--//Bootstrap Icons: https://icons.getbootstrap.com/ -->
									<svg width="1em" height="1em" viewBox="0 0 16 16"
										class="bi bi-files" fill="currentColor"
										xmlns="http://www.w3.org/2000/svg">
	  <path fill-rule="evenodd"
											d="M4 2h7a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2zm0 1a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h7a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H4z" />
	  <path
											d="M6 0h7a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2v-1a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H6a1 1 0 0 0-1 1H4a2 2 0 0 1 2-2z" />
	</svg>
							</span> <span class="nav-link-text">????????????</span> <span
								class="submenu-arrow"> <svg width="1em" height="1em"
										viewBox="0 0 16 16" class="bi bi-chevron-down"
										fill="currentColor" xmlns="http://www.w3.org/2000/svg">
	  <path fill-rule="evenodd"
											d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z" />
	</svg>
							</span>
							<!--//submenu-arrow-->
						</a>
						<!--//nav-link-->
							<div id="submenu-1" class="collapse submenu submenu-1"
								data-bs-parent="#menu-accordion">
								<ul class="submenu-list list-unstyled">
									<li class="submenu-item"><a class="submenu-link"
										href="notifications.html">????????????</a></li>
									<li class="submenu-item"><a class="submenu-link active"
										href="${pageContext.request.contextPath }/product/main">????????????</a></li>
								</ul>
							</div>
						</li>
						<!--//nav-item-->


						<!--//nav-item-->
						<li class="nav-item">
							<!--//Bootstrap Icons: https://icons.getbootstrap.com/ --> <a
							class="nav-link" href="/final-hana1qurator"> <span
								class="nav-icon"> <svg width="1em" height="1em"
										viewBox="0 0 16 16" class="bi bi-question-circle"
										fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd"
											d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
  <path
											d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z" />
</svg>
							</span> <span class="nav-link-text">???????????????????????? ??????</span>
						</a> <!--//nav-link-->
						</li>
						<!--//nav-item-->
					</ul>
					<!--//app-menu-->
				</nav>
				<!--//app-nav-->
				<div class="app-sidepanel-footer">
					<nav class="app-nav app-nav-footer">
						<ul class="app-menu footer-menu list-unstyled">
							<li class="nav-item">
								<!--//Bootstrap Icons: https://icons.getbootstrap.com/ --> <a
								class="nav-link" href="settings.html"> <span
									class="nav-icon"> <svg width="1em" height="1em"
											viewBox="0 0 16 16" class="bi bi-gear" fill="currentColor"
											xmlns="http://www.w3.org/2000/svg">
	  <path fill-rule="evenodd"
												d="M8.837 1.626c-.246-.835-1.428-.835-1.674 0l-.094.319A1.873 1.873 0 0 1 4.377 3.06l-.292-.16c-.764-.415-1.6.42-1.184 1.185l.159.292a1.873 1.873 0 0 1-1.115 2.692l-.319.094c-.835.246-.835 1.428 0 1.674l.319.094a1.873 1.873 0 0 1 1.115 2.693l-.16.291c-.415.764.42 1.6 1.185 1.184l.292-.159a1.873 1.873 0 0 1 2.692 1.116l.094.318c.246.835 1.428.835 1.674 0l.094-.319a1.873 1.873 0 0 1 2.693-1.115l.291.16c.764.415 1.6-.42 1.184-1.185l-.159-.291a1.873 1.873 0 0 1 1.116-2.693l.318-.094c.835-.246.835-1.428 0-1.674l-.319-.094a1.873 1.873 0 0 1-1.115-2.692l.16-.292c.415-.764-.42-1.6-1.185-1.184l-.291.159A1.873 1.873 0 0 1 8.93 1.945l-.094-.319zm-2.633-.283c.527-1.79 3.065-1.79 3.592 0l.094.319a.873.873 0 0 0 1.255.52l.292-.16c1.64-.892 3.434.901 2.54 2.541l-.159.292a.873.873 0 0 0 .52 1.255l.319.094c1.79.527 1.79 3.065 0 3.592l-.319.094a.873.873 0 0 0-.52 1.255l.16.292c.893 1.64-.902 3.434-2.541 2.54l-.292-.159a.873.873 0 0 0-1.255.52l-.094.319c-.527 1.79-3.065 1.79-3.592 0l-.094-.319a.873.873 0 0 0-1.255-.52l-.292.16c-1.64.893-3.433-.902-2.54-2.541l.159-.292a.873.873 0 0 0-.52-1.255l-.319-.094c-1.79-.527-1.79-3.065 0-3.592l.319-.094a.873.873 0 0 0 .52-1.255l-.16-.292c-.892-1.64.902-3.433 2.541-2.54l.292.159a.873.873 0 0 0 1.255-.52l.094-.319z" />
	  <path fill-rule="evenodd"
												d="M8 5.754a2.246 2.246 0 1 0 0 4.492 2.246 2.246 0 0 0 0-4.492zM4.754 8a3.246 3.246 0 1 1 6.492 0 3.246 3.246 0 0 1-6.492 0z" />
	</svg>
								</span> <span class="nav-link-text">Settings</span>
							</a> <!--//nav-link-->
							</li>
							<!--//nav-item-->
							<li class="nav-item">
								<!--//Bootstrap Icons: https://icons.getbootstrap.com/ --> <a
								class="nav-link"
								href="https://themes.3rdwavemedia.com/bootstrap-templates/admin-dashboard/portal-free-bootstrap-admin-dashboard-template-for-developers/">
									<span class="nav-icon"> <svg width="1em" height="1em"
											viewBox="0 0 16 16" class="bi bi-download"
											fill="currentColor" xmlns="http://www.w3.org/2000/svg">
	  <path fill-rule="evenodd"
												d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5z" />
	  <path fill-rule="evenodd"
												d="M7.646 11.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V1.5a.5.5 0 0 0-1 0v8.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3z" />
	</svg>
								</span> <span class="nav-link-text">Download</span>
							</a> <!--//nav-link-->
							</li>
							<!--//nav-item-->
							<li class="nav-item">
								<!--//Bootstrap Icons: https://icons.getbootstrap.com/ --> <a
								class="nav-link"
								href="https://themes.3rdwavemedia.com/bootstrap-templates/admin-dashboard/portal-free-bootstrap-admin-dashboard-template-for-developers/">
									<span class="nav-icon"> <svg width="1em" height="1em"
											viewBox="0 0 16 16" class="bi bi-file-person"
											fill="currentColor" xmlns="http://www.w3.org/2000/svg">
	  <path fill-rule="evenodd"
												d="M12 1H4a1 1 0 0 0-1 1v10.755S4 11 8 11s5 1.755 5 1.755V2a1 1 0 0 0-1-1zM4 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H4z" />
	  <path fill-rule="evenodd" d="M8 10a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
	</svg>
								</span> <span class="nav-link-text">License</span>
							</a> <!--//nav-link-->
							</li>
							<!--//nav-item-->
						</ul>
						<!--//footer-menu-->
					</nav>
				</div>
				<!--//app-sidepanel-footer-->

			</div>
			<!--//sidepanel-inner-->
		</div>
		<!--//app-sidepanel-->
	</header>
	<!--//app-header-->

	<div class="app-wrapper">
		<div class="app-content pt-3 p-md-3 p-lg-4">
			<form
				action="${pageContext.request.contextPath }/product/subscription"
				method="post">
				<div class="container-xxl">
					<!-- intro  -->
					<div class="row g-4">
						<div class="col-12 col-lg-12 app-card bg-white">
							<h4 class="mb-4 mt-5 text-primary">?????? ??????</h4>
							<div class="table-responsive  mb-5 pb-5">
								<table class="table table-borderd"
									style="border-left: 3px solid; border-left-color: #08a294;">
									<tr>
										<td class="p-3"
											style="width: 20%; background-color: #f2fcf5; color: black;"><h6>??????
												??????</h6></td>
										<td class="p-3" style="width: 20%;">
											<h6>????????????</h6>

										</td>
										<td class="p-3" 
											style="width: 30%; background-color: #f2fcf5; color: black; border-left: 3px solid; border-left-color: #08a294;"><h6>??????
												??????</h6></td>
										<td class="d-flex p-3">
											<div class="form-check">
												<input class="form-check-input" type="radio"
													name="pensionType" value="01" checked /> <label
													class="form-check-label" for="pensionType"><h6>??????????????????</h6></label>
											</div>
											<div class="form-check">
												<input class="form-check-input ms-2" name="pensionType"
													type="radio" value="02" /> <label
													class="form-check-label ms-1" for="otherAccount">
													<h6>??????????????????</h6>
												</label>
											</div>
										</td>
									</tr>
								</table>
							</div>
							<!-- //table0  -->
							<h4 class="mb-4 text-primary">?????? ??????</h4>
							<!-- table1  -->
							<div class="table-responsive">
								<table class="table table-bordered border-medium"
									style="border-top: 3px solid; border-top-color: #08a294;">
									<tr>
										<td class="tableName p-3"
											style="width: 30%; background-color: #ededed; color: black;"><h6>?????????</h6></td>
										<td class="p-3">
											<!-- <span class="mt-1">?????? ?????? ??????</span> -->
											<div class="form-check m-0 p-0 ">
												<input name="pensionName" class="form-input" type="text"
													value="" id="productName"
													style="background-color: #F2FCF5; border-color: #F2FCF5;" />
											</div>
										</td>
									</tr>
									<tr>
										<td class="tableName p-3"
											style="width: 30%; background-color: #ededed; color: black;"><h6>??????
												?????? ??????</h6></td>
										<td class="p-3"><textarea class="w-100"
												name="repDesc" rows="5" cols="30"></textarea></td> 
									</tr>

									<tr>
										<td class="tableName p-3 mt-1"
											style="width: 30%; background-color: #ededed; color: black;"><h6>?????????</h6></td>
										<td class="p-3">
											<div class="form-check m-0 p-0 ">
												<input name="insuranceCompany" class="form-input"
													type="text" value="" id="insuranceCompany"
													style="background-color: #F2FCF5; border-color: #F2FCF5;" />
											</div>
										</td>
									</tr>
									<tr>
										<td class="p-3"
											style="width: 30%; background-color: #ededed; color: black;"><h6>????????????</h6></td>
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
												?????? ??????</h6></td>
										<td class="p-3">
											<!-- <span class="mt-1">?????? ?????? ??????</span> -->
											<div class="d-flex">
												<span class="m-1">?????? ???</span><input type="text"
													class="form-control" name="productName" value=""
													style="width: 10%; background-color: #F2FCF5;" required><span
													class="m-1">??? ~ ??????</span><input type="text"
													class="form-control" name="productName"
													style="width: 10%; background-color: #F2FCF5;" value=""
													required><span class="m-1">???</span>
											</div>
										</td>
									</tr>
									<tr>
										<td class="tableName p-3"
											style="width: 30%; background-color: #ededed; color: black;"><h6>??????
												?????? ??????</h6></td>
										<td class="p-3">
											<div class="d-flex">
												<span class="m-1">?????? ???</span><input type="text"
													class="form-control" name="productName" value=""
													style="width: 10%; background-color: #F2FCF5;" required><span
													class="m-1">??? ~ ??????</span><input type="text"
													class="form-control" name="productName"
													style="width: 10%; background-color: #F2FCF5;" value=""
													required><span class="m-1">???</span>
											</div>
										</td>
									</tr>
								</table>
							</div>
							<div class="mt-5 mb-5" style="text-align: center;">
								<input type="submit" class="btn btn-primary m-2" value="??????"
									style="padding-left: 100px; padding-right: 100px;"
									id="joinOpenBakingBtn"> <input type="button"
									class="btn btn-secondary m-2" value="??????"
									style="padding-left: 100px; padding-right: 100px;"
									id="cancleBtn">
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

	<!-- Javascript -->
	<script
		src="${pageContext.request.contextPath}/resources/plugins/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!-- Page Specific JS -->
	<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
</body>
</html>
