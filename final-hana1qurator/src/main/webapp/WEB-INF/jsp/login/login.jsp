<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>하나원큐레이터 로그인</title>
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/css/util.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/css/main.css">
<style>
body{
	background-image: url(${pageContext.request.contextPath}/resources/img/hanaMenu.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

</style>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
	charset="utf-8"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
	if('${loginmsg}'){
		alert('${loginmsg}');
	}

	if('${registerMsg}'){
		alert('${registerMsg}');
	}

	//카카오 로그인
	Kakao.init('4aea1490dd8227fdc4a4ca1f97ea9da1'); //발급받은 키 중 javascript키를 사용해준다.
	
	function kakaoLogin(){
		window.Kakao.Auth.login({
			scope:'profile_nickname,account_email,birthday,talk_message',
			success: function(authObj){
				//console.log(authObj);
				window.Kakao.API.request({
					url: '/v2/user/me',
					success: res => {
						const email = res.kakao_account.email;
						const name = res.kakao_account.profile.nickname;
						const birth = res.kakao_account.birthday;
						
						console.log(email);
						console.log(name);
						console.log(birth);
						
						$('#kakaoemail').val(email);
						$('#kakaoname').val(name);
						$('#kakaobirth').val(birth);
						Kakao.Auth.setAccessToken(authObj.access_token);
						document.login_kakao.submit();
					}
				});
				
			}
		});
	}
	
	
	//카카오로그아웃  
	function kakaoLogout() {
		Kakao.init('4aea1490dd8227fdc4a4ca1f97ea9da1');
		Kakao.isInitialized();
		
		if (Kakao.Auth.getAccessToken()) {
			Kakao.API.request({
				url : '/v1/user/unlink',
				success : function(response) {
					swal("카카오 로그인 완료")
					console.log(response)
				},
				fail : function(error) {
					console.log(error)
				},
			})
			Kakao.Auth.setAccessToken(undefined)
		}

		swal("로그아웃이 완료되었습니다")
	}

</script>
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title"
					style="background-image: url(${pageContext.request.contextPath}/resources/img/hanaMenu.jpg);">
					<span class="login100-form-title-1"> LOGIN </span>
				</div>

				<form:form class="login100-form validate-form"
					action="${pageContext.request.contextPath }/login.do" method="post"
					modelAttribute="memberVO">
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Username is required">
						<span class="label-input100">아이디</span>
						<form:input class="input100" type="text" path="id"
							placeholder="아이디를 입력해주세요" />
						<form:errors path="id"></form:errors>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">패스워드</span>
						<form:input class="input100" type="password" path="password"
							placeholder="패스워드를 입력해주세요" />
						<form:errors path="password"></form:errors>
						<span class="focus-input100"></span>
					</div>

					<div class="flex-sb-m w-full p-b-30">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox"
								name="remember-me"> <label class="label-checkbox100"
								for="ckb1"> Remember me </label>
						</div>

						<div>
							<a href="/final-manager/" class="txt1" style="padding-right: 5px;"> 관리자입니까? </a>
							<a href="#" class="txt1"> 비밀번호 찾기 </a>
						</div>
					</div>

					<div class="container-login100-form-btn"
						style="padding: 10px; 10px;">
						<input type="submit" value="로그인"
							class="col-md-4 login100-form-btn" style="padding: 10px 10px;">
						<input type="submit" value="카카오 로그인"
							class="col-md-4 login100-form-btn-2">
					</div>

				</form:form>
			</div>
		</div>
	</div>


	<script
		src="${pageContext.request.contextPath}/resources/login/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/login/vendor/animsition/js/animsition.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/login/vendor/bootstrap/js/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/login/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/login/vendor/select2/select2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/login/vendor/daterangepicker/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/login/vendor/daterangepicker/daterangepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/login/vendor/countdowntime/countdowntime.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/login/js/main.js"></script>

</body>
</html>