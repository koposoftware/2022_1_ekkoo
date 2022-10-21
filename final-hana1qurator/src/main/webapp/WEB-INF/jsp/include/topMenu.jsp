<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'
	rel='stylesheet'>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/icons.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/loadingoverlay.min.js"></script>

<style type="text/css">
*{
	font-family: 'Noto Sans KR', sans-serif !important;
}

a:hover {
	color: green;
}
</style>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">

Kakao.init('4aea1490dd8227fdc4a4ca1f97ea9da1'); //발급받은 키 중 javascript키를 사용해준다.

//카카오로그아웃

  function unlinkApp() {
    Kakao.API.request({
      url: '/v1/user/unlink',
      success: function(response) {
    	 location.href="${pageContext.request.contextPath}/logout.do"
      },
      fail: function(error) {
    	  location.href="${pageContext.request.contextPath}/logout.do"
    	  alert('fail: ' + JSON.stringify(err))
      },
    })
  }
</script>
<!-- Navbar Start -->
<nav 
	class="navbar navbar-fixed-top navbar-expand-lg bg-white navbar-light sticky-top p-0"  style="border-bottom: 1px solid #DEE2E6;">  
	<a href="/final-hana1qurator"
		class="navbar-brand d-flex align-items-center border-end px-4 px-lg-5">
		<img alt="하나로고"
		src="${ pageContext.request.contextPath }/resources/img/hanaTopLogo.png">
		<h2 class="m-0"> </h2>
	</a>
	<button type="button" class="navbar-toggler me-4"
		data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarCollapse">
		<div class="navbar-nav ms-auto p-4 p-lg-0">
			<a href="/final-hana1qurator" class="nav-item nav-link">메인페이지</a>
			<a href="${ pageContext.request.contextPath }/consult/consultMain" class="nav-item nav-link">재무설계</a> 
			<a href="${ pageContext.request.contextPath }/assert/myAssertMain" class="nav-item nav-link">My자산</a> 
			<a href="${pageContext.request.contextPath }/product" class="nav-item nav-link">금융상품</a>
			<a href="contact.html" class="nav-item nav-link">지점안내</a>
		</div>
		<c:choose>
		<c:when test="${ empty loginVO}">
		<div class="navbar-nav" style="padding-right: 10px;">
			<a href="${ pageContext.request.contextPath}/login.do" class="btn-sm-square " 
				style="background-color: #ff328b; color: white;">로그인</a>
		</div>
		<div class="navbar-nav" style="margin-right: 60px;">
			<a href="${ pageContext.request.contextPath}/register.do" class="btn-sm-square"
				style="background-color: #018c8d; color: white;">회원가입</a>
		</div>
		</c:when>
		<c:otherwise>
		<div style="padding-right: 10px;">
			<a href="javascript:unlinkApp();" class="btn-square"
				style="background-color: #ff328b; color: white; padding: 10px 20px;">로그아웃</a>
		</div>
		<div style="margin-right: 30px;">
			<a href="${ pageContext.request.contextPath}/login.do" class="btn-pill"
				style="background-color: #018c8d; color: white; padding: 10px 20px;">마이페이지</a>
		</div>
		</c:otherwise>
		</c:choose>
	</div>
</nav>
<!-- Navbar End -->





